"use strict";
/**
 * Author: Gery Casiez
 * Details: http://cristal.univ-lille.fr/~casiez/1euro/
 *
 * Copyright 2019 Inria
 *
 * BSD License https://opensource.org/licenses/BSD-3-Clause
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *
 *  1. Redistributions of source code must retain the above copyright notice, this list of conditions
 * and the following disclaimer.
 *
 * 2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions
 * and the following disclaimer in the documentation and/or other materials provided with the distribution.
 *
 * 3. Neither the name of the copyright holder nor the names of its contributors may be used to endorse or
 * promote products derived from this software without specific prior written permission.
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES,
 * INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
 * SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 *
 */
Object.defineProperty(exports, "__esModule", { value: true });
exports.LowPassFilterVec3_v2 = exports.OneEuroFilterQuat = exports.OneEuroFilterVec3 = exports.OneEuroFilterVec2 = exports.OneEuroFilter = exports.LowPassFilter = void 0;
const SampleOps_1 = require("./SampleOps");
const NativeLogger_1 = require("./NativeLogger");
/**
 *
 * Modified 2022 Snap Inc.
 *
 */
const TAG = "OneEuroFilter";
const minimumDt = 1.0 / 120.0;
/**
 * Makes sure dt is never 0 or negative
 *
 * @param dt - number to clamp
 * @returns - clamped number
 */
function SafelyClampPeriod(dt) {
    return Math.max(dt, minimumDt);
}
class LowPassFilter {
    constructor(alpha, initval = 0) {
        this.log = new NativeLogger_1.default(TAG);
        this.a = 0;
        this.initialized = false;
        // eslint-disable-next-line no-self-assign
        initval = initval;
        this.y = this.s = initval;
        this.setAlpha(alpha);
    }
    setAlpha(alpha) {
        if (alpha <= 0.0 || alpha > 1.0) {
            this.log.w("alpha should be in (0.0., 1.0]");
        }
        this.a = alpha;
    }
    /**
     * Applies a filter to a value.
     *
     * @param value - The value to filter.
     * @returns The filtered value after applying the specified alpha.
     */
    filter(value) {
        let result;
        if (this.initialized) {
            result = this.a * value + (1.0 - this.a) * this.s;
        }
        else {
            result = value;
            this.initialized = true;
        }
        this.y = value;
        this.s = result;
        return result;
    }
    /**
     * Applies a filter to a value with a specified alpha.
     *
     * @param {number} value - The value to filter.
     * @param {number} alpha - The alpha level to set before filtering.
     * @returns The filtered value after applying the specified alpha.
     */
    filterWithAlpha(value, alpha) {
        this.setAlpha(alpha);
        return this.filter(value);
    }
    /**
     * Checks if the last raw value has been initialized or set.
     *
     * @returns {boolean} True if the last raw value is initialized; false otherwise.
     */
    hasLastRawValue() {
        return this.initialized;
    }
    /**
     * Retrieves the last raw value stored.
     *
     * @returns The last raw value if it has been set; undefined otherwise.
     */
    lastRawValue() {
        return this.y;
    }
    /**
     * Resets the internal state to uninitialized.
     */
    reset() {
        this.initialized = false;
    }
}
exports.LowPassFilter = LowPassFilter;
class OneEuroFilterBase {
    constructor(config) {
        this.log = new NativeLogger_1.default(TAG);
        this.setFrequency(config.frequency);
        this.setMinCutoff(config.minCutoff);
        this.setBeta(config.beta);
        this.setDerivateCutoff(config.dcutoff);
        this.x = new LowPassFilter(this.alpha(config.minCutoff));
        this.dx = new LowPassFilter(this.alpha(config.dcutoff));
        this.lasttime = undefined;
        this.lastcutoff = undefined;
    }
    /**
     * Calculates the alpha value used for smoothing in the filter, based on a cutoff frequency.
     * @param {number} cutoff - The cutoff frequency at which the filter should attenuate the signal.
     * @returns {number} The calculated alpha value for the filter.
     */
    alpha(cutoff) {
        const te = 1.0 / this.frequency;
        const tau = 1.0 / (2 * Math.PI * cutoff);
        return 1.0 / (1.0 + tau / te);
    }
    /**
     * Resets the internal state to uninitialized.
     */
    reset() {
        this.x.reset();
        this.dx.reset();
        this.lasttime = undefined;
        this.lastcutoff = undefined;
    }
    setFrequency(f) {
        if (f <= 0) {
            this.log.w("freq should be >0");
        }
        this.frequency = f;
    }
    setMinCutoff(mc) {
        if (mc <= 0) {
            this.log.w("mincutoff should be >0");
        }
        this.minCutoff = mc;
    }
    setBeta(b) {
        this.beta = b;
    }
    setDerivateCutoff(dc) {
        if (dc <= 0) {
            this.log.w("dcutoff should be >0");
        }
        this.dcutoff = dc;
    }
}
/**
 * `OneEuroFilter` provides a mechanism for filtering noisy signals with a one euro filter algorithm.
 * It extends the `OneEuroFilterBase` class.
 */
