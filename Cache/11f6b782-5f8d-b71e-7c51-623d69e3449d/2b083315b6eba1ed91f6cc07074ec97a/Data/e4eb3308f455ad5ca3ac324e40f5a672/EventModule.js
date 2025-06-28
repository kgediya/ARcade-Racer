"use strict";
/*
 *
 * ====  Example ====
 * @example
 *
 * // Import module
 * var eventModule = require("./EventModule");
 *
 * // Event Wrapper
 * var myEvent = new eventModule.EventWrapper();
 *
 * // Add callback to the event
 * myEvent.add(function(arg){
 *     print("event triggered with param: " + arg);
 * });
 *
 * // Trigger the event
 * myEvent.trigger("hello!");
 *
 *
 * // Keyed Event Wrapper
 * var keyedEvent = new eventModule.KeyedEventWrapper();
 *
 * // Add callback for "eventA"
 * keyedEvent.add("eventA", function(){
 *     print("eventA was triggered!");
 * });
 *
 * // Add callback for "eventB"
 * keyedEvent.add("eventB", function(){
 *     print("eventB was triggered!");
 * });
 *
 * // Trigger the events
 * keyedEvent.trigger("eventA");
 * keyedEvent.trigger("eventB");
 *
 * ====  API ====
 * @api
 *
 * class EventWrapper()
 *      Simple implementation of an event class. Add callbacks to be notified when the event is triggered.
 *
 * EventWrapper.add(function callback): function
 *      Add a callback function to this event. The callback function will be executed when this event is triggered.
 *
 * EventWrapper.remove(function callback)
 *      Remove a callback function from this event.
 *
 * EventWrapper.trigger(arguments...)
 *      Trigger the event so that all callbacks are executed. All arguments given will be passed to the callbacks.
 *
 *
 *
 * class KeyedEventWrapper()
 *      Simple implementation of a key-based event class.
 *
 * KeyedEventWrapper.getWrapper(string key, boolean createIfMissing=false)
 *      Return an EventWrapper for the given `key`.
 *      The EventWrapper holds all callbacks added with the same `key`, and is triggered when `trigger` is called with the same `key`.
 *
 * KeyedEventWrapper.add(string key, function callback): function
 *      Add a callback function tied to the given `key`.
 *      The callback function will be executed when this KeyedEventWrapper is triggered using the same `key`.
 *
 * KeyedEventWrapper.remove(string key, function callback)
 *      Remove a callback function tied to the given `key`.
 *
 * KeyedEventWrapper.addAny(function callback): function
 *      Add a callback function that will be executed any time a trigger occurs.
 *      The first argument for the callback function is the key, the rest of the arguments are what get passed to the trigger.
 *
 * KeyedEventWrapper.removeAny(function callback): function
 *     Remove a callback function that was added using `addAny()`.
 *
 * KeyedEventWrapper.trigger(string key, arguments...)
 *      Trigger all callback functions that were added using the same `key`.
 *      All arguments after `key` will be passed to the callback functions.
 *
 */
Object.defineProperty(exports, "__esModule", { value: true });
exports.version = exports.KeyedEventWrapper = exports.EventWrapper = void 0;
/**
 * Simple implementation of an event class. Add callbacks to be notified when the event is triggered.
 */
class EventWrapper {
    constructor() {
        this._callbacks = [];
    }
    /**
     * Add a callback function to this event. The callback function will be executed when this event is triggered.
     * @param callback Callback function to execute when the event is triggered
     * @returns Callback passed in, can be used with `remove()`
     */
    add(callback) {
        if (typeof callback === "function") {
            this._callbacks.push(callback);
            return callback;
        }
        else {
            throw new Error("Trying to add invalid callback type to EventWrapper. You must add a function.");
        }
    }
    /**
     * @deprecated Use `add` instead
     * Add a callback function to this event. The callback function will be executed when this event is triggered.
     * @param callback Callback function to execute when the event is triggered
     * @returns Callback passed in, can be used with `remove()`
     */
    addCallback(callback) {
        return this.add(callback);
    }
    /**
     * Remove a callback function from this event.
     * @param callback Callback function to remove
     */
    remove(callback) {
        const ind = this._callbacks.indexOf(callback);
        if (ind > -1) {
            this._callbacks.splice(ind, 1);
        }
        else {
            print("Trying to remove callback from EventWrapper, but the callback hasn't been added.");
        }
    }
    /**
     * @deprecated Use `remove` instead
     * Remove a callback function from this event.
     * @param callback Callback function to remove
     */
    removeCallback(callback) {
        this.remove(callback);
    }
    /**
     * Trigger the event so that all callbacks are executed.
     * All arguments given will be passed to the callbacks.
     */
    trigger(...args) {
        const callbacks = this._callbacks.slice();
        for (let i = 0; i < callbacks.length; i++) {
            callbacks[i](...args);
        }
    }
}
exports.EventWrapper = EventWrapper;
/**
 * Simple implementation of a key-based event class.
 */
class KeyedEventWrapper {
    constructor() {
        this._wrappers = {};
        this._any = new EventWrapper();
    }
    /**
     * Return an EventWrapper for the given `key`.
     * The EventWrapper holds all callbacks added with the same `key`, and is triggered when `trigger` is called with the same `key`.
     * @param key Key
     * @param createIfMissing If the wrapper is missing, a new one will be created.
     * @returns EventWrapper or null if not found and createIfMissing is false
     */
    getWrapper(key, createIfMissing = false) {
        let wrapper = this._wrappers[key];
        if (!wrapper && createIfMissing) {
            wrapper = new EventWrapper();
            this._wrappers[key] = wrapper;
        }
        return wrapper || null;
    }
    /**
     * Add a callback function tied to the given `key`.
     * The callback function will be executed when this KeyedEventWrapper is triggered using the same `key`.
     * @param key Key
     * @param callback Callback function to execute
     * @returns Callback passed in, can be used with `remove()`
     */
    add(key, callback) {
        const wrapper = this.getWrapper(key, true);
        if (wrapper) {
            return wrapper.add(callback);
        }
        throw new Error("Failed to create wrapper for key: " + key);
    }
    /**
     * Remove a callback function tied to the given `key`.
     * @param key Key that was used to add the callback function
     * @param callback Callback function to remove
     */
    remove(key, callback) {
        const wrapper = this.getWrapper(key);
        if (wrapper) {
            wrapper.remove(callback);
        }
        else {
            print("Trying to remove callback from KeyedEventWrapper, but key hasn't been subscribed to: " + key);
        }
    }
    /**
     * Add a callback function that will be executed any time a trigger occurs.
     * The first argument for the callback function is the key, the rest of the arguments are what get passed to the trigger.
     * @param callback Callback function to execute when any trigger occurs
     * @returns Callback passed in, can be used with `removeAny()`
     */
    addAny(callback) {
        return this._any.add(callback);
    }
    /**
     * Remove a callback function that was added using `addAny()`.
     * @param callback Callback function to remove
     */
    removeAny(callback) {
        this._any.remove(callback);
    }
    /**
     * Trigger all callback functions that were added using the same `key`.
     * All arguments after `key` will be passed to the callback functions.
     * @param key Key of the events to trigger
     */
    trigger(key, ...args) {
        const wrapper = this.getWrapper(key);
        if (wrapper) {
            wrapper.trigger(...args);
        }
        this._any.trigger(key, ...args);
    }
}
exports.KeyedEventWrapper = KeyedEventWrapper;
exports.version = "2.0.0";
//# sourceMappingURL=EventModule.js.map