class OneEuroFilter extends OneEuroFilterBase {
    /**
     * Applies the filter to the given value using the current filter configuration and updates the internal state.
     * @param {number} value - The new value to be filtered.
     * @param {number} timestamp - The timestamp associated with the value, used to calculate the dynamic parameters of the filter.
     * @returns {number} The filtered value after applying the filter's algorithm.
     */
    filter(value, timestamp) {
        // Update the sampling frequency based on timestamps
        if (this.lasttime !== undefined && timestamp !== undefined) {
            this.frequency = 1.0 / SafelyClampPeriod(timestamp - this.lasttime);
        }
        this.lasttime = timestamp;
        // Estimate the current variation per second
        const dvalue = this.x.hasLastRawValue() ? (value - this.x.lastRawValue()) * this.frequency : 0.0;
        const edvalue = this.dx.filterWithAlpha(dvalue, this.alpha(this.dcutoff));
        // Use it to update the cutoff frequency
        const cutoff = this.minCutoff + this.beta * Math.abs(edvalue);
        this.lastcutoff = cutoff;
        // Filter the given value
        return this.x.filterWithAlpha(value, this.alpha(cutoff));
    }
}
exports.OneEuroFilter = OneEuroFilter;
/**
 * OneEuroFilter for vec2
 * It extends the `OneEuroFilterBase` class.
 */
class OneEuroFilterVec2 extends OneEuroFilterBase {
    constructor(config) {
        super(config);
        this.y = new LowPassFilter(this.alpha(config.minCutoff));
        this.dy = new LowPassFilter(this.alpha(config.dcutoff));
    }
    /**
     * Resets the filter states.
     */
    reset() {
        super.reset();
        this.y.reset();
        this.dy.reset();
    }
    /**
     * Applies the filter to the given value using the current filter configuration and updates the internal state.
     * @param {vec2} value - The new value to be filtered.
     * @param {number} timestamp - The timestamp associated with the value, used to calculate the dynamic parameters of the filter.
     * @returns {vec2} The filtered value after applying the filter's algorithm.
     */
    filter(value, timestamp) {
        // Update the sampling frequency based on timestamps
        if (this.lasttime !== undefined && timestamp !== undefined) {
            this.frequency = 1.0 / SafelyClampPeriod(timestamp - this.lasttime);
        }
        this.lasttime = timestamp;
        // Estimate the current variation per second
        const dValueX = this.x.hasLastRawValue() ? (value.x - this.x.lastRawValue()) * this.frequency : 0.0;
        const dValueY = this.y.hasLastRawValue() ? (value.y - this.y.lastRawValue()) * this.frequency : 0.0;
        const edValueX = this.dx.filterWithAlpha(dValueX, this.alpha(this.dcutoff));
        const edValueY = this.dy.filterWithAlpha(dValueY, this.alpha(this.dcutoff));
        const edValueXyNorm = Math.sqrt(Math.pow(edValueX, 2) + Math.pow(edValueY, 2));
        // Use it to update the cutoff frequency
        const cutoff = this.minCutoff + this.beta * Math.abs(edValueXyNorm);
        this.lastcutoff = undefined;
        // Filter the given value
        const xOut = this.x.filterWithAlpha(value.x, this.alpha(cutoff));
        const yOut = this.y.filterWithAlpha(value.y, this.alpha(cutoff));
        return new vec2(xOut, yOut);
    }
}
exports.OneEuroFilterVec2 = OneEuroFilterVec2;
/**
 * OneEuroFilter for vec3
 * It extends the `OneEuroFilterBase` class.
 */
class OneEuroFilterVec3 extends OneEuroFilterBase {
    constructor(config) {
        super(config);
        this.y = new LowPassFilter(this.alpha(config.minCutoff));
        this.dy = new LowPassFilter(this.alpha(config.dcutoff));
        this.z = new LowPassFilter(this.alpha(config.minCutoff));
        this.dz = new LowPassFilter(this.alpha(config.dcutoff));
        this.speed = new LowPassFilter(this.alpha(config.dcutoff), 0);
    }
    /**
     * Resets the filter to its initial state. This method is typically called to prepare
     * the filter for a new set of data or to clear any existing state.
     */
    reset() {
        super.reset();
        this.y.reset();
        this.dy.reset();
        this.z.reset();
        this.dz.reset();
        this.speed.reset();
    }
    /**
     * Applies the filter to the given value using the current filter configuration and updates the internal state.
     * @param {vec3} value - The new value to be filtered.
     * @param {number} timestamp - The timestamp associated with the value, used to calculate the dynamic parameters of the filter.
     * @returns {vec3} The final filtered value
     */
    filter(value, timestamp) {
        // Update the sampling frequency based on timestamps
        if (this.lasttime !== undefined && timestamp !== undefined) {
            this.frequency = 1.0 / SafelyClampPeriod(timestamp - this.lasttime);
        }
        this.lasttime = timestamp;
        // Estimate the current variation per second
        const dValueX = this.x.hasLastRawValue() ? (value.x - this.x.lastRawValue()) * this.frequency : 0.0;
        const dValueY = this.y.hasLastRawValue() ? (value.y - this.y.lastRawValue()) * this.frequency : 0.0;
        const dValueZ = this.z.hasLastRawValue() ? (value.z - this.z.lastRawValue()) * this.frequency : 0.0;
        const edValueXyzNorm = Math.sqrt(Math.pow(dValueX, 2) + Math.pow(dValueY, 2) + Math.pow(dValueZ, 2));
        const newSpeed = this.speed.filterWithAlpha(edValueXyzNorm, this.alpha(this.dcutoff));
        // Use it to update the cutoff frequency
        const cutoff = this.minCutoff + this.beta * Math.abs(newSpeed);
        this.lastcutoff = cutoff;
        // Filter the given value
        const xOut = this.x.filterWithAlpha(value.x, this.alpha(cutoff));
        const yOut = this.y.filterWithAlpha(value.y, this.alpha(cutoff));
        const zOut = this.z.filterWithAlpha(value.z, this.alpha(cutoff));
        return new vec3(xOut, yOut, zOut);
    }
}
exports.OneEuroFilterVec3 = OneEuroFilterVec3;
/**
 * OneEuroFilterQuat provides a mechanism for filtering noisy rotations.
 * It extends the `OneEuroFilterBase` class
 */
class OneEuroFilterQuat extends OneEuroFilterBase {
    constructor(config) {
        super(config);
        this.qPrevRot = undefined;
        this.speed = new LowPassFilter(this.alpha(config.dcutoff), 0);
    }
    /**
     * Resets the internal state to uninitialized.
     */
    reset() {
        super.reset();
        this.speed.reset();
    }
    /**
     * Applies the filter to the given value using the current filter configuration and updates the internal state.
     * @param {quat} qNewRot - The new value to be filtered.
     * @param {number} timestamp - The timestamp associated with the value, used to calculate the dynamic parameters of the filter.
     * @returns {quat} The final filtered value
     */
    filter(qNewRot, timestamp) {
        // Update the sampling frequency based on timestamps
        if (this.lasttime !== undefined && timestamp !== undefined) {
            this.frequency = 1.0 / SafelyClampPeriod(timestamp - this.lasttime);
        }
        this.lasttime = timestamp;
        qNewRot.normalize();
        if (this.qPrevRot === undefined) {
            this.qPrevRot = qNewRot;
        }
        const delta = qNewRot.dot(this.qPrevRot);
        const mag = Math.max(-1, Math.min(1, 2 * delta * delta - 1));
        const deltaAngle = Math.acos(mag);
        const newSpeed = deltaAngle * this.frequency;
        const filteredSpeed = this.speed.filterWithAlpha(newSpeed, this.alpha(this.dcutoff));
        // Use it to update the cutoff frequency
        const cutoff = this.minCutoff + this.beta * Math.abs(filteredSpeed);
        this.lastcutoff = cutoff;
        const rotationAlpha = this.alpha(cutoff);
        const newRotation = quat.slerp(this.qPrevRot, qNewRot, rotationAlpha);
        newRotation.normalize();
        this.qPrevRot = newRotation;
        newRotation.normalize();
        return newRotation;
    }
}
exports.OneEuroFilterQuat = OneEuroFilterQuat;
class LowPassFilter_v2 {
    constructor(alpha, sampleOps) {
        this.alpha = alpha;
        this.sampleOps = sampleOps;
        this.previousValue = null;
        this.previousRawValue = null;
    }
    /**
     * Set alpha
     * @param newAlpha
     */
    setAlpha(newAlpha) {
        this.alpha = newAlpha;
    }
    hasPreviousRawValue() {
        return this.previousRawValue !== null;
    }
    getPreviousRawValue() {
        var _a;
        return (_a = this.previousRawValue) !== null && _a !== void 0 ? _a : this.sampleOps.zero();
    }
    hasPreviousValue() {
        return this.previousValue !== null;
    }
    getPreviousValue() {
        var _a;
        return (_a = this.previousValue) !== null && _a !== void 0 ? _a : this.sampleOps.zero();
    }
    filter(sample) {
        this.previousRawValue = sample;
        if (this.previousValue === null) {
            this.previousValue = sample;
        }
        const scaledValue = this.sampleOps.uniformScale(sample, this.alpha);
        const scaledPrevValue = this.sampleOps.uniformScale(this.previousValue, 1 - this.alpha);
        const smoothedValue = this.sampleOps.add(scaledValue, scaledPrevValue);
        this.previousValue = smoothedValue;
        return smoothedValue;
    }
    filterWithAlpha(sample, alpha) {
        this.alpha = alpha;
        return this.filter(sample);
    }
}
/**
 * Vec3 specialization of LowPassFilter
 */
class LowPassFilterVec3_v2 extends LowPassFilter_v2 {
    constructor(alpha) {
        super(alpha, new SampleOps_1.Vec3SampleOps());
    }
}
exports.LowPassFilterVec3_v2 = LowPassFilterVec3_v2;
//# sourceMappingURL=OneEuroFilter.js.map