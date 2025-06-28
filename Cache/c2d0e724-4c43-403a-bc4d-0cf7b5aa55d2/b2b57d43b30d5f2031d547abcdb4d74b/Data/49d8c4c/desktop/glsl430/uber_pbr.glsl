#version 430
//#include <required.glsl> // [HACK 4/6/2023] See SCC shader_merger.cpp
// SCC_BACKEND_SHADER_FLAGS_BEGIN__
// SCC_BACKEND_SHADER_FLAGS_END__
//SG_REFLECTION_BEGIN(200)
//attribute vec4 boneData 5
//attribute vec3 blendShape0Pos 6
//attribute vec3 blendShape0Normal 12
//attribute vec3 blendShape1Pos 7
//attribute vec3 blendShape1Normal 13
//attribute vec3 blendShape2Pos 8
//attribute vec3 blendShape2Normal 14
//attribute vec3 blendShape3Pos 9
//attribute vec3 blendShape4Pos 10
//attribute vec3 blendShape5Pos 11
//attribute vec4 position 0
//attribute vec3 normal 1
//attribute vec4 tangent 2
//attribute vec2 texture0 3
//attribute vec2 texture1 4
//attribute vec4 color 18
//attribute vec3 positionNext 15
//attribute vec3 positionPrevious 16
//attribute vec4 strandProperties 17
//output uvec4 position_and_mask 0
//output uvec4 normal_and_more 1
//sampler sampler baseTexSmpSC 0:33
//sampler sampler detailNormalTexSmpSC 0:34
//sampler sampler emissiveTexSmpSC 0:35
//sampler sampler intensityTextureSmpSC 0:36
//sampler sampler materialParamsTexSmpSC 0:37
//sampler sampler normalTexSmpSC 0:38
//sampler sampler opacityTexSmpSC 0:39
//sampler sampler reflectionModulationTexSmpSC 0:40
//sampler sampler reflectionTexSmpSC 0:41
//sampler sampler rimColorTexSmpSC 0:42
//sampler sampler sc_EnvmapDiffuseSmpSC 0:43
//sampler sampler sc_EnvmapSpecularSmpSC 0:44
//sampler sampler sc_OITCommonSampler 0:45
//sampler sampler sc_RayTracedAoTextureSmpSC 0:46
//sampler sampler sc_RayTracedDiffIndTextureSmpSC 0:47
//sampler sampler sc_RayTracedReflectionTextureSmpSC 0:48
//sampler sampler sc_RayTracedShadowTextureSmpSC 0:49
//sampler sampler sc_SSAOTextureSmpSC 0:50
//sampler sampler sc_ScreenTextureSmpSC 0:51
//sampler sampler sc_ShadowTextureSmpSC 0:52
//sampler sampler z_hitIdAndBarycentricSmp 0:54
//sampler sampler z_rayDirectionsSmpSC 0:55
//texture texture2D baseTex 0:3:0:33
//texture texture2D detailNormalTex 0:4:0:34
//texture texture2D emissiveTex 0:5:0:35
//texture texture2D intensityTexture 0:6:0:36
//texture texture2D materialParamsTex 0:7:0:37
//texture texture2D normalTex 0:8:0:38
//texture texture2D opacityTex 0:9:0:39
//texture texture2D reflectionModulationTex 0:10:0:40
//texture texture2D reflectionTex 0:11:0:41
//texture texture2D rimColorTex 0:12:0:42
//texture texture2D sc_EnvmapDiffuse 0:13:0:43
//texture texture2D sc_EnvmapSpecular 0:14:0:44
//texture texture2D sc_OITAlpha0 0:15:0:45
//texture texture2D sc_OITAlpha1 0:16:0:45
//texture texture2D sc_OITDepthHigh0 0:17:0:45
//texture texture2D sc_OITDepthHigh1 0:18:0:45
//texture texture2D sc_OITDepthLow0 0:19:0:45
//texture texture2D sc_OITDepthLow1 0:20:0:45
//texture texture2D sc_OITFilteredDepthBoundsTexture 0:21:0:45
//texture texture2D sc_OITFrontDepthTexture 0:22:0:45
//texture texture2D sc_RayTracedAoTexture 0:23:0:46
//texture texture2D sc_RayTracedDiffIndTexture 0:24:0:47
//texture texture2D sc_RayTracedReflectionTexture 0:25:0:48
//texture texture2D sc_RayTracedShadowTexture 0:26:0:49
//texture texture2D sc_SSAOTexture 0:27:0:50
//texture texture2D sc_ScreenTexture 0:28:0:51
//texture texture2D sc_ShadowTexture 0:29:0:52
//texture utexture2D z_hitIdAndBarycentric 0:31:0:54
//texture texture2D z_rayDirections 0:32:0:55
//texture texture2DArray baseTexArrSC 0:56:0:33
//texture texture2DArray detailNormalTexArrSC 0:57:0:34
//texture texture2DArray emissiveTexArrSC 0:58:0:35
//texture texture2DArray intensityTextureArrSC 0:59:0:36
//texture texture2DArray materialParamsTexArrSC 0:60:0:37
//texture texture2DArray normalTexArrSC 0:61:0:38
//texture texture2DArray opacityTexArrSC 0:62:0:39
//texture texture2DArray reflectionModulationTexArrSC 0:63:0:40
//texture texture2DArray reflectionTexArrSC 0:64:0:41
//texture texture2DArray rimColorTexArrSC 0:65:0:42
//texture texture2DArray sc_EnvmapDiffuseArrSC 0:66:0:43
//texture texture2DArray sc_EnvmapSpecularArrSC 0:67:0:44
//texture texture2DArray sc_RayTracedAoTextureArrSC 0:68:0:46
//texture texture2DArray sc_RayTracedDiffIndTextureArrSC 0:69:0:47
//texture texture2DArray sc_RayTracedReflectionTextureArrSC 0:70:0:48
//texture texture2DArray sc_RayTracedShadowTextureArrSC 0:71:0:49
//texture texture2DArray sc_ScreenTextureArrSC 0:72:0:51
//ssbo int layoutIndices 0:0:4 {
//uint _Triangles 0:[1]:4
//}
//ssbo float layoutVertices 0:1:4 {
//float _Vertices 0:[1]:4
//}
//ssbo float layoutVerticesPN 0:2:4 {
//float _VerticesPN 0:[1]:4
//}
//spec_const bool BLEND_MODE_AVERAGE 0 0
//spec_const bool BLEND_MODE_BRIGHT 1 0
//spec_const bool BLEND_MODE_COLOR 2 0
//spec_const bool BLEND_MODE_COLOR_BURN 3 0
//spec_const bool BLEND_MODE_COLOR_DODGE 4 0
//spec_const bool BLEND_MODE_DARKEN 5 0
//spec_const bool BLEND_MODE_DIFFERENCE 6 0
//spec_const bool BLEND_MODE_DIVIDE 7 0
//spec_const bool BLEND_MODE_DIVISION 8 0
//spec_const bool BLEND_MODE_EXCLUSION 9 0
//spec_const bool BLEND_MODE_FORGRAY 10 0
//spec_const bool BLEND_MODE_HARD_GLOW 11 0
//spec_const bool BLEND_MODE_HARD_LIGHT 12 0
//spec_const bool BLEND_MODE_HARD_MIX 13 0
//spec_const bool BLEND_MODE_HARD_PHOENIX 14 0
//spec_const bool BLEND_MODE_HARD_REFLECT 15 0
//spec_const bool BLEND_MODE_HUE 16 0
//spec_const bool BLEND_MODE_INTENSE 17 0
//spec_const bool BLEND_MODE_LIGHTEN 18 0
//spec_const bool BLEND_MODE_LINEAR_LIGHT 19 0
//spec_const bool BLEND_MODE_LUMINOSITY 20 0
//spec_const bool BLEND_MODE_NEGATION 21 0
//spec_const bool BLEND_MODE_NOTBRIGHT 22 0
//spec_const bool BLEND_MODE_OVERLAY 23 0
//spec_const bool BLEND_MODE_PIN_LIGHT 24 0
//spec_const bool BLEND_MODE_REALISTIC 25 0
//spec_const bool BLEND_MODE_SATURATION 26 0
//spec_const bool BLEND_MODE_SOFT_LIGHT 27 0
//spec_const bool BLEND_MODE_SUBTRACT 28 0
//spec_const bool BLEND_MODE_VIVID_LIGHT 29 0
//spec_const bool ENABLE_BASE_TEX 30 0
//spec_const bool ENABLE_DETAIL_NORMAL 31 0
//spec_const bool ENABLE_EMISSIVE 32 0
//spec_const bool ENABLE_MATERIAL_PARAM_TEX 33 0
//spec_const bool ENABLE_NORMALMAP 34 0
//spec_const bool ENABLE_OPACITY_TEX 35 0
//spec_const bool ENABLE_RECOLOR 36 0
//spec_const bool ENABLE_RIM_HIGHLIGHT 37 0
//spec_const bool ENABLE_RIM_INVERT 38 0
//spec_const bool ENABLE_SIMPLE_REFLECTION 39 0
//spec_const bool ENABLE_SPECULAR_AO 40 0
//spec_const bool ENABLE_STIPPLE_PATTERN_TEST 41 0
//spec_const bool ENABLE_UV2 42 0
//spec_const bool ENABLE_UV3 43 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_baseTex 44 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_detailNormalTex 45 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_emissiveTex 46 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_intensityTexture 47 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_materialParamsTex 48 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_normalTex 49 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_opacityTex 50 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_reflectionModulationTex 51 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_reflectionTex 52 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_rimColorTex 53 0
//spec_const bool SC_USE_UV_MIN_MAX_baseTex 54 0
//spec_const bool SC_USE_UV_MIN_MAX_detailNormalTex 55 0
//spec_const bool SC_USE_UV_MIN_MAX_emissiveTex 56 0
//spec_const bool SC_USE_UV_MIN_MAX_intensityTexture 57 0
//spec_const bool SC_USE_UV_MIN_MAX_materialParamsTex 58 0
//spec_const bool SC_USE_UV_MIN_MAX_normalTex 59 0
//spec_const bool SC_USE_UV_MIN_MAX_opacityTex 60 0
//spec_const bool SC_USE_UV_MIN_MAX_reflectionModulationTex 61 0
//spec_const bool SC_USE_UV_MIN_MAX_reflectionTex 62 0
//spec_const bool SC_USE_UV_MIN_MAX_rimColorTex 63 0
//spec_const bool SC_USE_UV_TRANSFORM_baseTex 64 0
//spec_const bool SC_USE_UV_TRANSFORM_detailNormalTex 65 0
//spec_const bool SC_USE_UV_TRANSFORM_emissiveTex 66 0
//spec_const bool SC_USE_UV_TRANSFORM_intensityTexture 67 0
//spec_const bool SC_USE_UV_TRANSFORM_materialParamsTex 68 0
//spec_const bool SC_USE_UV_TRANSFORM_normalTex 69 0
//spec_const bool SC_USE_UV_TRANSFORM_opacityTex 70 0
//spec_const bool SC_USE_UV_TRANSFORM_reflectionModulationTex 71 0
//spec_const bool SC_USE_UV_TRANSFORM_reflectionTex 72 0
//spec_const bool SC_USE_UV_TRANSFORM_rimColorTex 73 0
//spec_const bool Tweak_N177 74 0
//spec_const bool Tweak_N216 75 0
//spec_const bool UseViewSpaceDepthVariant 76 1
//spec_const bool baseTexHasSwappedViews 77 0
//spec_const bool detailNormalTexHasSwappedViews 78 0
//spec_const bool emissiveTexHasSwappedViews 79 0
//spec_const bool intensityTextureHasSwappedViews 80 0
//spec_const bool materialParamsTexHasSwappedViews 81 0
//spec_const bool normalTexHasSwappedViews 82 0
//spec_const bool opacityTexHasSwappedViews 83 0
//spec_const bool reflectionModulationTexHasSwappedViews 84 0
//spec_const bool reflectionTexHasSwappedViews 85 0
//spec_const bool rimColorTexHasSwappedViews 86 0
//spec_const bool sc_BlendMode_Add 87 0
//spec_const bool sc_BlendMode_AddWithAlphaFactor 88 0
//spec_const bool sc_BlendMode_AlphaTest 89 0
//spec_const bool sc_BlendMode_AlphaToCoverage 90 0
//spec_const bool sc_BlendMode_ColoredGlass 91 0
//spec_const bool sc_BlendMode_Custom 92 0
//spec_const bool sc_BlendMode_Max 93 0
//spec_const bool sc_BlendMode_Min 94 0
//spec_const bool sc_BlendMode_Multiply 95 0
//spec_const bool sc_BlendMode_MultiplyOriginal 96 0
//spec_const bool sc_BlendMode_Normal 97 0
//spec_const bool sc_BlendMode_PremultipliedAlpha 98 0
//spec_const bool sc_BlendMode_PremultipliedAlphaAuto 99 0
//spec_const bool sc_BlendMode_PremultipliedAlphaHardware 100 0
//spec_const bool sc_BlendMode_Screen 101 0
//spec_const bool sc_BlendMode_Software 102 0
//spec_const bool sc_DepthOnly 103 0
//spec_const bool sc_EnvmapDiffuseHasSwappedViews 104 0
//spec_const bool sc_EnvmapSpecularHasSwappedViews 105 0
//spec_const bool sc_FramebufferFetch 106 0
//spec_const bool sc_GetFramebufferColorInvalidUsageMarker 107 0
//spec_const bool sc_HasDiffuseEnvmap 108 0
//spec_const bool sc_IsEditor 109 0
//spec_const bool sc_LightEstimation 110 0
//spec_const bool sc_MotionVectorsPass 111 0
//spec_const bool sc_OITCompositingPass 112 0
//spec_const bool sc_OITDepthBoundsPass 113 0
//spec_const bool sc_OITDepthGatherPass 114 0
//spec_const bool sc_OITDepthPrepass 115 0
//spec_const bool sc_OITFrontLayerPass 116 0
//spec_const bool sc_OITMaxLayers4Plus1 117 0
//spec_const bool sc_OITMaxLayers8 118 0
//spec_const bool sc_OITMaxLayersVisualizeLayerCount 119 0
//spec_const bool sc_ProjectiveShadowsCaster 120 0
//spec_const bool sc_ProjectiveShadowsReceiver 121 0
//spec_const bool sc_ProxyAlphaOne 122 0
//spec_const bool sc_RayTracedAoTextureHasSwappedViews 123 0
//spec_const bool sc_RayTracedDiffIndTextureHasSwappedViews 124 0
//spec_const bool sc_RayTracedReflectionTextureHasSwappedViews 125 0
//spec_const bool sc_RayTracedShadowTextureHasSwappedViews 126 0
//spec_const bool sc_RenderAlphaToColor 127 0
//spec_const bool sc_SSAOEnabled 128 0
//spec_const bool sc_ScreenTextureHasSwappedViews 129 0
//spec_const bool sc_ShaderComplexityAnalyzer 130 0
//spec_const bool sc_TAAEnabled 131 0
//spec_const bool sc_UseFramebufferFetchMarker 132 0
//spec_const bool sc_VertexBlending 133 0
//spec_const bool sc_VertexBlendingUseNormals 134 0
//spec_const bool uv2EnableAnimation 135 0
//spec_const bool uv3EnableAnimation 136 0
//spec_const int NODE_13_DROPLIST_ITEM 137 0
//spec_const int NODE_181_DROPLIST_ITEM 138 0
//spec_const int NODE_184_DROPLIST_ITEM 139 0
//spec_const int NODE_221_DROPLIST_ITEM 140 0
//spec_const int NODE_228_DROPLIST_ITEM 141 0
//spec_const int NODE_27_DROPLIST_ITEM 142 0
//spec_const int NODE_315_DROPLIST_ITEM 143 0
//spec_const int NODE_38_DROPLIST_ITEM 144 0
//spec_const int NODE_49_DROPLIST_ITEM 145 0
//spec_const int NODE_69_DROPLIST_ITEM 146 0
//spec_const int NODE_76_DROPLIST_ITEM 147 0
//spec_const int SC_DEVICE_CLASS 148 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_baseTex 149 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_detailNormalTex 150 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_emissiveTex 151 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_intensityTexture 152 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_materialParamsTex 153 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_normalTex 154 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_opacityTex 155 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_reflectionModulationTex 156 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_reflectionTex 157 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_rimColorTex 158 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_baseTex 159 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_detailNormalTex 160 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_emissiveTex 161 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_intensityTexture 162 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_materialParamsTex 163 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_normalTex 164 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_opacityTex 165 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_reflectionModulationTex 166 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_reflectionTex 167 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_rimColorTex 168 -1
//spec_const int baseTexLayout 169 0
//spec_const int detailNormalTexLayout 170 0
//spec_const int emissiveTexLayout 171 0
//spec_const int intensityTextureLayout 172 0
//spec_const int materialParamsTexLayout 173 0
//spec_const int normalTexLayout 174 0
//spec_const int opacityTexLayout 175 0
//spec_const int reflectionModulationTexLayout 176 0
//spec_const int reflectionTexLayout 177 0
//spec_const int rimColorTexLayout 178 0
//spec_const int sc_AmbientLightMode0 179 0
//spec_const int sc_AmbientLightMode1 180 0
//spec_const int sc_AmbientLightMode2 181 0
//spec_const int sc_AmbientLightMode_Constant 182 0
//spec_const int sc_AmbientLightMode_EnvironmentMap 183 0
//spec_const int sc_AmbientLightMode_FromCamera 184 0
//spec_const int sc_AmbientLightMode_SphericalHarmonics 185 0
//spec_const int sc_AmbientLightsCount 186 0
//spec_const int sc_DepthBufferMode 187 0
//spec_const int sc_DirectionalLightsCount 188 0
//spec_const int sc_EnvLightMode 189 0
//spec_const int sc_EnvmapDiffuseLayout 190 0
//spec_const int sc_EnvmapSpecularLayout 191 0
//spec_const int sc_LightEstimationSGCount 192 0
//spec_const int sc_MaxTextureImageUnits 193 0
//spec_const int sc_PointLightsCount 194 0
//spec_const int sc_RayTracedAoTextureLayout 195 0
//spec_const int sc_RayTracedDiffIndTextureLayout 196 0
//spec_const int sc_RayTracedReflectionTextureLayout 197 0
//spec_const int sc_RayTracedShadowTextureLayout 198 0
//spec_const int sc_RenderingSpace 199 -1
//spec_const int sc_ScreenTextureLayout 200 0
//spec_const int sc_ShaderCacheConstant 201 0
//spec_const int sc_SkinBonesCount 202 0
//spec_const int sc_StereoRenderingMode 203 0
//spec_const int sc_StereoRendering_IsClipDistanceEnabled 204 0
//spec_const int sc_StereoViewID 205 0
//SG_REFLECTION_END
#if defined VERTEX_SHADER
#define sc_StereoRendering_Disabled 0
#define sc_StereoRendering_InstancedClipped 1
#define sc_StereoRendering_Multiview 2
#ifdef GL_ES
    #define SC_GLES_VERSION_20 2000
    #define SC_GLES_VERSION_30 3000
    #define SC_GLES_VERSION_31 3100
    #define SC_GLES_VERSION_32 3200
#endif
#ifdef VERTEX_SHADER
    #define scOutPos(clipPosition) gl_Position=clipPosition
    #define MAIN main
#endif
#ifdef SC_ENABLE_INSTANCED_RENDERING
    #ifndef sc_EnableInstancing
        #define sc_EnableInstancing 1
    #endif
#endif
#define mod(x,y) (x-y*floor((x+1e-6)/y))
#if defined(GL_ES)&&(__VERSION__<300)&&!defined(GL_OES_standard_derivatives)
#define dFdx(A) (A)
#define dFdy(A) (A)
#define fwidth(A) (A)
#endif
#if __VERSION__<300
#define isinf(x) (x!=0.0&&x*2.0==x ? true : false)
#define isnan(x) (x>0.0||x<0.0||x==0.0 ? false : true)
#define inverse(M) M
#endif
#ifdef sc_EnableFeatureLevelES3
    #ifdef sc_EnableStereoClipDistance
        #if defined(GL_APPLE_clip_distance)
            #extension GL_APPLE_clip_distance : require
        #elif defined(GL_EXT_clip_cull_distance)
            #extension GL_EXT_clip_cull_distance : require
        #else
            #error Clip distance is requested but not supported by this device.
        #endif
    #endif
#else
    #ifdef sc_EnableStereoClipDistance
        #error Clip distance is requested but not supported by this device.
    #endif
#endif
#ifdef sc_EnableFeatureLevelES3
    #ifdef VERTEX_SHADER
        #define attribute in
        #define varying out
    #endif
    #ifdef FRAGMENT_SHADER
        #define varying in
    #endif
    #define gl_FragColor sc_FragData0
    #define texture2D texture
    #define texture2DLod textureLod
    #define texture2DLodEXT textureLod
    #define textureCubeLodEXT textureLod
#endif
#if defined(sc_EnableMultiviewStereoRendering)
    #define sc_StereoRenderingMode sc_StereoRendering_Multiview
    #define sc_NumStereoViews 2
    #extension GL_OVR_multiview2 : require
    #ifdef VERTEX_SHADER
        #ifdef sc_EnableInstancingFallback
            #define sc_GlobalInstanceID (sc_FallbackInstanceID*2+gl_InstanceID)
        #else
            #define sc_GlobalInstanceID gl_InstanceID
        #endif
        #define sc_LocalInstanceID sc_GlobalInstanceID
        #define sc_StereoViewID int(gl_ViewID_OVR)
    #endif
#elif defined(sc_EnableInstancedClippedStereoRendering)
    #ifndef sc_EnableInstancing
        #error Instanced-clipped stereo rendering requires enabled instancing.
    #endif
    #ifndef sc_EnableStereoClipDistance
        #define sc_StereoRendering_IsClipDistanceEnabled 0
    #else
        #define sc_StereoRendering_IsClipDistanceEnabled 1
    #endif
    #define sc_StereoRenderingMode sc_StereoRendering_InstancedClipped
    #define sc_NumStereoClipPlanes 1
    #define sc_NumStereoViews 2
    #ifdef VERTEX_SHADER
        #ifdef sc_EnableInstancingFallback
            #define sc_GlobalInstanceID (sc_FallbackInstanceID*2+gl_InstanceID)
        #else
            #define sc_GlobalInstanceID gl_InstanceID
        #endif
        #ifdef sc_EnableFeatureLevelES3
            #define sc_LocalInstanceID (sc_GlobalInstanceID/2)
            #define sc_StereoViewID (sc_GlobalInstanceID%2)
        #else
            #define sc_LocalInstanceID int(sc_GlobalInstanceID/2.0)
            #define sc_StereoViewID int(mod(sc_GlobalInstanceID,2.0))
        #endif
    #endif
#else
    #define sc_StereoRenderingMode sc_StereoRendering_Disabled
#endif
#ifdef VERTEX_SHADER
    #ifdef sc_EnableInstancing
        #ifdef GL_ES
            #if defined(sc_EnableFeatureLevelES2)&&!defined(GL_EXT_draw_instanced)
                #define gl_InstanceID (0)
            #endif
        #else
            #if defined(sc_EnableFeatureLevelES2)&&!defined(GL_EXT_draw_instanced)&&!defined(GL_ARB_draw_instanced)&&!defined(GL_EXT_gpu_shader4)
                #define gl_InstanceID (0)
            #endif
        #endif
        #ifdef GL_ARB_draw_instanced
            #extension GL_ARB_draw_instanced : require
            #define gl_InstanceID gl_InstanceIDARB
        #endif
        #ifdef GL_EXT_draw_instanced
            #extension GL_EXT_draw_instanced : require
            #define gl_InstanceID gl_InstanceIDEXT
        #endif
        #ifndef sc_InstanceID
            #define sc_InstanceID gl_InstanceID
        #endif
        #ifndef sc_GlobalInstanceID
            #ifdef sc_EnableInstancingFallback
                #define sc_GlobalInstanceID (sc_FallbackInstanceID)
                #define sc_LocalInstanceID (sc_FallbackInstanceID)
            #else
                #define sc_GlobalInstanceID gl_InstanceID
                #define sc_LocalInstanceID gl_InstanceID
            #endif
        #endif
    #endif
#endif
#ifdef VERTEX_SHADER
    #if (__VERSION__<300)&&!defined(GL_EXT_gpu_shader4)
        #define gl_VertexID (0)
    #endif
#endif
#ifndef GL_ES
        #extension GL_EXT_gpu_shader4 : enable
    #extension GL_ARB_shader_texture_lod : enable
    #ifndef texture2DLodEXT
        #define texture2DLodEXT texture2DLod
    #endif
    #define precision
    #define lowp
    #define mediump
    #define highp
    #define sc_FragmentPrecision
#endif
#ifdef sc_EnableFeatureLevelES3
    #define sc_CanUseSampler2DArray 1
#endif
#if defined(sc_EnableFeatureLevelES2)&&defined(GL_ES)
    #ifdef GL_EXT_texture_array
        #extension GL_EXT_texture_array : require
        #define sc_CanUseSampler2DArray 1
    #else
        #define sc_CanUseSampler2DArray 0
    #endif
#endif
#ifdef GL_ES
    #ifdef sc_FramebufferFetch
        #if defined(GL_EXT_shader_framebuffer_fetch)
            #extension GL_EXT_shader_framebuffer_fetch : require
        #elif defined(GL_ARM_shader_framebuffer_fetch)
            #extension GL_ARM_shader_framebuffer_fetch : require
        #else
            #error Framebuffer fetch is requested but not supported by this device.
        #endif
    #endif
    #ifdef GL_FRAGMENT_PRECISION_HIGH
        #define sc_FragmentPrecision highp
    #else
        #define sc_FragmentPrecision mediump
    #endif
    #ifdef FRAGMENT_SHADER
        precision highp int;
        precision highp float;
    #endif
#endif
#ifdef VERTEX_SHADER
    #ifdef sc_EnableMultiviewStereoRendering
        layout(num_views=sc_NumStereoViews) in;
    #endif
#endif
#if __VERSION__>100
    #define SC_INT_FALLBACK_FLOAT int
    #define SC_INTERPOLATION_FLAT flat
    #define SC_INTERPOLATION_CENTROID centroid
#else
    #define SC_INT_FALLBACK_FLOAT float
    #define SC_INTERPOLATION_FLAT
    #define SC_INTERPOLATION_CENTROID
#endif
#ifndef sc_NumStereoViews
    #define sc_NumStereoViews 1
#endif
#ifndef sc_CanUseSampler2DArray
    #define sc_CanUseSampler2DArray 0
#endif
#if __VERSION__>=300
#define texture3D texture
#define textureCube texture
#define texture2DArray texture
#define texture2DLod textureLod
#define texture3DLod textureLod
#define texture2DLodEXT textureLod
#define texture3DLodEXT textureLod
#define textureCubeLod textureLod
#define textureCubeLodEXT textureLod
#define texture2DArrayLod textureLod
#define texture2DArrayLodEXT textureLod
#endif
    #ifndef sc_TextureRenderingLayout_Regular
        #define sc_TextureRenderingLayout_Regular 0
        #define sc_TextureRenderingLayout_StereoInstancedClipped 1
        #define sc_TextureRenderingLayout_StereoMultiview 2
    #endif
    #define depthToGlobal   depthScreenToViewSpace
    #define depthToLocal    depthViewToScreenSpace
    #ifndef quantizeUV
        #define quantizeUV sc_QuantizeUV
        #define sc_platformUVFlip sc_PlatformFlipV
        #define sc_PlatformFlipUV sc_PlatformFlipV
    #endif
    #ifndef sc_texture2DLod
        #define sc_texture2DLod sc_InternalTextureLevel
        #define sc_textureLod sc_InternalTextureLevel
        #define sc_textureBias sc_InternalTextureBiasOrLevel
        #define sc_texture sc_InternalTexture
    #endif
#ifdef uv2
#undef uv2
#endif
#ifdef uv3
#undef uv3
#endif
struct sc_Vertex_t
{
vec4 position;
vec3 normal;
vec3 tangent;
vec2 texture0;
vec2 texture1;
};
#ifndef sc_StereoRenderingMode
#define sc_StereoRenderingMode 0
#endif
#ifndef sc_StereoViewID
#define sc_StereoViewID 0
#endif
#ifndef sc_RenderingSpace
#define sc_RenderingSpace -1
#endif
#ifndef sc_TAAEnabled
#define sc_TAAEnabled 0
#elif sc_TAAEnabled==1
#undef sc_TAAEnabled
#define sc_TAAEnabled 1
#endif
#ifndef sc_StereoRendering_IsClipDistanceEnabled
#define sc_StereoRendering_IsClipDistanceEnabled 0
#endif
#ifndef sc_NumStereoViews
#define sc_NumStereoViews 1
#endif
#ifndef sc_ShaderCacheConstant
#define sc_ShaderCacheConstant 0
#endif
#ifndef sc_SkinBonesCount
#define sc_SkinBonesCount 0
#endif
#ifndef sc_VertexBlending
#define sc_VertexBlending 0
#elif sc_VertexBlending==1
#undef sc_VertexBlending
#define sc_VertexBlending 1
#endif
#ifndef sc_VertexBlendingUseNormals
#define sc_VertexBlendingUseNormals 0
#elif sc_VertexBlendingUseNormals==1
#undef sc_VertexBlendingUseNormals
#define sc_VertexBlendingUseNormals 1
#endif
struct sc_Camera_t
{
vec3 position;
float aspect;
vec2 clipPlanes;
};
#ifndef sc_DepthBufferMode
#define sc_DepthBufferMode 0
#endif
#ifndef sc_ProjectiveShadowsReceiver
#define sc_ProjectiveShadowsReceiver 0
#elif sc_ProjectiveShadowsReceiver==1
#undef sc_ProjectiveShadowsReceiver
#define sc_ProjectiveShadowsReceiver 1
#endif
#ifndef sc_OITDepthGatherPass
#define sc_OITDepthGatherPass 0
#elif sc_OITDepthGatherPass==1
#undef sc_OITDepthGatherPass
#define sc_OITDepthGatherPass 1
#endif
#ifndef sc_OITCompositingPass
#define sc_OITCompositingPass 0
#elif sc_OITCompositingPass==1
#undef sc_OITCompositingPass
#define sc_OITCompositingPass 1
#endif
#ifndef sc_OITDepthBoundsPass
#define sc_OITDepthBoundsPass 0
#elif sc_OITDepthBoundsPass==1
#undef sc_OITDepthBoundsPass
#define sc_OITDepthBoundsPass 1
#endif
#ifndef UseViewSpaceDepthVariant
#define UseViewSpaceDepthVariant 1
#elif UseViewSpaceDepthVariant==1
#undef UseViewSpaceDepthVariant
#define UseViewSpaceDepthVariant 1
#endif
layout(binding=0,std430) readonly buffer layoutIndices
{
uint _Triangles[1];
} layoutIndices_obj;
layout(binding=1,std430) readonly buffer layoutVertices
{
float _Vertices[1];
} layoutVertices_obj;
layout(binding=2,std430) readonly buffer layoutVerticesPN
{
float _VerticesPN[1];
} layoutVerticesPN_obj;
uniform bool isProxyMode;
uniform mat4 sc_ModelMatrix;
uniform mat4 sc_ProjectorMatrix;
uniform vec2 sc_TAAJitterOffset;
uniform vec4 sc_StereoClipPlanes[sc_NumStereoViews];
uniform vec4 sc_UniformConstants;
uniform vec4 sc_BoneMatrices[(sc_SkinBonesCount*3)+1];
uniform mat3 sc_SkinBonesNormalMatrices[sc_SkinBonesCount+1];
uniform vec4 weights0;
uniform vec4 weights1;
uniform mat4 sc_ViewProjectionMatrixArray[sc_NumStereoViews];
uniform mat4 sc_ModelViewMatrixArray[sc_NumStereoViews];
uniform sc_Camera_t sc_Camera;
uniform mat4 sc_ProjectionMatrixInverseArray[sc_NumStereoViews];
uniform mat4 sc_ViewMatrixArray[sc_NumStereoViews];
uniform mat4 sc_ProjectionMatrixArray[sc_NumStereoViews];
uniform mat3 sc_NormalMatrix;
uniform int PreviewEnabled;
uniform float depthRef;
out float varClipDistance;
flat out int varStereoViewID;
in vec4 boneData;
in vec3 blendShape0Pos;
in vec3 blendShape0Normal;
in vec3 blendShape1Pos;
in vec3 blendShape1Normal;
in vec3 blendShape2Pos;
in vec3 blendShape2Normal;
in vec3 blendShape3Pos;
in vec3 blendShape4Pos;
in vec3 blendShape5Pos;
in vec4 position;
in vec3 normal;
in vec4 tangent;
in vec2 texture0;
in vec2 texture1;
out vec3 varPos;
out vec3 varNormal;
out vec4 varTangent;
out vec4 varPackedTex;
out vec4 varScreenPos;
out vec2 varScreenTexturePos;
out vec2 varShadowTex;
out float varViewSpaceDepth;
out vec4 varColor;
in vec4 color;
out vec4 PreviewVertexColor;
out float PreviewVertexSaved;
in vec3 positionNext;
in vec3 positionPrevious;
in vec4 strandProperties;
void sc_SetClipDistancePlatform(float dstClipDistance)
{
    #if sc_StereoRenderingMode==sc_StereoRendering_InstancedClipped&&sc_StereoRendering_IsClipDistanceEnabled
        gl_ClipDistance[0]=dstClipDistance;
    #endif
}
void sc_SetClipDistance(float dstClipDistance)
{
#if (sc_StereoRendering_IsClipDistanceEnabled==1)
{
sc_SetClipDistancePlatform(dstClipDistance);
}
#else
{
varClipDistance=dstClipDistance;
}
#endif
}
void sc_SetClipDistance(vec4 clipPosition)
{
#if (sc_StereoRenderingMode==1)
{
sc_SetClipDistance(dot(clipPosition,sc_StereoClipPlanes[sc_StereoViewID]));
}
#endif
}
void sc_SetClipPosition(vec4 clipPosition)
{
#if (sc_ShaderCacheConstant!=0)
{
clipPosition.x+=(sc_UniformConstants.x*float(sc_ShaderCacheConstant));
}
#endif
#if (sc_StereoRenderingMode>0)
{
varStereoViewID=sc_StereoViewID;
}
#endif
sc_SetClipDistance(clipPosition);
gl_Position=clipPosition;
}
void blendTargetShapeWithNormal(inout sc_Vertex_t v,vec3 position_1,vec3 normal_1,float weight)
{
vec3 l9_0=v.position.xyz+(position_1*weight);
v=sc_Vertex_t(vec4(l9_0.x,l9_0.y,l9_0.z,v.position.w),v.normal,v.tangent,v.texture0,v.texture1);
v.normal+=(normal_1*weight);
}
void sc_GetBoneMatrix(int index,out vec4 m0,out vec4 m1,out vec4 m2)
{
int l9_0=3*index;
m0=sc_BoneMatrices[l9_0];
m1=sc_BoneMatrices[l9_0+1];
m2=sc_BoneMatrices[l9_0+2];
}
vec3 skinVertexPosition(int i,vec4 v)
{
vec3 l9_0;
#if (sc_SkinBonesCount>0)
{
vec4 param_1;
vec4 param_2;
vec4 param_3;
sc_GetBoneMatrix(i,param_1,param_2,param_3);
l9_0=vec3(dot(v,param_1),dot(v,param_2),dot(v,param_3));
}
#else
{
l9_0=v.xyz;
}
#endif
return l9_0;
}
int sc_GetStereoViewIndex()
{
int l9_0;
#if (sc_StereoRenderingMode==0)
{
l9_0=0;
}
#else
{
l9_0=sc_StereoViewID;
}
#endif
return l9_0;
}
void main()
{
if (isProxyMode)
{
sc_SetClipPosition(vec4(position.xy,depthRef+(1e-10*position.z),1.0+(1e-10*position.w)));
return;
}
PreviewVertexColor=vec4(0.5);
PreviewVertexSaved=0.0;
vec2 l9_0;
vec2 l9_1;
vec3 l9_2;
vec3 l9_3;
vec4 l9_4;
#if (sc_VertexBlending)
{
vec2 l9_5;
vec2 l9_6;
vec3 l9_7;
vec3 l9_8;
vec4 l9_9;
#if (sc_VertexBlendingUseNormals)
{
sc_Vertex_t l9_10=sc_Vertex_t(position,normal,tangent.xyz,texture0,texture1);
blendTargetShapeWithNormal(l9_10,blendShape0Pos,blendShape0Normal,weights0.x);
blendTargetShapeWithNormal(l9_10,blendShape1Pos,blendShape1Normal,weights0.y);
blendTargetShapeWithNormal(l9_10,blendShape2Pos,blendShape2Normal,weights0.z);
l9_9=l9_10.position;
l9_8=l9_10.normal;
l9_7=l9_10.tangent;
l9_6=l9_10.texture0;
l9_5=l9_10.texture1;
}
#else
{
vec3 l9_12=(((((position.xyz+(blendShape0Pos*weights0.x)).xyz+(blendShape1Pos*weights0.y)).xyz+(blendShape2Pos*weights0.z)).xyz+(blendShape3Pos*weights0.w)).xyz+(blendShape4Pos*weights1.x)).xyz+(blendShape5Pos*weights1.y);
l9_9=vec4(l9_12.x,l9_12.y,l9_12.z,position.w);
l9_8=normal;
l9_7=tangent.xyz;
l9_6=texture0;
l9_5=texture1;
}
#endif
l9_4=l9_9;
l9_3=l9_8;
l9_2=l9_7;
l9_1=l9_6;
l9_0=l9_5;
}
#else
{
l9_4=position;
l9_3=normal;
l9_2=tangent.xyz;
l9_1=texture0;
l9_0=texture1;
}
#endif
vec3 l9_13;
vec3 l9_14;
vec4 l9_15;
#if (sc_SkinBonesCount>0)
{
vec4 l9_16;
#if (sc_SkinBonesCount>0)
{
vec4 l9_17=vec4(1.0,fract(boneData.yzw));
vec4 l9_18=l9_17;
l9_18.x=1.0-dot(l9_17.yzw,vec3(1.0));
l9_16=l9_18;
}
#else
{
l9_16=vec4(0.0);
}
#endif
int l9_19=int(boneData.x);
int l9_20=int(boneData.y);
int l9_21=int(boneData.z);
int l9_22=int(boneData.w);
vec3 l9_23=(((skinVertexPosition(l9_19,l9_4)*l9_16.x)+(skinVertexPosition(l9_20,l9_4)*l9_16.y))+(skinVertexPosition(l9_21,l9_4)*l9_16.z))+(skinVertexPosition(l9_22,l9_4)*l9_16.w);
l9_15=vec4(l9_23.x,l9_23.y,l9_23.z,l9_4.w);
l9_14=((((sc_SkinBonesNormalMatrices[l9_19]*l9_3)*l9_16.x)+((sc_SkinBonesNormalMatrices[l9_20]*l9_3)*l9_16.y))+((sc_SkinBonesNormalMatrices[l9_21]*l9_3)*l9_16.z))+((sc_SkinBonesNormalMatrices[l9_22]*l9_3)*l9_16.w);
l9_13=((((sc_SkinBonesNormalMatrices[l9_19]*l9_2)*l9_16.x)+((sc_SkinBonesNormalMatrices[l9_20]*l9_2)*l9_16.y))+((sc_SkinBonesNormalMatrices[l9_21]*l9_2)*l9_16.z))+((sc_SkinBonesNormalMatrices[l9_22]*l9_2)*l9_16.w);
}
#else
{
l9_15=l9_4;
l9_14=l9_3;
l9_13=l9_2;
}
#endif
#if (sc_RenderingSpace==3)
{
varPos=vec3(0.0);
varNormal=l9_14;
varTangent=vec4(l9_13.x,l9_13.y,l9_13.z,varTangent.w);
}
#else
{
#if (sc_RenderingSpace==4)
{
varPos=vec3(0.0);
varNormal=l9_14;
varTangent=vec4(l9_13.x,l9_13.y,l9_13.z,varTangent.w);
}
#else
{
#if (sc_RenderingSpace==2)
{
varPos=l9_15.xyz;
varNormal=l9_14;
varTangent=vec4(l9_13.x,l9_13.y,l9_13.z,varTangent.w);
}
#else
{
#if (sc_RenderingSpace==1)
{
varPos=(sc_ModelMatrix*l9_15).xyz;
varNormal=sc_NormalMatrix*l9_14;
vec3 l9_24=sc_NormalMatrix*l9_13;
varTangent=vec4(l9_24.x,l9_24.y,l9_24.z,varTangent.w);
}
#endif
}
#endif
}
#endif
}
#endif
bool l9_25=PreviewEnabled==1;
vec2 l9_26;
if (l9_25)
{
vec2 l9_27=l9_1;
l9_27.x=1.0-l9_1.x;
l9_26=l9_27;
}
else
{
l9_26=l9_1;
}
varColor=color;
vec3 l9_28=varPos;
vec3 l9_29=varNormal;
vec3 l9_30;
vec3 l9_31;
vec3 l9_32;
if (l9_25)
{
l9_32=varTangent.xyz;
l9_31=varNormal;
l9_30=varPos;
}
else
{
l9_32=varTangent.xyz;
l9_31=l9_29;
l9_30=l9_28;
}
varPos=l9_30;
varNormal=normalize(l9_31);
vec3 l9_33=normalize(l9_32);
varTangent=vec4(l9_33.x,l9_33.y,l9_33.z,varTangent.w);
varTangent.w=tangent.w;
#if (UseViewSpaceDepthVariant&&((sc_OITDepthGatherPass||sc_OITCompositingPass)||sc_OITDepthBoundsPass))
{
vec4 l9_34;
#if (sc_RenderingSpace==3)
{
l9_34=sc_ProjectionMatrixInverseArray[sc_GetStereoViewIndex()]*l9_15;
}
#else
{
vec4 l9_35;
#if (sc_RenderingSpace==2)
{
l9_35=sc_ViewMatrixArray[sc_GetStereoViewIndex()]*l9_15;
}
#else
{
vec4 l9_36;
#if (sc_RenderingSpace==1)
{
l9_36=sc_ModelViewMatrixArray[sc_GetStereoViewIndex()]*l9_15;
}
#else
{
l9_36=l9_15;
}
#endif
l9_35=l9_36;
}
#endif
l9_34=l9_35;
}
#endif
varViewSpaceDepth=-l9_34.z;
}
#endif
vec4 l9_37;
#if (sc_RenderingSpace==3)
{
l9_37=l9_15;
}
#else
{
vec4 l9_38;
#if (sc_RenderingSpace==4)
{
l9_38=(sc_ModelViewMatrixArray[sc_GetStereoViewIndex()]*l9_15)*vec4(1.0/sc_Camera.aspect,1.0,1.0,1.0);
}
#else
{
vec4 l9_39;
#if (sc_RenderingSpace==2)
{
l9_39=sc_ViewProjectionMatrixArray[sc_GetStereoViewIndex()]*vec4(varPos,1.0);
}
#else
{
vec4 l9_40;
#if (sc_RenderingSpace==1)
{
l9_40=sc_ViewProjectionMatrixArray[sc_GetStereoViewIndex()]*vec4(varPos,1.0);
}
#else
{
l9_40=vec4(0.0);
}
#endif
l9_39=l9_40;
}
#endif
l9_38=l9_39;
}
#endif
l9_37=l9_38;
}
#endif
varPackedTex=vec4(l9_26,l9_0);
#if (sc_ProjectiveShadowsReceiver)
{
vec4 l9_41;
#if (sc_RenderingSpace==1)
{
l9_41=sc_ModelMatrix*l9_15;
}
#else
{
l9_41=l9_15;
}
#endif
vec4 l9_42=sc_ProjectorMatrix*l9_41;
varShadowTex=((l9_42.xy/vec2(l9_42.w))*0.5)+vec2(0.5);
}
#endif
vec4 l9_43;
#if (sc_DepthBufferMode==1)
{
vec4 l9_44;
if (sc_ProjectionMatrixArray[sc_GetStereoViewIndex()][2].w!=0.0)
{
vec4 l9_45=l9_37;
l9_45.z=((log2(max(sc_Camera.clipPlanes.x,1.0+l9_37.w))*(2.0/log2(sc_Camera.clipPlanes.y+1.0)))-1.0)*l9_37.w;
l9_44=l9_45;
}
else
{
l9_44=l9_37;
}
l9_43=l9_44;
}
#else
{
l9_43=l9_37;
}
#endif
vec4 l9_46;
#if (sc_TAAEnabled)
{
vec2 l9_47=l9_43.xy+(sc_TAAJitterOffset*l9_43.w);
l9_46=vec4(l9_47.x,l9_47.y,l9_43.z,l9_43.w);
}
#else
{
l9_46=l9_43;
}
#endif
sc_SetClipPosition(l9_46);
}
#elif defined FRAGMENT_SHADER // #if defined VERTEX_SHADER
#if SC_RT_RECEIVER_MODE
#define sc_StereoRendering_Disabled 0
#define sc_StereoRendering_InstancedClipped 1
#define sc_StereoRendering_Multiview 2
#ifdef GL_ES
    #define SC_GLES_VERSION_20 2000
    #define SC_GLES_VERSION_30 3000
    #define SC_GLES_VERSION_31 3100
    #define SC_GLES_VERSION_32 3200
#endif
#ifdef VERTEX_SHADER
    #define scOutPos(clipPosition) gl_Position=clipPosition
    #define MAIN main
#endif
#ifdef SC_ENABLE_INSTANCED_RENDERING
    #ifndef sc_EnableInstancing
        #define sc_EnableInstancing 1
    #endif
#endif
#define mod(x,y) (x-y*floor((x+1e-6)/y))
#if defined(GL_ES)&&(__VERSION__<300)&&!defined(GL_OES_standard_derivatives)
#define dFdx(A) (A)
#define dFdy(A) (A)
#define fwidth(A) (A)
#endif
#if __VERSION__<300
#define isinf(x) (x!=0.0&&x*2.0==x ? true : false)
#define isnan(x) (x>0.0||x<0.0||x==0.0 ? false : true)
#define inverse(M) M
#endif
#ifdef sc_EnableFeatureLevelES3
    #ifdef sc_EnableStereoClipDistance
        #if defined(GL_APPLE_clip_distance)
            #extension GL_APPLE_clip_distance : require
        #elif defined(GL_EXT_clip_cull_distance)
            #extension GL_EXT_clip_cull_distance : require
        #else
            #error Clip distance is requested but not supported by this device.
        #endif
    #endif
#else
    #ifdef sc_EnableStereoClipDistance
        #error Clip distance is requested but not supported by this device.
    #endif
#endif
#ifdef sc_EnableFeatureLevelES3
    #ifdef VERTEX_SHADER
        #define attribute in
        #define varying out
    #endif
    #ifdef FRAGMENT_SHADER
        #define varying in
    #endif
    #define gl_FragColor sc_FragData0
    #define texture2D texture
    #define texture2DLod textureLod
    #define texture2DLodEXT textureLod
    #define textureCubeLodEXT textureLod
#endif
#if defined(sc_EnableMultiviewStereoRendering)
    #define sc_StereoRenderingMode sc_StereoRendering_Multiview
    #define sc_NumStereoViews 2
    #extension GL_OVR_multiview2 : require
    #ifdef VERTEX_SHADER
        #ifdef sc_EnableInstancingFallback
            #define sc_GlobalInstanceID (sc_FallbackInstanceID*2+gl_InstanceID)
        #else
            #define sc_GlobalInstanceID gl_InstanceID
        #endif
        #define sc_LocalInstanceID sc_GlobalInstanceID
        #define sc_StereoViewID int(gl_ViewID_OVR)
    #endif
#elif defined(sc_EnableInstancedClippedStereoRendering)
    #ifndef sc_EnableInstancing
        #error Instanced-clipped stereo rendering requires enabled instancing.
    #endif
    #ifndef sc_EnableStereoClipDistance
        #define sc_StereoRendering_IsClipDistanceEnabled 0
    #else
        #define sc_StereoRendering_IsClipDistanceEnabled 1
    #endif
    #define sc_StereoRenderingMode sc_StereoRendering_InstancedClipped
    #define sc_NumStereoClipPlanes 1
    #define sc_NumStereoViews 2
    #ifdef VERTEX_SHADER
        #ifdef sc_EnableInstancingFallback
            #define sc_GlobalInstanceID (sc_FallbackInstanceID*2+gl_InstanceID)
        #else
            #define sc_GlobalInstanceID gl_InstanceID
        #endif
        #ifdef sc_EnableFeatureLevelES3
            #define sc_LocalInstanceID (sc_GlobalInstanceID/2)
            #define sc_StereoViewID (sc_GlobalInstanceID%2)
        #else
            #define sc_LocalInstanceID int(sc_GlobalInstanceID/2.0)
            #define sc_StereoViewID int(mod(sc_GlobalInstanceID,2.0))
        #endif
    #endif
#else
    #define sc_StereoRenderingMode sc_StereoRendering_Disabled
#endif
#ifdef VERTEX_SHADER
    #ifdef sc_EnableInstancing
        #ifdef GL_ES
            #if defined(sc_EnableFeatureLevelES2)&&!defined(GL_EXT_draw_instanced)
                #define gl_InstanceID (0)
            #endif
        #else
            #if defined(sc_EnableFeatureLevelES2)&&!defined(GL_EXT_draw_instanced)&&!defined(GL_ARB_draw_instanced)&&!defined(GL_EXT_gpu_shader4)
                #define gl_InstanceID (0)
            #endif
        #endif
        #ifdef GL_ARB_draw_instanced
            #extension GL_ARB_draw_instanced : require
            #define gl_InstanceID gl_InstanceIDARB
        #endif
        #ifdef GL_EXT_draw_instanced
            #extension GL_EXT_draw_instanced : require
            #define gl_InstanceID gl_InstanceIDEXT
        #endif
        #ifndef sc_InstanceID
            #define sc_InstanceID gl_InstanceID
        #endif
        #ifndef sc_GlobalInstanceID
            #ifdef sc_EnableInstancingFallback
                #define sc_GlobalInstanceID (sc_FallbackInstanceID)
                #define sc_LocalInstanceID (sc_FallbackInstanceID)
            #else
                #define sc_GlobalInstanceID gl_InstanceID
                #define sc_LocalInstanceID gl_InstanceID
            #endif
        #endif
    #endif
#endif
#ifdef VERTEX_SHADER
    #if (__VERSION__<300)&&!defined(GL_EXT_gpu_shader4)
        #define gl_VertexID (0)
    #endif
#endif
#ifndef GL_ES
        #extension GL_EXT_gpu_shader4 : enable
    #extension GL_ARB_shader_texture_lod : enable
    #ifndef texture2DLodEXT
        #define texture2DLodEXT texture2DLod
    #endif
    #define precision
    #define lowp
    #define mediump
    #define highp
    #define sc_FragmentPrecision
#endif
#ifdef sc_EnableFeatureLevelES3
    #define sc_CanUseSampler2DArray 1
#endif
#if defined(sc_EnableFeatureLevelES2)&&defined(GL_ES)
    #ifdef GL_EXT_texture_array
        #extension GL_EXT_texture_array : require
        #define sc_CanUseSampler2DArray 1
    #else
        #define sc_CanUseSampler2DArray 0
    #endif
#endif
#ifdef GL_ES
    #ifdef sc_FramebufferFetch
        #if defined(GL_EXT_shader_framebuffer_fetch)
            #extension GL_EXT_shader_framebuffer_fetch : require
        #elif defined(GL_ARM_shader_framebuffer_fetch)
            #extension GL_ARM_shader_framebuffer_fetch : require
        #else
            #error Framebuffer fetch is requested but not supported by this device.
        #endif
    #endif
    #ifdef GL_FRAGMENT_PRECISION_HIGH
        #define sc_FragmentPrecision highp
    #else
        #define sc_FragmentPrecision mediump
    #endif
    #ifdef FRAGMENT_SHADER
        precision highp int;
        precision highp float;
    #endif
#endif
#ifdef VERTEX_SHADER
    #ifdef sc_EnableMultiviewStereoRendering
        layout(num_views=sc_NumStereoViews) in;
    #endif
#endif
#if __VERSION__>100
    #define SC_INT_FALLBACK_FLOAT int
    #define SC_INTERPOLATION_FLAT flat
    #define SC_INTERPOLATION_CENTROID centroid
#else
    #define SC_INT_FALLBACK_FLOAT float
    #define SC_INTERPOLATION_FLAT
    #define SC_INTERPOLATION_CENTROID
#endif
#ifndef sc_NumStereoViews
    #define sc_NumStereoViews 1
#endif
#ifndef sc_CanUseSampler2DArray
    #define sc_CanUseSampler2DArray 0
#endif
#if __VERSION__>=300
#define texture3D texture
#define textureCube texture
#define texture2DArray texture
#define texture2DLod textureLod
#define texture3DLod textureLod
#define texture2DLodEXT textureLod
#define texture3DLodEXT textureLod
#define textureCubeLod textureLod
#define textureCubeLodEXT textureLod
#define texture2DArrayLod textureLod
#define texture2DArrayLodEXT textureLod
#endif
    #ifndef sc_TextureRenderingLayout_Regular
        #define sc_TextureRenderingLayout_Regular 0
        #define sc_TextureRenderingLayout_StereoInstancedClipped 1
        #define sc_TextureRenderingLayout_StereoMultiview 2
    #endif
    #define depthToGlobal   depthScreenToViewSpace
    #define depthToLocal    depthViewToScreenSpace
    #ifndef quantizeUV
        #define quantizeUV sc_QuantizeUV
        #define sc_platformUVFlip sc_PlatformFlipV
        #define sc_PlatformFlipUV sc_PlatformFlipV
    #endif
    #ifndef sc_texture2DLod
        #define sc_texture2DLod sc_InternalTextureLevel
        #define sc_textureLod sc_InternalTextureLevel
        #define sc_textureBias sc_InternalTextureBiasOrLevel
        #define sc_texture sc_InternalTexture
    #endif
#if sc_ExporterVersion<224
#define MAIN main
#endif
struct ssGlobals
{
float gTimeElapsed;
float gTimeDelta;
float gTimeElapsedShifted;
vec2 N7_TransformedUV2;
vec2 N7_TransformedUV3;
vec3 BumpedNormal;
vec3 ViewDirWS;
vec3 PositionWS;
vec3 VertexNormal_WorldSpace;
vec3 VertexTangent_WorldSpace;
vec3 VertexBinormal_WorldSpace;
vec2 Surface_UVCoord0;
vec2 Surface_UVCoord1;
vec4 VertexColor;
vec2 gScreenCoord;
vec3 SurfacePosition_WorldSpace;
};
#ifndef sc_StereoRenderingMode
#define sc_StereoRenderingMode 0
#endif
#ifndef sc_BlendMode_AlphaTest
#define sc_BlendMode_AlphaTest 0
#elif sc_BlendMode_AlphaTest==1
#undef sc_BlendMode_AlphaTest
#define sc_BlendMode_AlphaTest 1
#endif
struct sc_Camera_t
{
vec3 position;
float aspect;
vec2 clipPlanes;
};
#ifndef SC_DEVICE_CLASS
#define SC_DEVICE_CLASS -1
#endif
#ifndef ENABLE_STIPPLE_PATTERN_TEST
#define ENABLE_STIPPLE_PATTERN_TEST 0
#elif ENABLE_STIPPLE_PATTERN_TEST==1
#undef ENABLE_STIPPLE_PATTERN_TEST
#define ENABLE_STIPPLE_PATTERN_TEST 1
#endif
#ifndef baseTexHasSwappedViews
#define baseTexHasSwappedViews 0
#elif baseTexHasSwappedViews==1
#undef baseTexHasSwappedViews
#define baseTexHasSwappedViews 1
#endif
#ifndef baseTexLayout
#define baseTexLayout 0
#endif
#ifndef opacityTexHasSwappedViews
#define opacityTexHasSwappedViews 0
#elif opacityTexHasSwappedViews==1
#undef opacityTexHasSwappedViews
#define opacityTexHasSwappedViews 1
#endif
#ifndef opacityTexLayout
#define opacityTexLayout 0
#endif
#ifndef normalTexHasSwappedViews
#define normalTexHasSwappedViews 0
#elif normalTexHasSwappedViews==1
#undef normalTexHasSwappedViews
#define normalTexHasSwappedViews 1
#endif
#ifndef normalTexLayout
#define normalTexLayout 0
#endif
#ifndef detailNormalTexHasSwappedViews
#define detailNormalTexHasSwappedViews 0
#elif detailNormalTexHasSwappedViews==1
#undef detailNormalTexHasSwappedViews
#define detailNormalTexHasSwappedViews 1
#endif
#ifndef detailNormalTexLayout
#define detailNormalTexLayout 0
#endif
#ifndef emissiveTexHasSwappedViews
#define emissiveTexHasSwappedViews 0
#elif emissiveTexHasSwappedViews==1
#undef emissiveTexHasSwappedViews
#define emissiveTexHasSwappedViews 1
#endif
#ifndef emissiveTexLayout
#define emissiveTexLayout 0
#endif
#ifndef reflectionTexHasSwappedViews
#define reflectionTexHasSwappedViews 0
#elif reflectionTexHasSwappedViews==1
#undef reflectionTexHasSwappedViews
#define reflectionTexHasSwappedViews 1
#endif
#ifndef reflectionTexLayout
#define reflectionTexLayout 0
#endif
#ifndef reflectionModulationTexHasSwappedViews
#define reflectionModulationTexHasSwappedViews 0
#elif reflectionModulationTexHasSwappedViews==1
#undef reflectionModulationTexHasSwappedViews
#define reflectionModulationTexHasSwappedViews 1
#endif
#ifndef reflectionModulationTexLayout
#define reflectionModulationTexLayout 0
#endif
#ifndef rimColorTexHasSwappedViews
#define rimColorTexHasSwappedViews 0
#elif rimColorTexHasSwappedViews==1
#undef rimColorTexHasSwappedViews
#define rimColorTexHasSwappedViews 1
#endif
#ifndef rimColorTexLayout
#define rimColorTexLayout 0
#endif
#ifndef materialParamsTexHasSwappedViews
#define materialParamsTexHasSwappedViews 0
#elif materialParamsTexHasSwappedViews==1
#undef materialParamsTexHasSwappedViews
#define materialParamsTexHasSwappedViews 1
#endif
#ifndef materialParamsTexLayout
#define materialParamsTexLayout 0
#endif
#ifndef NODE_38_DROPLIST_ITEM
#define NODE_38_DROPLIST_ITEM 0
#endif
#ifndef ENABLE_BASE_TEX
#define ENABLE_BASE_TEX 0
#elif ENABLE_BASE_TEX==1
#undef ENABLE_BASE_TEX
#define ENABLE_BASE_TEX 1
#endif
#ifndef SC_USE_UV_TRANSFORM_baseTex
#define SC_USE_UV_TRANSFORM_baseTex 0
#elif SC_USE_UV_TRANSFORM_baseTex==1
#undef SC_USE_UV_TRANSFORM_baseTex
#define SC_USE_UV_TRANSFORM_baseTex 1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_U_baseTex
#define SC_SOFTWARE_WRAP_MODE_U_baseTex -1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_V_baseTex
#define SC_SOFTWARE_WRAP_MODE_V_baseTex -1
#endif
#ifndef SC_USE_UV_MIN_MAX_baseTex
#define SC_USE_UV_MIN_MAX_baseTex 0
#elif SC_USE_UV_MIN_MAX_baseTex==1
#undef SC_USE_UV_MIN_MAX_baseTex
#define SC_USE_UV_MIN_MAX_baseTex 1
#endif
#ifndef SC_USE_CLAMP_TO_BORDER_baseTex
#define SC_USE_CLAMP_TO_BORDER_baseTex 0
#elif SC_USE_CLAMP_TO_BORDER_baseTex==1
#undef SC_USE_CLAMP_TO_BORDER_baseTex
#define SC_USE_CLAMP_TO_BORDER_baseTex 1
#endif
#ifndef NODE_27_DROPLIST_ITEM
#define NODE_27_DROPLIST_ITEM 0
#endif
#ifndef ENABLE_RECOLOR
#define ENABLE_RECOLOR 0
#elif ENABLE_RECOLOR==1
#undef ENABLE_RECOLOR
#define ENABLE_RECOLOR 1
#endif
#ifndef ENABLE_OPACITY_TEX
#define ENABLE_OPACITY_TEX 0
#elif ENABLE_OPACITY_TEX==1
#undef ENABLE_OPACITY_TEX
#define ENABLE_OPACITY_TEX 1
#endif
#ifndef SC_USE_UV_TRANSFORM_opacityTex
#define SC_USE_UV_TRANSFORM_opacityTex 0
#elif SC_USE_UV_TRANSFORM_opacityTex==1
#undef SC_USE_UV_TRANSFORM_opacityTex
#define SC_USE_UV_TRANSFORM_opacityTex 1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_U_opacityTex
#define SC_SOFTWARE_WRAP_MODE_U_opacityTex -1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_V_opacityTex
#define SC_SOFTWARE_WRAP_MODE_V_opacityTex -1
#endif
#ifndef SC_USE_UV_MIN_MAX_opacityTex
#define SC_USE_UV_MIN_MAX_opacityTex 0
#elif SC_USE_UV_MIN_MAX_opacityTex==1
#undef SC_USE_UV_MIN_MAX_opacityTex
#define SC_USE_UV_MIN_MAX_opacityTex 1
#endif
#ifndef SC_USE_CLAMP_TO_BORDER_opacityTex
#define SC_USE_CLAMP_TO_BORDER_opacityTex 0
#elif SC_USE_CLAMP_TO_BORDER_opacityTex==1
#undef SC_USE_CLAMP_TO_BORDER_opacityTex
#define SC_USE_CLAMP_TO_BORDER_opacityTex 1
#endif
#ifndef NODE_69_DROPLIST_ITEM
#define NODE_69_DROPLIST_ITEM 0
#endif
#ifndef ENABLE_NORMALMAP
#define ENABLE_NORMALMAP 0
#elif ENABLE_NORMALMAP==1
#undef ENABLE_NORMALMAP
#define ENABLE_NORMALMAP 1
#endif
#ifndef SC_USE_UV_TRANSFORM_normalTex
#define SC_USE_UV_TRANSFORM_normalTex 0
#elif SC_USE_UV_TRANSFORM_normalTex==1
#undef SC_USE_UV_TRANSFORM_normalTex
#define SC_USE_UV_TRANSFORM_normalTex 1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_U_normalTex
#define SC_SOFTWARE_WRAP_MODE_U_normalTex -1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_V_normalTex
#define SC_SOFTWARE_WRAP_MODE_V_normalTex -1
#endif
#ifndef SC_USE_UV_MIN_MAX_normalTex
#define SC_USE_UV_MIN_MAX_normalTex 0
#elif SC_USE_UV_MIN_MAX_normalTex==1
#undef SC_USE_UV_MIN_MAX_normalTex
#define SC_USE_UV_MIN_MAX_normalTex 1
#endif
#ifndef SC_USE_CLAMP_TO_BORDER_normalTex
#define SC_USE_CLAMP_TO_BORDER_normalTex 0
#elif SC_USE_CLAMP_TO_BORDER_normalTex==1
#undef SC_USE_CLAMP_TO_BORDER_normalTex
#define SC_USE_CLAMP_TO_BORDER_normalTex 1
#endif
#ifndef NODE_181_DROPLIST_ITEM
#define NODE_181_DROPLIST_ITEM 0
#endif
#ifndef ENABLE_DETAIL_NORMAL
#define ENABLE_DETAIL_NORMAL 0
#elif ENABLE_DETAIL_NORMAL==1
#undef ENABLE_DETAIL_NORMAL
#define ENABLE_DETAIL_NORMAL 1
#endif
#ifndef SC_USE_UV_TRANSFORM_detailNormalTex
#define SC_USE_UV_TRANSFORM_detailNormalTex 0
#elif SC_USE_UV_TRANSFORM_detailNormalTex==1
#undef SC_USE_UV_TRANSFORM_detailNormalTex
#define SC_USE_UV_TRANSFORM_detailNormalTex 1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_U_detailNormalTex
#define SC_SOFTWARE_WRAP_MODE_U_detailNormalTex -1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_V_detailNormalTex
#define SC_SOFTWARE_WRAP_MODE_V_detailNormalTex -1
#endif
#ifndef SC_USE_UV_MIN_MAX_detailNormalTex
#define SC_USE_UV_MIN_MAX_detailNormalTex 0
#elif SC_USE_UV_MIN_MAX_detailNormalTex==1
#undef SC_USE_UV_MIN_MAX_detailNormalTex
#define SC_USE_UV_MIN_MAX_detailNormalTex 1
#endif
#ifndef SC_USE_CLAMP_TO_BORDER_detailNormalTex
#define SC_USE_CLAMP_TO_BORDER_detailNormalTex 0
#elif SC_USE_CLAMP_TO_BORDER_detailNormalTex==1
#undef SC_USE_CLAMP_TO_BORDER_detailNormalTex
#define SC_USE_CLAMP_TO_BORDER_detailNormalTex 1
#endif
#ifndef NODE_184_DROPLIST_ITEM
#define NODE_184_DROPLIST_ITEM 0
#endif
#ifndef ENABLE_EMISSIVE
#define ENABLE_EMISSIVE 0
#elif ENABLE_EMISSIVE==1
#undef ENABLE_EMISSIVE
#define ENABLE_EMISSIVE 1
#endif
#ifndef SC_USE_UV_TRANSFORM_emissiveTex
#define SC_USE_UV_TRANSFORM_emissiveTex 0
#elif SC_USE_UV_TRANSFORM_emissiveTex==1
#undef SC_USE_UV_TRANSFORM_emissiveTex
#define SC_USE_UV_TRANSFORM_emissiveTex 1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_U_emissiveTex
#define SC_SOFTWARE_WRAP_MODE_U_emissiveTex -1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_V_emissiveTex
#define SC_SOFTWARE_WRAP_MODE_V_emissiveTex -1
#endif
#ifndef SC_USE_UV_MIN_MAX_emissiveTex
#define SC_USE_UV_MIN_MAX_emissiveTex 0
#elif SC_USE_UV_MIN_MAX_emissiveTex==1
#undef SC_USE_UV_MIN_MAX_emissiveTex
#define SC_USE_UV_MIN_MAX_emissiveTex 1
#endif
#ifndef SC_USE_CLAMP_TO_BORDER_emissiveTex
#define SC_USE_CLAMP_TO_BORDER_emissiveTex 0
#elif SC_USE_CLAMP_TO_BORDER_emissiveTex==1
#undef SC_USE_CLAMP_TO_BORDER_emissiveTex
#define SC_USE_CLAMP_TO_BORDER_emissiveTex 1
#endif
#ifndef NODE_76_DROPLIST_ITEM
#define NODE_76_DROPLIST_ITEM 0
#endif
#ifndef ENABLE_SIMPLE_REFLECTION
#define ENABLE_SIMPLE_REFLECTION 0
#elif ENABLE_SIMPLE_REFLECTION==1
#undef ENABLE_SIMPLE_REFLECTION
#define ENABLE_SIMPLE_REFLECTION 1
#endif
#ifndef SC_USE_UV_TRANSFORM_reflectionTex
#define SC_USE_UV_TRANSFORM_reflectionTex 0
#elif SC_USE_UV_TRANSFORM_reflectionTex==1
#undef SC_USE_UV_TRANSFORM_reflectionTex
#define SC_USE_UV_TRANSFORM_reflectionTex 1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_U_reflectionTex
#define SC_SOFTWARE_WRAP_MODE_U_reflectionTex -1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_V_reflectionTex
#define SC_SOFTWARE_WRAP_MODE_V_reflectionTex -1
#endif
#ifndef SC_USE_UV_MIN_MAX_reflectionTex
#define SC_USE_UV_MIN_MAX_reflectionTex 0
#elif SC_USE_UV_MIN_MAX_reflectionTex==1
#undef SC_USE_UV_MIN_MAX_reflectionTex
#define SC_USE_UV_MIN_MAX_reflectionTex 1
#endif
#ifndef SC_USE_CLAMP_TO_BORDER_reflectionTex
#define SC_USE_CLAMP_TO_BORDER_reflectionTex 0
#elif SC_USE_CLAMP_TO_BORDER_reflectionTex==1
#undef SC_USE_CLAMP_TO_BORDER_reflectionTex
#define SC_USE_CLAMP_TO_BORDER_reflectionTex 1
#endif
#ifndef Tweak_N177
#define Tweak_N177 0
#elif Tweak_N177==1
#undef Tweak_N177
#define Tweak_N177 1
#endif
#ifndef NODE_228_DROPLIST_ITEM
#define NODE_228_DROPLIST_ITEM 0
#endif
#ifndef SC_USE_UV_TRANSFORM_reflectionModulationTex
#define SC_USE_UV_TRANSFORM_reflectionModulationTex 0
#elif SC_USE_UV_TRANSFORM_reflectionModulationTex==1
#undef SC_USE_UV_TRANSFORM_reflectionModulationTex
#define SC_USE_UV_TRANSFORM_reflectionModulationTex 1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_U_reflectionModulationTex
#define SC_SOFTWARE_WRAP_MODE_U_reflectionModulationTex -1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_V_reflectionModulationTex
#define SC_SOFTWARE_WRAP_MODE_V_reflectionModulationTex -1
#endif
#ifndef SC_USE_UV_MIN_MAX_reflectionModulationTex
#define SC_USE_UV_MIN_MAX_reflectionModulationTex 0
#elif SC_USE_UV_MIN_MAX_reflectionModulationTex==1
#undef SC_USE_UV_MIN_MAX_reflectionModulationTex
#define SC_USE_UV_MIN_MAX_reflectionModulationTex 1
#endif
#ifndef SC_USE_CLAMP_TO_BORDER_reflectionModulationTex
#define SC_USE_CLAMP_TO_BORDER_reflectionModulationTex 0
#elif SC_USE_CLAMP_TO_BORDER_reflectionModulationTex==1
#undef SC_USE_CLAMP_TO_BORDER_reflectionModulationTex
#define SC_USE_CLAMP_TO_BORDER_reflectionModulationTex 1
#endif
#ifndef ENABLE_RIM_HIGHLIGHT
#define ENABLE_RIM_HIGHLIGHT 0
#elif ENABLE_RIM_HIGHLIGHT==1
#undef ENABLE_RIM_HIGHLIGHT
#define ENABLE_RIM_HIGHLIGHT 1
#endif
#ifndef Tweak_N216
#define Tweak_N216 0
#elif Tweak_N216==1
#undef Tweak_N216
#define Tweak_N216 1
#endif
#ifndef ENABLE_RIM_INVERT
#define ENABLE_RIM_INVERT 0
#elif ENABLE_RIM_INVERT==1
#undef ENABLE_RIM_INVERT
#define ENABLE_RIM_INVERT 1
#endif
#ifndef SC_USE_UV_TRANSFORM_rimColorTex
#define SC_USE_UV_TRANSFORM_rimColorTex 0
#elif SC_USE_UV_TRANSFORM_rimColorTex==1
#undef SC_USE_UV_TRANSFORM_rimColorTex
#define SC_USE_UV_TRANSFORM_rimColorTex 1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_U_rimColorTex
#define SC_SOFTWARE_WRAP_MODE_U_rimColorTex -1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_V_rimColorTex
#define SC_SOFTWARE_WRAP_MODE_V_rimColorTex -1
#endif
#ifndef SC_USE_UV_MIN_MAX_rimColorTex
#define SC_USE_UV_MIN_MAX_rimColorTex 0
#elif SC_USE_UV_MIN_MAX_rimColorTex==1
#undef SC_USE_UV_MIN_MAX_rimColorTex
#define SC_USE_UV_MIN_MAX_rimColorTex 1
#endif
#ifndef SC_USE_CLAMP_TO_BORDER_rimColorTex
#define SC_USE_CLAMP_TO_BORDER_rimColorTex 0
#elif SC_USE_CLAMP_TO_BORDER_rimColorTex==1
#undef SC_USE_CLAMP_TO_BORDER_rimColorTex
#define SC_USE_CLAMP_TO_BORDER_rimColorTex 1
#endif
#ifndef NODE_315_DROPLIST_ITEM
#define NODE_315_DROPLIST_ITEM 0
#endif
#ifndef ENABLE_MATERIAL_PARAM_TEX
#define ENABLE_MATERIAL_PARAM_TEX 0
#elif ENABLE_MATERIAL_PARAM_TEX==1
#undef ENABLE_MATERIAL_PARAM_TEX
#define ENABLE_MATERIAL_PARAM_TEX 1
#endif
#ifndef SC_USE_UV_TRANSFORM_materialParamsTex
#define SC_USE_UV_TRANSFORM_materialParamsTex 0
#elif SC_USE_UV_TRANSFORM_materialParamsTex==1
#undef SC_USE_UV_TRANSFORM_materialParamsTex
#define SC_USE_UV_TRANSFORM_materialParamsTex 1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_U_materialParamsTex
#define SC_SOFTWARE_WRAP_MODE_U_materialParamsTex -1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_V_materialParamsTex
#define SC_SOFTWARE_WRAP_MODE_V_materialParamsTex -1
#endif
#ifndef SC_USE_UV_MIN_MAX_materialParamsTex
#define SC_USE_UV_MIN_MAX_materialParamsTex 0
#elif SC_USE_UV_MIN_MAX_materialParamsTex==1
#undef SC_USE_UV_MIN_MAX_materialParamsTex
#define SC_USE_UV_MIN_MAX_materialParamsTex 1
#endif
#ifndef SC_USE_CLAMP_TO_BORDER_materialParamsTex
#define SC_USE_CLAMP_TO_BORDER_materialParamsTex 0
#elif SC_USE_CLAMP_TO_BORDER_materialParamsTex==1
#undef SC_USE_CLAMP_TO_BORDER_materialParamsTex
#define SC_USE_CLAMP_TO_BORDER_materialParamsTex 1
#endif
#ifndef NODE_221_DROPLIST_ITEM
#define NODE_221_DROPLIST_ITEM 0
#endif
#ifndef ENABLE_UV2
#define ENABLE_UV2 0
#elif ENABLE_UV2==1
#undef ENABLE_UV2
#define ENABLE_UV2 1
#endif
#ifndef NODE_13_DROPLIST_ITEM
#define NODE_13_DROPLIST_ITEM 0
#endif
#ifndef uv2EnableAnimation
#define uv2EnableAnimation 0
#elif uv2EnableAnimation==1
#undef uv2EnableAnimation
#define uv2EnableAnimation 1
#endif
#ifndef ENABLE_UV3
#define ENABLE_UV3 0
#elif ENABLE_UV3==1
#undef ENABLE_UV3
#define ENABLE_UV3 1
#endif
#ifndef NODE_49_DROPLIST_ITEM
#define NODE_49_DROPLIST_ITEM 0
#endif
#ifndef uv3EnableAnimation
#define uv3EnableAnimation 0
#elif uv3EnableAnimation==1
#undef uv3EnableAnimation
#define uv3EnableAnimation 1
#endif
#ifndef sc_ProjectiveShadowsCaster
#define sc_ProjectiveShadowsCaster 0
#elif sc_ProjectiveShadowsCaster==1
#undef sc_ProjectiveShadowsCaster
#define sc_ProjectiveShadowsCaster 1
#endif
#ifndef sc_DepthOnly
#define sc_DepthOnly 0
#elif sc_DepthOnly==1
#undef sc_DepthOnly
#define sc_DepthOnly 1
#endif
layout(binding=0,std430) readonly buffer layoutIndices
{
uint _Triangles[1];
} layoutIndices_obj;
layout(binding=1,std430) readonly buffer layoutVertices
{
float _Vertices[1];
} layoutVertices_obj;
layout(binding=2,std430) readonly buffer layoutVerticesPN
{
float _VerticesPN[1];
} layoutVerticesPN_obj;
uniform vec4 sc_CurrentRenderTargetDims;
uniform sc_Camera_t sc_Camera;
uniform vec3 OriginNormalizationOffset;
uniform vec3 OriginNormalizationScale;
uniform float receiver_mask;
uniform int receiverId;
uniform float alphaTestThreshold;
uniform mat3 baseTexTransform;
uniform vec4 baseTexUvMinMax;
uniform vec4 baseTexBorderColor;
uniform mat3 opacityTexTransform;
uniform vec4 opacityTexUvMinMax;
uniform vec4 opacityTexBorderColor;
uniform mat3 normalTexTransform;
uniform vec4 normalTexUvMinMax;
uniform vec4 normalTexBorderColor;
uniform mat3 detailNormalTexTransform;
uniform vec4 detailNormalTexUvMinMax;
uniform vec4 detailNormalTexBorderColor;
uniform mat3 emissiveTexTransform;
uniform vec4 emissiveTexUvMinMax;
uniform vec4 emissiveTexBorderColor;
uniform mat3 reflectionTexTransform;
uniform vec4 reflectionTexUvMinMax;
uniform vec4 reflectionTexBorderColor;
uniform mat3 reflectionModulationTexTransform;
uniform vec4 reflectionModulationTexUvMinMax;
uniform vec4 reflectionModulationTexBorderColor;
uniform mat3 rimColorTexTransform;
uniform vec4 rimColorTexUvMinMax;
uniform vec4 rimColorTexBorderColor;
uniform mat3 materialParamsTexTransform;
uniform vec4 materialParamsTexUvMinMax;
uniform vec4 materialParamsTexBorderColor;
uniform vec4 baseColor;
uniform vec3 emissiveColor;
uniform float emissiveIntensity;
uniform float reflectionIntensity;
uniform vec3 rimColor;
uniform float rimIntensity;
uniform float rimExponent;
uniform float roughness;
uniform vec2 uv2Scale;
uniform vec2 uv2Offset;
uniform vec2 uv3Scale;
uniform vec2 uv3Offset;
uniform vec4 sc_Time;
uniform sampler2D baseTex;
uniform sampler2DArray baseTexArrSC;
uniform sampler2D opacityTex;
uniform sampler2DArray opacityTexArrSC;
uniform sampler2D normalTex;
uniform sampler2DArray normalTexArrSC;
uniform sampler2D detailNormalTex;
uniform sampler2DArray detailNormalTexArrSC;
uniform sampler2D emissiveTex;
uniform sampler2DArray emissiveTexArrSC;
uniform sampler2D reflectionTex;
uniform sampler2DArray reflectionTexArrSC;
uniform sampler2D reflectionModulationTex;
uniform sampler2DArray reflectionModulationTexArrSC;
uniform sampler2D rimColorTex;
uniform sampler2DArray rimColorTexArrSC;
uniform sampler2D materialParamsTex;
uniform sampler2DArray materialParamsTexArrSC;
flat in int varStereoViewID;
in vec2 varShadowTex;
in float varClipDistance;
layout(location=0) out uvec4 position_and_mask;
layout(location=1) out uvec4 normal_and_more;
in vec3 varPos;
in vec3 varNormal;
in vec4 varTangent;
in vec4 varPackedTex;
in vec4 varColor;
in vec4 varScreenPos;
in vec2 varScreenTexturePos;
in float varViewSpaceDepth;
in vec4 PreviewVertexColor;
in float PreviewVertexSaved;
bool N7_EnableUV2;
ssGlobals tempGlobals;
int sc_GetStereoViewIndex()
{
int l9_0;
#if (sc_StereoRenderingMode==0)
{
l9_0=0;
}
#else
{
l9_0=varStereoViewID;
}
#endif
return l9_0;
}
vec2 N7_gettransformUV(int pickUV,vec2 scale,vec2 offset,bool animated,bool enabled)
{
vec2 l9_0=tempGlobals.Surface_UVCoord0;
vec2 l9_1;
if (enabled==N7_EnableUV2)
{
vec2 l9_2;
if (pickUV==0)
{
l9_2=tempGlobals.Surface_UVCoord0;
}
else
{
l9_2=l9_0;
}
vec2 l9_3;
if (pickUV==1)
{
l9_3=tempGlobals.Surface_UVCoord1;
}
else
{
l9_3=l9_2;
}
vec2 l9_4;
if (pickUV==2)
{
l9_4=tempGlobals.gScreenCoord;
}
else
{
l9_4=l9_3;
}
l9_1=l9_4;
}
else
{
vec2 l9_5;
if (pickUV==0)
{
l9_5=tempGlobals.Surface_UVCoord0;
}
else
{
l9_5=l9_0;
}
vec2 l9_6;
if (pickUV==1)
{
l9_6=tempGlobals.Surface_UVCoord1;
}
else
{
l9_6=l9_5;
}
vec2 l9_7;
if (pickUV==2)
{
l9_7=tempGlobals.gScreenCoord;
}
else
{
l9_7=l9_6;
}
vec2 l9_8;
if (pickUV==3)
{
l9_8=tempGlobals.N7_TransformedUV2;
}
else
{
l9_8=l9_7;
}
l9_1=l9_8;
}
vec2 l9_9=scale;
vec2 l9_10=l9_1*l9_9;
vec2 l9_11=offset;
vec2 l9_12=l9_10+l9_11;
vec2 l9_13;
if (animated)
{
l9_13=l9_12+(offset*tempGlobals.gTimeElapsed);
}
else
{
l9_13=l9_12;
}
return l9_13;
}
vec2 N7_getUV(int pickUV)
{
vec2 l9_0=tempGlobals.Surface_UVCoord0;
vec2 l9_1;
if (pickUV==0)
{
l9_1=tempGlobals.Surface_UVCoord0;
}
else
{
l9_1=l9_0;
}
vec2 l9_2;
if (pickUV==1)
{
l9_2=tempGlobals.Surface_UVCoord1;
}
else
{
l9_2=l9_1;
}
vec2 l9_3;
if (pickUV==2)
{
l9_3=tempGlobals.N7_TransformedUV2;
}
else
{
l9_3=l9_2;
}
vec2 l9_4;
if (pickUV==3)
{
l9_4=tempGlobals.N7_TransformedUV3;
}
else
{
l9_4=l9_3;
}
return l9_4;
}
int baseTexGetStereoViewIndex()
{
int l9_0;
#if (baseTexHasSwappedViews)
{
l9_0=1-sc_GetStereoViewIndex();
}
#else
{
l9_0=sc_GetStereoViewIndex();
}
#endif
return l9_0;
}
void sc_SoftwareWrapEarly(inout float uv,int softwareWrapMode)
{
if (softwareWrapMode==1)
{
uv=fract(uv);
}
else
{
if (softwareWrapMode==2)
{
float l9_0=fract(uv);
uv=mix(l9_0,1.0-l9_0,clamp(step(0.25,fract((uv-l9_0)*0.5)),0.0,1.0));
}
}
}
void sc_ClampUV(inout float value,float minValue,float maxValue,bool useClampToBorder,inout float clampToBorderFactor)
{
float l9_0=clamp(value,minValue,maxValue);
float l9_1=step(abs(value-l9_0),9.9999997e-06);
clampToBorderFactor*=(l9_1+((1.0-float(useClampToBorder))*(1.0-l9_1)));
value=l9_0;
}
vec2 sc_TransformUV(vec2 uv,bool useUvTransform,mat3 uvTransform)
{
if (useUvTransform)
{
uv=vec2((uvTransform*vec3(uv,1.0)).xy);
}
return uv;
}
void sc_SoftwareWrapLate(inout float uv,int softwareWrapMode,bool useClampToBorder,inout float clampToBorderFactor)
{
if ((softwareWrapMode==0)||(softwareWrapMode==3))
{
sc_ClampUV(uv,0.0,1.0,useClampToBorder,clampToBorderFactor);
}
}
vec3 sc_SamplingCoordsViewToGlobal(vec2 uv,int renderingLayout,int viewIndex)
{
vec3 l9_0;
if (renderingLayout==0)
{
l9_0=vec3(uv,0.0);
}
else
{
vec3 l9_1;
if (renderingLayout==1)
{
l9_1=vec3(uv.x,(uv.y*0.5)+(0.5-(float(viewIndex)*0.5)),0.0);
}
else
{
l9_1=vec3(uv,float(viewIndex));
}
l9_0=l9_1;
}
return l9_0;
}
int opacityTexGetStereoViewIndex()
{
int l9_0;
#if (opacityTexHasSwappedViews)
{
l9_0=1-sc_GetStereoViewIndex();
}
#else
{
l9_0=sc_GetStereoViewIndex();
}
#endif
return l9_0;
}
int normalTexGetStereoViewIndex()
{
int l9_0;
#if (normalTexHasSwappedViews)
{
l9_0=1-sc_GetStereoViewIndex();
}
#else
{
l9_0=sc_GetStereoViewIndex();
}
#endif
return l9_0;
}
int detailNormalTexGetStereoViewIndex()
{
int l9_0;
#if (detailNormalTexHasSwappedViews)
{
l9_0=1-sc_GetStereoViewIndex();
}
#else
{
l9_0=sc_GetStereoViewIndex();
}
#endif
return l9_0;
}
int emissiveTexGetStereoViewIndex()
{
int l9_0;
#if (emissiveTexHasSwappedViews)
{
l9_0=1-sc_GetStereoViewIndex();
}
#else
{
l9_0=sc_GetStereoViewIndex();
}
#endif
return l9_0;
}
vec3 ssPow(vec3 A,vec3 B)
{
float l9_0;
if (A.x<=0.0)
{
l9_0=0.0;
}
else
{
l9_0=pow(A.x,B.x);
}
float l9_1;
if (A.y<=0.0)
{
l9_1=0.0;
}
else
{
l9_1=pow(A.y,B.y);
}
float l9_2;
if (A.z<=0.0)
{
l9_2=0.0;
}
else
{
l9_2=pow(A.z,B.z);
}
return vec3(l9_0,l9_1,l9_2);
}
int reflectionTexGetStereoViewIndex()
{
int l9_0;
#if (reflectionTexHasSwappedViews)
{
l9_0=1-sc_GetStereoViewIndex();
}
#else
{
l9_0=sc_GetStereoViewIndex();
}
#endif
return l9_0;
}
int reflectionModulationTexGetStereoViewIndex()
{
int l9_0;
#if (reflectionModulationTexHasSwappedViews)
{
l9_0=1-sc_GetStereoViewIndex();
}
#else
{
l9_0=sc_GetStereoViewIndex();
}
#endif
return l9_0;
}
vec3 ssSRGB_to_Linear(vec3 value)
{
vec3 l9_0;
#if (SC_DEVICE_CLASS>=2)
{
l9_0=vec3(pow(value.x,2.2),pow(value.y,2.2),pow(value.z,2.2));
}
#else
{
l9_0=value*value;
}
#endif
return l9_0;
}
int rimColorTexGetStereoViewIndex()
{
int l9_0;
#if (rimColorTexHasSwappedViews)
{
l9_0=1-sc_GetStereoViewIndex();
}
#else
{
l9_0=sc_GetStereoViewIndex();
}
#endif
return l9_0;
}
int materialParamsTexGetStereoViewIndex()
{
int l9_0;
#if (materialParamsTexHasSwappedViews)
{
l9_0=1-sc_GetStereoViewIndex();
}
#else
{
l9_0=sc_GetStereoViewIndex();
}
#endif
return l9_0;
}
void main()
{
N7_EnableUV2=false;
#if (sc_DepthOnly)
{
return;
}
#endif
vec3 l9_0=normalize(varNormal);
vec3 l9_1=normalize(varTangent.xyz);
vec2 l9_2=gl_FragCoord.xy*sc_CurrentRenderTargetDims.zw;
vec2 l9_3;
#if (sc_StereoRenderingMode==1)
{
vec3 l9_4=vec3(l9_2,0.0);
l9_4.y=((2.0*l9_2.y)+float(sc_GetStereoViewIndex()))-1.0;
l9_3=l9_4.xy;
}
#else
{
l9_3=l9_2;
}
#endif
vec3 l9_5=normalize(sc_Camera.position-varPos);
tempGlobals=ssGlobals(sc_Time.x,sc_Time.y,0.0,vec2(0.0),vec2(0.0),vec3(0.0),l9_5,varPos,l9_0,l9_1,cross(l9_0,l9_1)*varTangent.w,varPackedTex.xy,varPackedTex.zw,varColor,l9_3,varPos);
N7_EnableUV2=(int(ENABLE_UV2)!=0);
tempGlobals.N7_TransformedUV2=N7_gettransformUV(NODE_13_DROPLIST_ITEM,uv2Scale,uv2Offset,(int(uv2EnableAnimation)!=0),N7_EnableUV2);
tempGlobals.N7_TransformedUV3=N7_gettransformUV(NODE_49_DROPLIST_ITEM,uv3Scale,uv3Offset,(int(uv3EnableAnimation)!=0),(int(ENABLE_UV3)!=0));
vec4 l9_6;
#if (ENABLE_BASE_TEX)
{
vec2 l9_7=N7_getUV(NODE_27_DROPLIST_ITEM);
vec4 l9_8;
#if (baseTexLayout==2)
{
bool l9_9=(int(SC_USE_CLAMP_TO_BORDER_baseTex)!=0)&&(!(int(SC_USE_UV_MIN_MAX_baseTex)!=0));
float l9_10=l9_7.x;
sc_SoftwareWrapEarly(l9_10,ivec2(SC_SOFTWARE_WRAP_MODE_U_baseTex,SC_SOFTWARE_WRAP_MODE_V_baseTex).x);
float l9_11=l9_10;
float l9_12=l9_7.y;
sc_SoftwareWrapEarly(l9_12,ivec2(SC_SOFTWARE_WRAP_MODE_U_baseTex,SC_SOFTWARE_WRAP_MODE_V_baseTex).y);
float l9_13=l9_12;
vec2 l9_14;
float l9_15;
#if (SC_USE_UV_MIN_MAX_baseTex)
{
bool l9_16;
#if (SC_USE_CLAMP_TO_BORDER_baseTex)
{
l9_16=ivec2(SC_SOFTWARE_WRAP_MODE_U_baseTex,SC_SOFTWARE_WRAP_MODE_V_baseTex).x==3;
}
#else
{
l9_16=(int(SC_USE_CLAMP_TO_BORDER_baseTex)!=0);
}
#endif
float l9_17=l9_11;
float l9_18=1.0;
sc_ClampUV(l9_17,baseTexUvMinMax.x,baseTexUvMinMax.z,l9_16,l9_18);
float l9_19=l9_17;
float l9_20=l9_18;
bool l9_21;
#if (SC_USE_CLAMP_TO_BORDER_baseTex)
{
l9_21=ivec2(SC_SOFTWARE_WRAP_MODE_U_baseTex,SC_SOFTWARE_WRAP_MODE_V_baseTex).y==3;
}
#else
{
l9_21=(int(SC_USE_CLAMP_TO_BORDER_baseTex)!=0);
}
#endif
float l9_22=l9_13;
float l9_23=l9_20;
sc_ClampUV(l9_22,baseTexUvMinMax.y,baseTexUvMinMax.w,l9_21,l9_23);
l9_15=l9_23;
l9_14=vec2(l9_19,l9_22);
}
#else
{
l9_15=1.0;
l9_14=vec2(l9_11,l9_13);
}
#endif
vec2 l9_24=sc_TransformUV(l9_14,(int(SC_USE_UV_TRANSFORM_baseTex)!=0),baseTexTransform);
float l9_25=l9_24.x;
float l9_26=l9_15;
sc_SoftwareWrapLate(l9_25,ivec2(SC_SOFTWARE_WRAP_MODE_U_baseTex,SC_SOFTWARE_WRAP_MODE_V_baseTex).x,l9_9,l9_26);
float l9_27=l9_24.y;
float l9_28=l9_26;
sc_SoftwareWrapLate(l9_27,ivec2(SC_SOFTWARE_WRAP_MODE_U_baseTex,SC_SOFTWARE_WRAP_MODE_V_baseTex).y,l9_9,l9_28);
float l9_29=l9_28;
vec3 l9_30=sc_SamplingCoordsViewToGlobal(vec2(l9_25,l9_27),baseTexLayout,baseTexGetStereoViewIndex());
vec4 l9_31=texture(baseTexArrSC,l9_30,0.0);
vec4 l9_32;
#if (SC_USE_CLAMP_TO_BORDER_baseTex)
{
l9_32=mix(baseTexBorderColor,l9_31,vec4(l9_29));
}
#else
{
l9_32=l9_31;
}
#endif
l9_8=l9_32;
}
#else
{
bool l9_33=(int(SC_USE_CLAMP_TO_BORDER_baseTex)!=0)&&(!(int(SC_USE_UV_MIN_MAX_baseTex)!=0));
float l9_34=l9_7.x;
sc_SoftwareWrapEarly(l9_34,ivec2(SC_SOFTWARE_WRAP_MODE_U_baseTex,SC_SOFTWARE_WRAP_MODE_V_baseTex).x);
float l9_35=l9_34;
float l9_36=l9_7.y;
sc_SoftwareWrapEarly(l9_36,ivec2(SC_SOFTWARE_WRAP_MODE_U_baseTex,SC_SOFTWARE_WRAP_MODE_V_baseTex).y);
float l9_37=l9_36;
vec2 l9_38;
float l9_39;
#if (SC_USE_UV_MIN_MAX_baseTex)
{
bool l9_40;
#if (SC_USE_CLAMP_TO_BORDER_baseTex)
{
l9_40=ivec2(SC_SOFTWARE_WRAP_MODE_U_baseTex,SC_SOFTWARE_WRAP_MODE_V_baseTex).x==3;
}
#else
{
l9_40=(int(SC_USE_CLAMP_TO_BORDER_baseTex)!=0);
}
#endif
float l9_41=l9_35;
float l9_42=1.0;
sc_ClampUV(l9_41,baseTexUvMinMax.x,baseTexUvMinMax.z,l9_40,l9_42);
float l9_43=l9_41;
float l9_44=l9_42;
bool l9_45;
#if (SC_USE_CLAMP_TO_BORDER_baseTex)
{
l9_45=ivec2(SC_SOFTWARE_WRAP_MODE_U_baseTex,SC_SOFTWARE_WRAP_MODE_V_baseTex).y==3;
}
#else
{
l9_45=(int(SC_USE_CLAMP_TO_BORDER_baseTex)!=0);
}
#endif
float l9_46=l9_37;
float l9_47=l9_44;
sc_ClampUV(l9_46,baseTexUvMinMax.y,baseTexUvMinMax.w,l9_45,l9_47);
l9_39=l9_47;
l9_38=vec2(l9_43,l9_46);
}
#else
{
l9_39=1.0;
l9_38=vec2(l9_35,l9_37);
}
#endif
vec2 l9_48=sc_TransformUV(l9_38,(int(SC_USE_UV_TRANSFORM_baseTex)!=0),baseTexTransform);
float l9_49=l9_48.x;
float l9_50=l9_39;
sc_SoftwareWrapLate(l9_49,ivec2(SC_SOFTWARE_WRAP_MODE_U_baseTex,SC_SOFTWARE_WRAP_MODE_V_baseTex).x,l9_33,l9_50);
float l9_51=l9_48.y;
float l9_52=l9_50;
sc_SoftwareWrapLate(l9_51,ivec2(SC_SOFTWARE_WRAP_MODE_U_baseTex,SC_SOFTWARE_WRAP_MODE_V_baseTex).y,l9_33,l9_52);
float l9_53=l9_52;
vec3 l9_54=sc_SamplingCoordsViewToGlobal(vec2(l9_49,l9_51),baseTexLayout,baseTexGetStereoViewIndex());
vec4 l9_55=texture(baseTex,l9_54.xy,0.0);
vec4 l9_56;
#if (SC_USE_CLAMP_TO_BORDER_baseTex)
{
l9_56=mix(baseTexBorderColor,l9_55,vec4(l9_53));
}
#else
{
l9_56=l9_55;
}
#endif
l9_8=l9_56;
}
#endif
l9_6=baseColor*l9_8;
}
#else
{
l9_6=baseColor;
}
#endif
vec4 l9_57;
#if (ENABLE_RECOLOR)
{
l9_57=vec4(vec3(0.0).x,vec3(0.0).y,vec3(0.0).z,l9_6.w);
}
#else
{
l9_57=l9_6;
}
#endif
float l9_58;
#if (ENABLE_OPACITY_TEX)
{
vec2 l9_59=N7_getUV(NODE_69_DROPLIST_ITEM);
vec4 l9_60;
#if (opacityTexLayout==2)
{
bool l9_61=(int(SC_USE_CLAMP_TO_BORDER_opacityTex)!=0)&&(!(int(SC_USE_UV_MIN_MAX_opacityTex)!=0));
float l9_62=l9_59.x;
sc_SoftwareWrapEarly(l9_62,ivec2(SC_SOFTWARE_WRAP_MODE_U_opacityTex,SC_SOFTWARE_WRAP_MODE_V_opacityTex).x);
float l9_63=l9_62;
float l9_64=l9_59.y;
sc_SoftwareWrapEarly(l9_64,ivec2(SC_SOFTWARE_WRAP_MODE_U_opacityTex,SC_SOFTWARE_WRAP_MODE_V_opacityTex).y);
float l9_65=l9_64;
vec2 l9_66;
float l9_67;
#if (SC_USE_UV_MIN_MAX_opacityTex)
{
bool l9_68;
#if (SC_USE_CLAMP_TO_BORDER_opacityTex)
{
l9_68=ivec2(SC_SOFTWARE_WRAP_MODE_U_opacityTex,SC_SOFTWARE_WRAP_MODE_V_opacityTex).x==3;
}
#else
{
l9_68=(int(SC_USE_CLAMP_TO_BORDER_opacityTex)!=0);
}
#endif
float l9_69=l9_63;
float l9_70=1.0;
sc_ClampUV(l9_69,opacityTexUvMinMax.x,opacityTexUvMinMax.z,l9_68,l9_70);
float l9_71=l9_69;
float l9_72=l9_70;
bool l9_73;
#if (SC_USE_CLAMP_TO_BORDER_opacityTex)
{
l9_73=ivec2(SC_SOFTWARE_WRAP_MODE_U_opacityTex,SC_SOFTWARE_WRAP_MODE_V_opacityTex).y==3;
}
#else
{
l9_73=(int(SC_USE_CLAMP_TO_BORDER_opacityTex)!=0);
}
#endif
float l9_74=l9_65;
float l9_75=l9_72;
sc_ClampUV(l9_74,opacityTexUvMinMax.y,opacityTexUvMinMax.w,l9_73,l9_75);
l9_67=l9_75;
l9_66=vec2(l9_71,l9_74);
}
#else
{
l9_67=1.0;
l9_66=vec2(l9_63,l9_65);
}
#endif
vec2 l9_76=sc_TransformUV(l9_66,(int(SC_USE_UV_TRANSFORM_opacityTex)!=0),opacityTexTransform);
float l9_77=l9_76.x;
float l9_78=l9_67;
sc_SoftwareWrapLate(l9_77,ivec2(SC_SOFTWARE_WRAP_MODE_U_opacityTex,SC_SOFTWARE_WRAP_MODE_V_opacityTex).x,l9_61,l9_78);
float l9_79=l9_76.y;
float l9_80=l9_78;
sc_SoftwareWrapLate(l9_79,ivec2(SC_SOFTWARE_WRAP_MODE_U_opacityTex,SC_SOFTWARE_WRAP_MODE_V_opacityTex).y,l9_61,l9_80);
float l9_81=l9_80;
vec3 l9_82=sc_SamplingCoordsViewToGlobal(vec2(l9_77,l9_79),opacityTexLayout,opacityTexGetStereoViewIndex());
vec4 l9_83=texture(opacityTexArrSC,l9_82,0.0);
vec4 l9_84;
#if (SC_USE_CLAMP_TO_BORDER_opacityTex)
{
l9_84=mix(opacityTexBorderColor,l9_83,vec4(l9_81));
}
#else
{
l9_84=l9_83;
}
#endif
l9_60=l9_84;
}
#else
{
bool l9_85=(int(SC_USE_CLAMP_TO_BORDER_opacityTex)!=0)&&(!(int(SC_USE_UV_MIN_MAX_opacityTex)!=0));
float l9_86=l9_59.x;
sc_SoftwareWrapEarly(l9_86,ivec2(SC_SOFTWARE_WRAP_MODE_U_opacityTex,SC_SOFTWARE_WRAP_MODE_V_opacityTex).x);
float l9_87=l9_86;
float l9_88=l9_59.y;
sc_SoftwareWrapEarly(l9_88,ivec2(SC_SOFTWARE_WRAP_MODE_U_opacityTex,SC_SOFTWARE_WRAP_MODE_V_opacityTex).y);
float l9_89=l9_88;
vec2 l9_90;
float l9_91;
#if (SC_USE_UV_MIN_MAX_opacityTex)
{
bool l9_92;
#if (SC_USE_CLAMP_TO_BORDER_opacityTex)
{
l9_92=ivec2(SC_SOFTWARE_WRAP_MODE_U_opacityTex,SC_SOFTWARE_WRAP_MODE_V_opacityTex).x==3;
}
#else
{
l9_92=(int(SC_USE_CLAMP_TO_BORDER_opacityTex)!=0);
}
#endif
float l9_93=l9_87;
float l9_94=1.0;
sc_ClampUV(l9_93,opacityTexUvMinMax.x,opacityTexUvMinMax.z,l9_92,l9_94);
float l9_95=l9_93;
float l9_96=l9_94;
bool l9_97;
#if (SC_USE_CLAMP_TO_BORDER_opacityTex)
{
l9_97=ivec2(SC_SOFTWARE_WRAP_MODE_U_opacityTex,SC_SOFTWARE_WRAP_MODE_V_opacityTex).y==3;
}
#else
{
l9_97=(int(SC_USE_CLAMP_TO_BORDER_opacityTex)!=0);
}
#endif
float l9_98=l9_89;
float l9_99=l9_96;
sc_ClampUV(l9_98,opacityTexUvMinMax.y,opacityTexUvMinMax.w,l9_97,l9_99);
l9_91=l9_99;
l9_90=vec2(l9_95,l9_98);
}
#else
{
l9_91=1.0;
l9_90=vec2(l9_87,l9_89);
}
#endif
vec2 l9_100=sc_TransformUV(l9_90,(int(SC_USE_UV_TRANSFORM_opacityTex)!=0),opacityTexTransform);
float l9_101=l9_100.x;
float l9_102=l9_91;
sc_SoftwareWrapLate(l9_101,ivec2(SC_SOFTWARE_WRAP_MODE_U_opacityTex,SC_SOFTWARE_WRAP_MODE_V_opacityTex).x,l9_85,l9_102);
float l9_103=l9_100.y;
float l9_104=l9_102;
sc_SoftwareWrapLate(l9_103,ivec2(SC_SOFTWARE_WRAP_MODE_U_opacityTex,SC_SOFTWARE_WRAP_MODE_V_opacityTex).y,l9_85,l9_104);
float l9_105=l9_104;
vec3 l9_106=sc_SamplingCoordsViewToGlobal(vec2(l9_101,l9_103),opacityTexLayout,opacityTexGetStereoViewIndex());
vec4 l9_107=texture(opacityTex,l9_106.xy,0.0);
vec4 l9_108;
#if (SC_USE_CLAMP_TO_BORDER_opacityTex)
{
l9_108=mix(opacityTexBorderColor,l9_107,vec4(l9_105));
}
#else
{
l9_108=l9_107;
}
#endif
l9_60=l9_108;
}
#endif
l9_58=l9_60.x;
}
#else
{
l9_58=1.0;
}
#endif
float l9_109=l9_58*l9_57.w;
float l9_110;
if (NODE_38_DROPLIST_ITEM==1)
{
l9_110=l9_109*tempGlobals.VertexColor.w;
}
else
{
l9_110=l9_109;
}
vec3 l9_111;
#if (ENABLE_NORMALMAP)
{
vec2 l9_112=N7_getUV(NODE_181_DROPLIST_ITEM);
vec4 l9_113;
#if (normalTexLayout==2)
{
bool l9_114=(int(SC_USE_CLAMP_TO_BORDER_normalTex)!=0)&&(!(int(SC_USE_UV_MIN_MAX_normalTex)!=0));
float l9_115=l9_112.x;
sc_SoftwareWrapEarly(l9_115,ivec2(SC_SOFTWARE_WRAP_MODE_U_normalTex,SC_SOFTWARE_WRAP_MODE_V_normalTex).x);
float l9_116=l9_115;
float l9_117=l9_112.y;
sc_SoftwareWrapEarly(l9_117,ivec2(SC_SOFTWARE_WRAP_MODE_U_normalTex,SC_SOFTWARE_WRAP_MODE_V_normalTex).y);
float l9_118=l9_117;
vec2 l9_119;
float l9_120;
#if (SC_USE_UV_MIN_MAX_normalTex)
{
bool l9_121;
#if (SC_USE_CLAMP_TO_BORDER_normalTex)
{
l9_121=ivec2(SC_SOFTWARE_WRAP_MODE_U_normalTex,SC_SOFTWARE_WRAP_MODE_V_normalTex).x==3;
}
#else
{
l9_121=(int(SC_USE_CLAMP_TO_BORDER_normalTex)!=0);
}
#endif
float l9_122=l9_116;
float l9_123=1.0;
sc_ClampUV(l9_122,normalTexUvMinMax.x,normalTexUvMinMax.z,l9_121,l9_123);
float l9_124=l9_122;
float l9_125=l9_123;
bool l9_126;
#if (SC_USE_CLAMP_TO_BORDER_normalTex)
{
l9_126=ivec2(SC_SOFTWARE_WRAP_MODE_U_normalTex,SC_SOFTWARE_WRAP_MODE_V_normalTex).y==3;
}
#else
{
l9_126=(int(SC_USE_CLAMP_TO_BORDER_normalTex)!=0);
}
#endif
float l9_127=l9_118;
float l9_128=l9_125;
sc_ClampUV(l9_127,normalTexUvMinMax.y,normalTexUvMinMax.w,l9_126,l9_128);
l9_120=l9_128;
l9_119=vec2(l9_124,l9_127);
}
#else
{
l9_120=1.0;
l9_119=vec2(l9_116,l9_118);
}
#endif
vec2 l9_129=sc_TransformUV(l9_119,(int(SC_USE_UV_TRANSFORM_normalTex)!=0),normalTexTransform);
float l9_130=l9_129.x;
float l9_131=l9_120;
sc_SoftwareWrapLate(l9_130,ivec2(SC_SOFTWARE_WRAP_MODE_U_normalTex,SC_SOFTWARE_WRAP_MODE_V_normalTex).x,l9_114,l9_131);
float l9_132=l9_129.y;
float l9_133=l9_131;
sc_SoftwareWrapLate(l9_132,ivec2(SC_SOFTWARE_WRAP_MODE_U_normalTex,SC_SOFTWARE_WRAP_MODE_V_normalTex).y,l9_114,l9_133);
float l9_134=l9_133;
vec3 l9_135=sc_SamplingCoordsViewToGlobal(vec2(l9_130,l9_132),normalTexLayout,normalTexGetStereoViewIndex());
vec4 l9_136=texture(normalTexArrSC,l9_135,0.0);
vec4 l9_137;
#if (SC_USE_CLAMP_TO_BORDER_normalTex)
{
l9_137=mix(normalTexBorderColor,l9_136,vec4(l9_134));
}
#else
{
l9_137=l9_136;
}
#endif
l9_113=l9_137;
}
#else
{
bool l9_138=(int(SC_USE_CLAMP_TO_BORDER_normalTex)!=0)&&(!(int(SC_USE_UV_MIN_MAX_normalTex)!=0));
float l9_139=l9_112.x;
sc_SoftwareWrapEarly(l9_139,ivec2(SC_SOFTWARE_WRAP_MODE_U_normalTex,SC_SOFTWARE_WRAP_MODE_V_normalTex).x);
float l9_140=l9_139;
float l9_141=l9_112.y;
sc_SoftwareWrapEarly(l9_141,ivec2(SC_SOFTWARE_WRAP_MODE_U_normalTex,SC_SOFTWARE_WRAP_MODE_V_normalTex).y);
float l9_142=l9_141;
vec2 l9_143;
float l9_144;
#if (SC_USE_UV_MIN_MAX_normalTex)
{
bool l9_145;
#if (SC_USE_CLAMP_TO_BORDER_normalTex)
{
l9_145=ivec2(SC_SOFTWARE_WRAP_MODE_U_normalTex,SC_SOFTWARE_WRAP_MODE_V_normalTex).x==3;
}
#else
{
l9_145=(int(SC_USE_CLAMP_TO_BORDER_normalTex)!=0);
}
#endif
float l9_146=l9_140;
float l9_147=1.0;
sc_ClampUV(l9_146,normalTexUvMinMax.x,normalTexUvMinMax.z,l9_145,l9_147);
float l9_148=l9_146;
float l9_149=l9_147;
bool l9_150;
#if (SC_USE_CLAMP_TO_BORDER_normalTex)
{
l9_150=ivec2(SC_SOFTWARE_WRAP_MODE_U_normalTex,SC_SOFTWARE_WRAP_MODE_V_normalTex).y==3;
}
#else
{
l9_150=(int(SC_USE_CLAMP_TO_BORDER_normalTex)!=0);
}
#endif
float l9_151=l9_142;
float l9_152=l9_149;
sc_ClampUV(l9_151,normalTexUvMinMax.y,normalTexUvMinMax.w,l9_150,l9_152);
l9_144=l9_152;
l9_143=vec2(l9_148,l9_151);
}
#else
{
l9_144=1.0;
l9_143=vec2(l9_140,l9_142);
}
#endif
vec2 l9_153=sc_TransformUV(l9_143,(int(SC_USE_UV_TRANSFORM_normalTex)!=0),normalTexTransform);
float l9_154=l9_153.x;
float l9_155=l9_144;
sc_SoftwareWrapLate(l9_154,ivec2(SC_SOFTWARE_WRAP_MODE_U_normalTex,SC_SOFTWARE_WRAP_MODE_V_normalTex).x,l9_138,l9_155);
float l9_156=l9_153.y;
float l9_157=l9_155;
sc_SoftwareWrapLate(l9_156,ivec2(SC_SOFTWARE_WRAP_MODE_U_normalTex,SC_SOFTWARE_WRAP_MODE_V_normalTex).y,l9_138,l9_157);
float l9_158=l9_157;
vec3 l9_159=sc_SamplingCoordsViewToGlobal(vec2(l9_154,l9_156),normalTexLayout,normalTexGetStereoViewIndex());
vec4 l9_160=texture(normalTex,l9_159.xy,0.0);
vec4 l9_161;
#if (SC_USE_CLAMP_TO_BORDER_normalTex)
{
l9_161=mix(normalTexBorderColor,l9_160,vec4(l9_158));
}
#else
{
l9_161=l9_160;
}
#endif
l9_113=l9_161;
}
#endif
vec3 l9_162;
#if (ENABLE_DETAIL_NORMAL)
{
vec2 l9_163=N7_getUV(NODE_184_DROPLIST_ITEM);
vec4 l9_164;
#if (detailNormalTexLayout==2)
{
bool l9_165=(int(SC_USE_CLAMP_TO_BORDER_detailNormalTex)!=0)&&(!(int(SC_USE_UV_MIN_MAX_detailNormalTex)!=0));
float l9_166=l9_163.x;
sc_SoftwareWrapEarly(l9_166,ivec2(SC_SOFTWARE_WRAP_MODE_U_detailNormalTex,SC_SOFTWARE_WRAP_MODE_V_detailNormalTex).x);
float l9_167=l9_166;
float l9_168=l9_163.y;
sc_SoftwareWrapEarly(l9_168,ivec2(SC_SOFTWARE_WRAP_MODE_U_detailNormalTex,SC_SOFTWARE_WRAP_MODE_V_detailNormalTex).y);
float l9_169=l9_168;
vec2 l9_170;
float l9_171;
#if (SC_USE_UV_MIN_MAX_detailNormalTex)
{
bool l9_172;
#if (SC_USE_CLAMP_TO_BORDER_detailNormalTex)
{
l9_172=ivec2(SC_SOFTWARE_WRAP_MODE_U_detailNormalTex,SC_SOFTWARE_WRAP_MODE_V_detailNormalTex).x==3;
}
#else
{
l9_172=(int(SC_USE_CLAMP_TO_BORDER_detailNormalTex)!=0);
}
#endif
float l9_173=l9_167;
float l9_174=1.0;
sc_ClampUV(l9_173,detailNormalTexUvMinMax.x,detailNormalTexUvMinMax.z,l9_172,l9_174);
float l9_175=l9_173;
float l9_176=l9_174;
bool l9_177;
#if (SC_USE_CLAMP_TO_BORDER_detailNormalTex)
{
l9_177=ivec2(SC_SOFTWARE_WRAP_MODE_U_detailNormalTex,SC_SOFTWARE_WRAP_MODE_V_detailNormalTex).y==3;
}
#else
{
l9_177=(int(SC_USE_CLAMP_TO_BORDER_detailNormalTex)!=0);
}
#endif
float l9_178=l9_169;
float l9_179=l9_176;
sc_ClampUV(l9_178,detailNormalTexUvMinMax.y,detailNormalTexUvMinMax.w,l9_177,l9_179);
l9_171=l9_179;
l9_170=vec2(l9_175,l9_178);
}
#else
{
l9_171=1.0;
l9_170=vec2(l9_167,l9_169);
}
#endif
vec2 l9_180=sc_TransformUV(l9_170,(int(SC_USE_UV_TRANSFORM_detailNormalTex)!=0),detailNormalTexTransform);
float l9_181=l9_180.x;
float l9_182=l9_171;
sc_SoftwareWrapLate(l9_181,ivec2(SC_SOFTWARE_WRAP_MODE_U_detailNormalTex,SC_SOFTWARE_WRAP_MODE_V_detailNormalTex).x,l9_165,l9_182);
float l9_183=l9_180.y;
float l9_184=l9_182;
sc_SoftwareWrapLate(l9_183,ivec2(SC_SOFTWARE_WRAP_MODE_U_detailNormalTex,SC_SOFTWARE_WRAP_MODE_V_detailNormalTex).y,l9_165,l9_184);
float l9_185=l9_184;
vec3 l9_186=sc_SamplingCoordsViewToGlobal(vec2(l9_181,l9_183),detailNormalTexLayout,detailNormalTexGetStereoViewIndex());
vec4 l9_187=texture(detailNormalTexArrSC,l9_186,0.0);
vec4 l9_188;
#if (SC_USE_CLAMP_TO_BORDER_detailNormalTex)
{
l9_188=mix(detailNormalTexBorderColor,l9_187,vec4(l9_185));
}
#else
{
l9_188=l9_187;
}
#endif
l9_164=l9_188;
}
#else
{
bool l9_189=(int(SC_USE_CLAMP_TO_BORDER_detailNormalTex)!=0)&&(!(int(SC_USE_UV_MIN_MAX_detailNormalTex)!=0));
float l9_190=l9_163.x;
sc_SoftwareWrapEarly(l9_190,ivec2(SC_SOFTWARE_WRAP_MODE_U_detailNormalTex,SC_SOFTWARE_WRAP_MODE_V_detailNormalTex).x);
float l9_191=l9_190;
float l9_192=l9_163.y;
sc_SoftwareWrapEarly(l9_192,ivec2(SC_SOFTWARE_WRAP_MODE_U_detailNormalTex,SC_SOFTWARE_WRAP_MODE_V_detailNormalTex).y);
float l9_193=l9_192;
vec2 l9_194;
float l9_195;
#if (SC_USE_UV_MIN_MAX_detailNormalTex)
{
bool l9_196;
#if (SC_USE_CLAMP_TO_BORDER_detailNormalTex)
{
l9_196=ivec2(SC_SOFTWARE_WRAP_MODE_U_detailNormalTex,SC_SOFTWARE_WRAP_MODE_V_detailNormalTex).x==3;
}
#else
{
l9_196=(int(SC_USE_CLAMP_TO_BORDER_detailNormalTex)!=0);
}
#endif
float l9_197=l9_191;
float l9_198=1.0;
sc_ClampUV(l9_197,detailNormalTexUvMinMax.x,detailNormalTexUvMinMax.z,l9_196,l9_198);
float l9_199=l9_197;
float l9_200=l9_198;
bool l9_201;
#if (SC_USE_CLAMP_TO_BORDER_detailNormalTex)
{
l9_201=ivec2(SC_SOFTWARE_WRAP_MODE_U_detailNormalTex,SC_SOFTWARE_WRAP_MODE_V_detailNormalTex).y==3;
}
#else
{
l9_201=(int(SC_USE_CLAMP_TO_BORDER_detailNormalTex)!=0);
}
#endif
float l9_202=l9_193;
float l9_203=l9_200;
sc_ClampUV(l9_202,detailNormalTexUvMinMax.y,detailNormalTexUvMinMax.w,l9_201,l9_203);
l9_195=l9_203;
l9_194=vec2(l9_199,l9_202);
}
#else
{
l9_195=1.0;
l9_194=vec2(l9_191,l9_193);
}
#endif
vec2 l9_204=sc_TransformUV(l9_194,(int(SC_USE_UV_TRANSFORM_detailNormalTex)!=0),detailNormalTexTransform);
float l9_205=l9_204.x;
float l9_206=l9_195;
sc_SoftwareWrapLate(l9_205,ivec2(SC_SOFTWARE_WRAP_MODE_U_detailNormalTex,SC_SOFTWARE_WRAP_MODE_V_detailNormalTex).x,l9_189,l9_206);
float l9_207=l9_204.y;
float l9_208=l9_206;
sc_SoftwareWrapLate(l9_207,ivec2(SC_SOFTWARE_WRAP_MODE_U_detailNormalTex,SC_SOFTWARE_WRAP_MODE_V_detailNormalTex).y,l9_189,l9_208);
float l9_209=l9_208;
vec3 l9_210=sc_SamplingCoordsViewToGlobal(vec2(l9_205,l9_207),detailNormalTexLayout,detailNormalTexGetStereoViewIndex());
vec4 l9_211=texture(detailNormalTex,l9_210.xy,0.0);
vec4 l9_212;
#if (SC_USE_CLAMP_TO_BORDER_detailNormalTex)
{
l9_212=mix(detailNormalTexBorderColor,l9_211,vec4(l9_209));
}
#else
{
l9_212=l9_211;
}
#endif
l9_164=l9_212;
}
#endif
l9_162=(l9_164.xyz*1.9921875)-vec3(1.0);
}
#else
{
l9_162=vec3(0.0,0.0,1.0);
}
#endif
vec3 l9_213=((l9_113.xyz*1.9921875)-vec3(1.0))+vec3(0.0,0.0,1.0);
vec3 l9_214=l9_162*vec3(-1.0,-1.0,1.0);
l9_111=normalize(mat3(tempGlobals.VertexTangent_WorldSpace,tempGlobals.VertexBinormal_WorldSpace,tempGlobals.VertexNormal_WorldSpace)*normalize((l9_213*dot(l9_213,l9_214))-(l9_214*l9_213.z)));
}
#else
{
l9_111=normalize(tempGlobals.VertexNormal_WorldSpace);
}
#endif
vec3 l9_215;
#if (ENABLE_EMISSIVE)
{
vec2 l9_216=N7_getUV(NODE_76_DROPLIST_ITEM);
vec4 l9_217;
#if (emissiveTexLayout==2)
{
bool l9_218=(int(SC_USE_CLAMP_TO_BORDER_emissiveTex)!=0)&&(!(int(SC_USE_UV_MIN_MAX_emissiveTex)!=0));
float l9_219=l9_216.x;
sc_SoftwareWrapEarly(l9_219,ivec2(SC_SOFTWARE_WRAP_MODE_U_emissiveTex,SC_SOFTWARE_WRAP_MODE_V_emissiveTex).x);
float l9_220=l9_219;
float l9_221=l9_216.y;
sc_SoftwareWrapEarly(l9_221,ivec2(SC_SOFTWARE_WRAP_MODE_U_emissiveTex,SC_SOFTWARE_WRAP_MODE_V_emissiveTex).y);
float l9_222=l9_221;
vec2 l9_223;
float l9_224;
#if (SC_USE_UV_MIN_MAX_emissiveTex)
{
bool l9_225;
#if (SC_USE_CLAMP_TO_BORDER_emissiveTex)
{
l9_225=ivec2(SC_SOFTWARE_WRAP_MODE_U_emissiveTex,SC_SOFTWARE_WRAP_MODE_V_emissiveTex).x==3;
}
#else
{
l9_225=(int(SC_USE_CLAMP_TO_BORDER_emissiveTex)!=0);
}
#endif
float l9_226=l9_220;
float l9_227=1.0;
sc_ClampUV(l9_226,emissiveTexUvMinMax.x,emissiveTexUvMinMax.z,l9_225,l9_227);
float l9_228=l9_226;
float l9_229=l9_227;
bool l9_230;
#if (SC_USE_CLAMP_TO_BORDER_emissiveTex)
{
l9_230=ivec2(SC_SOFTWARE_WRAP_MODE_U_emissiveTex,SC_SOFTWARE_WRAP_MODE_V_emissiveTex).y==3;
}
#else
{
l9_230=(int(SC_USE_CLAMP_TO_BORDER_emissiveTex)!=0);
}
#endif
float l9_231=l9_222;
float l9_232=l9_229;
sc_ClampUV(l9_231,emissiveTexUvMinMax.y,emissiveTexUvMinMax.w,l9_230,l9_232);
l9_224=l9_232;
l9_223=vec2(l9_228,l9_231);
}
#else
{
l9_224=1.0;
l9_223=vec2(l9_220,l9_222);
}
#endif
vec2 l9_233=sc_TransformUV(l9_223,(int(SC_USE_UV_TRANSFORM_emissiveTex)!=0),emissiveTexTransform);
float l9_234=l9_233.x;
float l9_235=l9_224;
sc_SoftwareWrapLate(l9_234,ivec2(SC_SOFTWARE_WRAP_MODE_U_emissiveTex,SC_SOFTWARE_WRAP_MODE_V_emissiveTex).x,l9_218,l9_235);
float l9_236=l9_233.y;
float l9_237=l9_235;
sc_SoftwareWrapLate(l9_236,ivec2(SC_SOFTWARE_WRAP_MODE_U_emissiveTex,SC_SOFTWARE_WRAP_MODE_V_emissiveTex).y,l9_218,l9_237);
float l9_238=l9_237;
vec3 l9_239=sc_SamplingCoordsViewToGlobal(vec2(l9_234,l9_236),emissiveTexLayout,emissiveTexGetStereoViewIndex());
vec4 l9_240=texture(emissiveTexArrSC,l9_239,0.0);
vec4 l9_241;
#if (SC_USE_CLAMP_TO_BORDER_emissiveTex)
{
l9_241=mix(emissiveTexBorderColor,l9_240,vec4(l9_238));
}
#else
{
l9_241=l9_240;
}
#endif
l9_217=l9_241;
}
#else
{
bool l9_242=(int(SC_USE_CLAMP_TO_BORDER_emissiveTex)!=0)&&(!(int(SC_USE_UV_MIN_MAX_emissiveTex)!=0));
float l9_243=l9_216.x;
sc_SoftwareWrapEarly(l9_243,ivec2(SC_SOFTWARE_WRAP_MODE_U_emissiveTex,SC_SOFTWARE_WRAP_MODE_V_emissiveTex).x);
float l9_244=l9_243;
float l9_245=l9_216.y;
sc_SoftwareWrapEarly(l9_245,ivec2(SC_SOFTWARE_WRAP_MODE_U_emissiveTex,SC_SOFTWARE_WRAP_MODE_V_emissiveTex).y);
float l9_246=l9_245;
vec2 l9_247;
float l9_248;
#if (SC_USE_UV_MIN_MAX_emissiveTex)
{
bool l9_249;
#if (SC_USE_CLAMP_TO_BORDER_emissiveTex)
{
l9_249=ivec2(SC_SOFTWARE_WRAP_MODE_U_emissiveTex,SC_SOFTWARE_WRAP_MODE_V_emissiveTex).x==3;
}
#else
{
l9_249=(int(SC_USE_CLAMP_TO_BORDER_emissiveTex)!=0);
}
#endif
float l9_250=l9_244;
float l9_251=1.0;
sc_ClampUV(l9_250,emissiveTexUvMinMax.x,emissiveTexUvMinMax.z,l9_249,l9_251);
float l9_252=l9_250;
float l9_253=l9_251;
bool l9_254;
#if (SC_USE_CLAMP_TO_BORDER_emissiveTex)
{
l9_254=ivec2(SC_SOFTWARE_WRAP_MODE_U_emissiveTex,SC_SOFTWARE_WRAP_MODE_V_emissiveTex).y==3;
}
#else
{
l9_254=(int(SC_USE_CLAMP_TO_BORDER_emissiveTex)!=0);
}
#endif
float l9_255=l9_246;
float l9_256=l9_253;
sc_ClampUV(l9_255,emissiveTexUvMinMax.y,emissiveTexUvMinMax.w,l9_254,l9_256);
l9_248=l9_256;
l9_247=vec2(l9_252,l9_255);
}
#else
{
l9_248=1.0;
l9_247=vec2(l9_244,l9_246);
}
#endif
vec2 l9_257=sc_TransformUV(l9_247,(int(SC_USE_UV_TRANSFORM_emissiveTex)!=0),emissiveTexTransform);
float l9_258=l9_257.x;
float l9_259=l9_248;
sc_SoftwareWrapLate(l9_258,ivec2(SC_SOFTWARE_WRAP_MODE_U_emissiveTex,SC_SOFTWARE_WRAP_MODE_V_emissiveTex).x,l9_242,l9_259);
float l9_260=l9_257.y;
float l9_261=l9_259;
sc_SoftwareWrapLate(l9_260,ivec2(SC_SOFTWARE_WRAP_MODE_U_emissiveTex,SC_SOFTWARE_WRAP_MODE_V_emissiveTex).y,l9_242,l9_261);
float l9_262=l9_261;
vec3 l9_263=sc_SamplingCoordsViewToGlobal(vec2(l9_258,l9_260),emissiveTexLayout,emissiveTexGetStereoViewIndex());
vec4 l9_264=texture(emissiveTex,l9_263.xy,0.0);
vec4 l9_265;
#if (SC_USE_CLAMP_TO_BORDER_emissiveTex)
{
l9_265=mix(emissiveTexBorderColor,l9_264,vec4(l9_262));
}
#else
{
l9_265=l9_264;
}
#endif
l9_217=l9_265;
}
#endif
l9_215=l9_217.xyz;
}
#else
{
l9_215=vec3(0.0);
}
#endif
bool l9_266=NODE_38_DROPLIST_ITEM==2;
vec3 l9_267;
if (l9_266)
{
l9_267=l9_215+tempGlobals.VertexColor.xyz;
}
else
{
l9_267=l9_215;
}
vec3 l9_268;
if (l9_266||(int(ENABLE_EMISSIVE)!=0))
{
l9_268=ssPow((l9_267*emissiveColor)*vec3(emissiveIntensity),vec3(2.2));
}
else
{
l9_268=l9_267;
}
vec3 l9_269;
#if (ENABLE_SIMPLE_REFLECTION)
{
vec3 l9_270=tempGlobals.ViewDirWS;
vec3 l9_271=reflect(l9_270,l9_111);
float l9_272=l9_271.x;
float l9_273=l9_271.y;
float l9_274=(-l9_271.z)+1.0;
float l9_275=((l9_272*l9_272)+(l9_273*l9_273))+(l9_274*l9_274);
float l9_276;
if (l9_275<=0.0)
{
l9_276=0.0;
}
else
{
l9_276=sqrt(l9_275);
}
float l9_277=2.0*l9_276;
vec2 l9_278=vec2(1.0)-((l9_271.xy/vec2(l9_277))+vec2(0.5));
vec4 l9_279;
#if (reflectionTexLayout==2)
{
bool l9_280=(int(SC_USE_CLAMP_TO_BORDER_reflectionTex)!=0)&&(!(int(SC_USE_UV_MIN_MAX_reflectionTex)!=0));
float l9_281=l9_278.x;
sc_SoftwareWrapEarly(l9_281,ivec2(SC_SOFTWARE_WRAP_MODE_U_reflectionTex,SC_SOFTWARE_WRAP_MODE_V_reflectionTex).x);
float l9_282=l9_281;
float l9_283=l9_278.y;
sc_SoftwareWrapEarly(l9_283,ivec2(SC_SOFTWARE_WRAP_MODE_U_reflectionTex,SC_SOFTWARE_WRAP_MODE_V_reflectionTex).y);
float l9_284=l9_283;
vec2 l9_285;
float l9_286;
#if (SC_USE_UV_MIN_MAX_reflectionTex)
{
bool l9_287;
#if (SC_USE_CLAMP_TO_BORDER_reflectionTex)
{
l9_287=ivec2(SC_SOFTWARE_WRAP_MODE_U_reflectionTex,SC_SOFTWARE_WRAP_MODE_V_reflectionTex).x==3;
}
#else
{
l9_287=(int(SC_USE_CLAMP_TO_BORDER_reflectionTex)!=0);
}
#endif
float l9_288=l9_282;
float l9_289=1.0;
sc_ClampUV(l9_288,reflectionTexUvMinMax.x,reflectionTexUvMinMax.z,l9_287,l9_289);
float l9_290=l9_288;
float l9_291=l9_289;
bool l9_292;
#if (SC_USE_CLAMP_TO_BORDER_reflectionTex)
{
l9_292=ivec2(SC_SOFTWARE_WRAP_MODE_U_reflectionTex,SC_SOFTWARE_WRAP_MODE_V_reflectionTex).y==3;
}
#else
{
l9_292=(int(SC_USE_CLAMP_TO_BORDER_reflectionTex)!=0);
}
#endif
float l9_293=l9_284;
float l9_294=l9_291;
sc_ClampUV(l9_293,reflectionTexUvMinMax.y,reflectionTexUvMinMax.w,l9_292,l9_294);
l9_286=l9_294;
l9_285=vec2(l9_290,l9_293);
}
#else
{
l9_286=1.0;
l9_285=vec2(l9_282,l9_284);
}
#endif
vec2 l9_295=sc_TransformUV(l9_285,(int(SC_USE_UV_TRANSFORM_reflectionTex)!=0),reflectionTexTransform);
float l9_296=l9_295.x;
float l9_297=l9_286;
sc_SoftwareWrapLate(l9_296,ivec2(SC_SOFTWARE_WRAP_MODE_U_reflectionTex,SC_SOFTWARE_WRAP_MODE_V_reflectionTex).x,l9_280,l9_297);
float l9_298=l9_295.y;
float l9_299=l9_297;
sc_SoftwareWrapLate(l9_298,ivec2(SC_SOFTWARE_WRAP_MODE_U_reflectionTex,SC_SOFTWARE_WRAP_MODE_V_reflectionTex).y,l9_280,l9_299);
float l9_300=l9_299;
vec3 l9_301=sc_SamplingCoordsViewToGlobal(vec2(l9_296,l9_298),reflectionTexLayout,reflectionTexGetStereoViewIndex());
vec4 l9_302=texture(reflectionTexArrSC,l9_301,0.0);
vec4 l9_303;
#if (SC_USE_CLAMP_TO_BORDER_reflectionTex)
{
l9_303=mix(reflectionTexBorderColor,l9_302,vec4(l9_300));
}
#else
{
l9_303=l9_302;
}
#endif
l9_279=l9_303;
}
#else
{
bool l9_304=(int(SC_USE_CLAMP_TO_BORDER_reflectionTex)!=0)&&(!(int(SC_USE_UV_MIN_MAX_reflectionTex)!=0));
float l9_305=l9_278.x;
sc_SoftwareWrapEarly(l9_305,ivec2(SC_SOFTWARE_WRAP_MODE_U_reflectionTex,SC_SOFTWARE_WRAP_MODE_V_reflectionTex).x);
float l9_306=l9_305;
float l9_307=l9_278.y;
sc_SoftwareWrapEarly(l9_307,ivec2(SC_SOFTWARE_WRAP_MODE_U_reflectionTex,SC_SOFTWARE_WRAP_MODE_V_reflectionTex).y);
float l9_308=l9_307;
vec2 l9_309;
float l9_310;
#if (SC_USE_UV_MIN_MAX_reflectionTex)
{
bool l9_311;
#if (SC_USE_CLAMP_TO_BORDER_reflectionTex)
{
l9_311=ivec2(SC_SOFTWARE_WRAP_MODE_U_reflectionTex,SC_SOFTWARE_WRAP_MODE_V_reflectionTex).x==3;
}
#else
{
l9_311=(int(SC_USE_CLAMP_TO_BORDER_reflectionTex)!=0);
}
#endif
float l9_312=l9_306;
float l9_313=1.0;
sc_ClampUV(l9_312,reflectionTexUvMinMax.x,reflectionTexUvMinMax.z,l9_311,l9_313);
float l9_314=l9_312;
float l9_315=l9_313;
bool l9_316;
#if (SC_USE_CLAMP_TO_BORDER_reflectionTex)
{
l9_316=ivec2(SC_SOFTWARE_WRAP_MODE_U_reflectionTex,SC_SOFTWARE_WRAP_MODE_V_reflectionTex).y==3;
}
#else
{
l9_316=(int(SC_USE_CLAMP_TO_BORDER_reflectionTex)!=0);
}
#endif
float l9_317=l9_308;
float l9_318=l9_315;
sc_ClampUV(l9_317,reflectionTexUvMinMax.y,reflectionTexUvMinMax.w,l9_316,l9_318);
l9_310=l9_318;
l9_309=vec2(l9_314,l9_317);
}
#else
{
l9_310=1.0;
l9_309=vec2(l9_306,l9_308);
}
#endif
vec2 l9_319=sc_TransformUV(l9_309,(int(SC_USE_UV_TRANSFORM_reflectionTex)!=0),reflectionTexTransform);
float l9_320=l9_319.x;
float l9_321=l9_310;
sc_SoftwareWrapLate(l9_320,ivec2(SC_SOFTWARE_WRAP_MODE_U_reflectionTex,SC_SOFTWARE_WRAP_MODE_V_reflectionTex).x,l9_304,l9_321);
float l9_322=l9_319.y;
float l9_323=l9_321;
sc_SoftwareWrapLate(l9_322,ivec2(SC_SOFTWARE_WRAP_MODE_U_reflectionTex,SC_SOFTWARE_WRAP_MODE_V_reflectionTex).y,l9_304,l9_323);
float l9_324=l9_323;
vec3 l9_325=sc_SamplingCoordsViewToGlobal(vec2(l9_320,l9_322),reflectionTexLayout,reflectionTexGetStereoViewIndex());
vec4 l9_326=texture(reflectionTex,l9_325.xy,0.0);
vec4 l9_327;
#if (SC_USE_CLAMP_TO_BORDER_reflectionTex)
{
l9_327=mix(reflectionTexBorderColor,l9_326,vec4(l9_324));
}
#else
{
l9_327=l9_326;
}
#endif
l9_279=l9_327;
}
#endif
vec3 l9_328;
#if (Tweak_N177)
{
vec2 l9_329=N7_getUV(NODE_228_DROPLIST_ITEM);
vec4 l9_330;
#if (reflectionModulationTexLayout==2)
{
bool l9_331=(int(SC_USE_CLAMP_TO_BORDER_reflectionModulationTex)!=0)&&(!(int(SC_USE_UV_MIN_MAX_reflectionModulationTex)!=0));
float l9_332=l9_329.x;
sc_SoftwareWrapEarly(l9_332,ivec2(SC_SOFTWARE_WRAP_MODE_U_reflectionModulationTex,SC_SOFTWARE_WRAP_MODE_V_reflectionModulationTex).x);
float l9_333=l9_332;
float l9_334=l9_329.y;
sc_SoftwareWrapEarly(l9_334,ivec2(SC_SOFTWARE_WRAP_MODE_U_reflectionModulationTex,SC_SOFTWARE_WRAP_MODE_V_reflectionModulationTex).y);
float l9_335=l9_334;
vec2 l9_336;
float l9_337;
#if (SC_USE_UV_MIN_MAX_reflectionModulationTex)
{
bool l9_338;
#if (SC_USE_CLAMP_TO_BORDER_reflectionModulationTex)
{
l9_338=ivec2(SC_SOFTWARE_WRAP_MODE_U_reflectionModulationTex,SC_SOFTWARE_WRAP_MODE_V_reflectionModulationTex).x==3;
}
#else
{
l9_338=(int(SC_USE_CLAMP_TO_BORDER_reflectionModulationTex)!=0);
}
#endif
float l9_339=l9_333;
float l9_340=1.0;
sc_ClampUV(l9_339,reflectionModulationTexUvMinMax.x,reflectionModulationTexUvMinMax.z,l9_338,l9_340);
float l9_341=l9_339;
float l9_342=l9_340;
bool l9_343;
#if (SC_USE_CLAMP_TO_BORDER_reflectionModulationTex)
{
l9_343=ivec2(SC_SOFTWARE_WRAP_MODE_U_reflectionModulationTex,SC_SOFTWARE_WRAP_MODE_V_reflectionModulationTex).y==3;
}
#else
{
l9_343=(int(SC_USE_CLAMP_TO_BORDER_reflectionModulationTex)!=0);
}
#endif
float l9_344=l9_335;
float l9_345=l9_342;
sc_ClampUV(l9_344,reflectionModulationTexUvMinMax.y,reflectionModulationTexUvMinMax.w,l9_343,l9_345);
l9_337=l9_345;
l9_336=vec2(l9_341,l9_344);
}
#else
{
l9_337=1.0;
l9_336=vec2(l9_333,l9_335);
}
#endif
vec2 l9_346=sc_TransformUV(l9_336,(int(SC_USE_UV_TRANSFORM_reflectionModulationTex)!=0),reflectionModulationTexTransform);
float l9_347=l9_346.x;
float l9_348=l9_337;
sc_SoftwareWrapLate(l9_347,ivec2(SC_SOFTWARE_WRAP_MODE_U_reflectionModulationTex,SC_SOFTWARE_WRAP_MODE_V_reflectionModulationTex).x,l9_331,l9_348);
float l9_349=l9_346.y;
float l9_350=l9_348;
sc_SoftwareWrapLate(l9_349,ivec2(SC_SOFTWARE_WRAP_MODE_U_reflectionModulationTex,SC_SOFTWARE_WRAP_MODE_V_reflectionModulationTex).y,l9_331,l9_350);
float l9_351=l9_350;
vec3 l9_352=sc_SamplingCoordsViewToGlobal(vec2(l9_347,l9_349),reflectionModulationTexLayout,reflectionModulationTexGetStereoViewIndex());
vec4 l9_353=texture(reflectionModulationTexArrSC,l9_352,0.0);
vec4 l9_354;
#if (SC_USE_CLAMP_TO_BORDER_reflectionModulationTex)
{
l9_354=mix(reflectionModulationTexBorderColor,l9_353,vec4(l9_351));
}
#else
{
l9_354=l9_353;
}
#endif
l9_330=l9_354;
}
#else
{
bool l9_355=(int(SC_USE_CLAMP_TO_BORDER_reflectionModulationTex)!=0)&&(!(int(SC_USE_UV_MIN_MAX_reflectionModulationTex)!=0));
float l9_356=l9_329.x;
sc_SoftwareWrapEarly(l9_356,ivec2(SC_SOFTWARE_WRAP_MODE_U_reflectionModulationTex,SC_SOFTWARE_WRAP_MODE_V_reflectionModulationTex).x);
float l9_357=l9_356;
float l9_358=l9_329.y;
sc_SoftwareWrapEarly(l9_358,ivec2(SC_SOFTWARE_WRAP_MODE_U_reflectionModulationTex,SC_SOFTWARE_WRAP_MODE_V_reflectionModulationTex).y);
float l9_359=l9_358;
vec2 l9_360;
float l9_361;
#if (SC_USE_UV_MIN_MAX_reflectionModulationTex)
{
bool l9_362;
#if (SC_USE_CLAMP_TO_BORDER_reflectionModulationTex)
{
l9_362=ivec2(SC_SOFTWARE_WRAP_MODE_U_reflectionModulationTex,SC_SOFTWARE_WRAP_MODE_V_reflectionModulationTex).x==3;
}
#else
{
l9_362=(int(SC_USE_CLAMP_TO_BORDER_reflectionModulationTex)!=0);
}
#endif
float l9_363=l9_357;
float l9_364=1.0;
sc_ClampUV(l9_363,reflectionModulationTexUvMinMax.x,reflectionModulationTexUvMinMax.z,l9_362,l9_364);
float l9_365=l9_363;
float l9_366=l9_364;
bool l9_367;
#if (SC_USE_CLAMP_TO_BORDER_reflectionModulationTex)
{
l9_367=ivec2(SC_SOFTWARE_WRAP_MODE_U_reflectionModulationTex,SC_SOFTWARE_WRAP_MODE_V_reflectionModulationTex).y==3;
}
#else
{
l9_367=(int(SC_USE_CLAMP_TO_BORDER_reflectionModulationTex)!=0);
}
#endif
float l9_368=l9_359;
float l9_369=l9_366;
sc_ClampUV(l9_368,reflectionModulationTexUvMinMax.y,reflectionModulationTexUvMinMax.w,l9_367,l9_369);
l9_361=l9_369;
l9_360=vec2(l9_365,l9_368);
}
#else
{
l9_361=1.0;
l9_360=vec2(l9_357,l9_359);
}
#endif
vec2 l9_370=sc_TransformUV(l9_360,(int(SC_USE_UV_TRANSFORM_reflectionModulationTex)!=0),reflectionModulationTexTransform);
float l9_371=l9_370.x;
float l9_372=l9_361;
sc_SoftwareWrapLate(l9_371,ivec2(SC_SOFTWARE_WRAP_MODE_U_reflectionModulationTex,SC_SOFTWARE_WRAP_MODE_V_reflectionModulationTex).x,l9_355,l9_372);
float l9_373=l9_370.y;
float l9_374=l9_372;
sc_SoftwareWrapLate(l9_373,ivec2(SC_SOFTWARE_WRAP_MODE_U_reflectionModulationTex,SC_SOFTWARE_WRAP_MODE_V_reflectionModulationTex).y,l9_355,l9_374);
float l9_375=l9_374;
vec3 l9_376=sc_SamplingCoordsViewToGlobal(vec2(l9_371,l9_373),reflectionModulationTexLayout,reflectionModulationTexGetStereoViewIndex());
vec4 l9_377=texture(reflectionModulationTex,l9_376.xy,0.0);
vec4 l9_378;
#if (SC_USE_CLAMP_TO_BORDER_reflectionModulationTex)
{
l9_378=mix(reflectionModulationTexBorderColor,l9_377,vec4(l9_375));
}
#else
{
l9_378=l9_377;
}
#endif
l9_330=l9_378;
}
#endif
l9_328=l9_279.xyz*l9_330.xyz;
}
#else
{
l9_328=l9_279.xyz;
}
#endif
l9_269=ssSRGB_to_Linear(l9_328)*reflectionIntensity;
}
#else
{
l9_269=vec3(0.0);
}
#endif
vec3 l9_379;
#if (ENABLE_RIM_HIGHLIGHT)
{
vec3 l9_380=rimColor*rimIntensity;
vec3 l9_381;
#if (Tweak_N216)
{
vec2 l9_382=N7_getUV(NODE_315_DROPLIST_ITEM);
vec4 l9_383;
#if (rimColorTexLayout==2)
{
bool l9_384=(int(SC_USE_CLAMP_TO_BORDER_rimColorTex)!=0)&&(!(int(SC_USE_UV_MIN_MAX_rimColorTex)!=0));
float l9_385=l9_382.x;
sc_SoftwareWrapEarly(l9_385,ivec2(SC_SOFTWARE_WRAP_MODE_U_rimColorTex,SC_SOFTWARE_WRAP_MODE_V_rimColorTex).x);
float l9_386=l9_385;
float l9_387=l9_382.y;
sc_SoftwareWrapEarly(l9_387,ivec2(SC_SOFTWARE_WRAP_MODE_U_rimColorTex,SC_SOFTWARE_WRAP_MODE_V_rimColorTex).y);
float l9_388=l9_387;
vec2 l9_389;
float l9_390;
#if (SC_USE_UV_MIN_MAX_rimColorTex)
{
bool l9_391;
#if (SC_USE_CLAMP_TO_BORDER_rimColorTex)
{
l9_391=ivec2(SC_SOFTWARE_WRAP_MODE_U_rimColorTex,SC_SOFTWARE_WRAP_MODE_V_rimColorTex).x==3;
}
#else
{
l9_391=(int(SC_USE_CLAMP_TO_BORDER_rimColorTex)!=0);
}
#endif
float l9_392=l9_386;
float l9_393=1.0;
sc_ClampUV(l9_392,rimColorTexUvMinMax.x,rimColorTexUvMinMax.z,l9_391,l9_393);
float l9_394=l9_392;
float l9_395=l9_393;
bool l9_396;
#if (SC_USE_CLAMP_TO_BORDER_rimColorTex)
{
l9_396=ivec2(SC_SOFTWARE_WRAP_MODE_U_rimColorTex,SC_SOFTWARE_WRAP_MODE_V_rimColorTex).y==3;
}
#else
{
l9_396=(int(SC_USE_CLAMP_TO_BORDER_rimColorTex)!=0);
}
#endif
float l9_397=l9_388;
float l9_398=l9_395;
sc_ClampUV(l9_397,rimColorTexUvMinMax.y,rimColorTexUvMinMax.w,l9_396,l9_398);
l9_390=l9_398;
l9_389=vec2(l9_394,l9_397);
}
#else
{
l9_390=1.0;
l9_389=vec2(l9_386,l9_388);
}
#endif
vec2 l9_399=sc_TransformUV(l9_389,(int(SC_USE_UV_TRANSFORM_rimColorTex)!=0),rimColorTexTransform);
float l9_400=l9_399.x;
float l9_401=l9_390;
sc_SoftwareWrapLate(l9_400,ivec2(SC_SOFTWARE_WRAP_MODE_U_rimColorTex,SC_SOFTWARE_WRAP_MODE_V_rimColorTex).x,l9_384,l9_401);
float l9_402=l9_399.y;
float l9_403=l9_401;
sc_SoftwareWrapLate(l9_402,ivec2(SC_SOFTWARE_WRAP_MODE_U_rimColorTex,SC_SOFTWARE_WRAP_MODE_V_rimColorTex).y,l9_384,l9_403);
float l9_404=l9_403;
vec3 l9_405=sc_SamplingCoordsViewToGlobal(vec2(l9_400,l9_402),rimColorTexLayout,rimColorTexGetStereoViewIndex());
vec4 l9_406=texture(rimColorTexArrSC,l9_405,0.0);
vec4 l9_407;
#if (SC_USE_CLAMP_TO_BORDER_rimColorTex)
{
l9_407=mix(rimColorTexBorderColor,l9_406,vec4(l9_404));
}
#else
{
l9_407=l9_406;
}
#endif
l9_383=l9_407;
}
#else
{
bool l9_408=(int(SC_USE_CLAMP_TO_BORDER_rimColorTex)!=0)&&(!(int(SC_USE_UV_MIN_MAX_rimColorTex)!=0));
float l9_409=l9_382.x;
sc_SoftwareWrapEarly(l9_409,ivec2(SC_SOFTWARE_WRAP_MODE_U_rimColorTex,SC_SOFTWARE_WRAP_MODE_V_rimColorTex).x);
float l9_410=l9_409;
float l9_411=l9_382.y;
sc_SoftwareWrapEarly(l9_411,ivec2(SC_SOFTWARE_WRAP_MODE_U_rimColorTex,SC_SOFTWARE_WRAP_MODE_V_rimColorTex).y);
float l9_412=l9_411;
vec2 l9_413;
float l9_414;
#if (SC_USE_UV_MIN_MAX_rimColorTex)
{
bool l9_415;
#if (SC_USE_CLAMP_TO_BORDER_rimColorTex)
{
l9_415=ivec2(SC_SOFTWARE_WRAP_MODE_U_rimColorTex,SC_SOFTWARE_WRAP_MODE_V_rimColorTex).x==3;
}
#else
{
l9_415=(int(SC_USE_CLAMP_TO_BORDER_rimColorTex)!=0);
}
#endif
float l9_416=l9_410;
float l9_417=1.0;
sc_ClampUV(l9_416,rimColorTexUvMinMax.x,rimColorTexUvMinMax.z,l9_415,l9_417);
float l9_418=l9_416;
float l9_419=l9_417;
bool l9_420;
#if (SC_USE_CLAMP_TO_BORDER_rimColorTex)
{
l9_420=ivec2(SC_SOFTWARE_WRAP_MODE_U_rimColorTex,SC_SOFTWARE_WRAP_MODE_V_rimColorTex).y==3;
}
#else
{
l9_420=(int(SC_USE_CLAMP_TO_BORDER_rimColorTex)!=0);
}
#endif
float l9_421=l9_412;
float l9_422=l9_419;
sc_ClampUV(l9_421,rimColorTexUvMinMax.y,rimColorTexUvMinMax.w,l9_420,l9_422);
l9_414=l9_422;
l9_413=vec2(l9_418,l9_421);
}
#else
{
l9_414=1.0;
l9_413=vec2(l9_410,l9_412);
}
#endif
vec2 l9_423=sc_TransformUV(l9_413,(int(SC_USE_UV_TRANSFORM_rimColorTex)!=0),rimColorTexTransform);
float l9_424=l9_423.x;
float l9_425=l9_414;
sc_SoftwareWrapLate(l9_424,ivec2(SC_SOFTWARE_WRAP_MODE_U_rimColorTex,SC_SOFTWARE_WRAP_MODE_V_rimColorTex).x,l9_408,l9_425);
float l9_426=l9_423.y;
float l9_427=l9_425;
sc_SoftwareWrapLate(l9_426,ivec2(SC_SOFTWARE_WRAP_MODE_U_rimColorTex,SC_SOFTWARE_WRAP_MODE_V_rimColorTex).y,l9_408,l9_427);
float l9_428=l9_427;
vec3 l9_429=sc_SamplingCoordsViewToGlobal(vec2(l9_424,l9_426),rimColorTexLayout,rimColorTexGetStereoViewIndex());
vec4 l9_430=texture(rimColorTex,l9_429.xy,0.0);
vec4 l9_431;
#if (SC_USE_CLAMP_TO_BORDER_rimColorTex)
{
l9_431=mix(rimColorTexBorderColor,l9_430,vec4(l9_428));
}
#else
{
l9_431=l9_430;
}
#endif
l9_383=l9_431;
}
#endif
l9_381=l9_380*l9_383.xyz;
}
#else
{
l9_381=l9_380;
}
#endif
vec3 l9_432=tempGlobals.ViewDirWS;
float l9_433=dot(l9_111,l9_432);
float l9_434=abs(l9_433);
float l9_435;
if (!(int(ENABLE_RIM_INVERT)!=0))
{
l9_435=1.0-l9_434;
}
else
{
l9_435=l9_434;
}
float l9_436;
if (l9_435<=0.0)
{
l9_436=0.0;
}
else
{
l9_436=pow(l9_435,rimExponent);
}
l9_379=vec3(0.0)+(ssSRGB_to_Linear(l9_381)*l9_436);
}
#else
{
l9_379=vec3(0.0);
}
#endif
float l9_437;
#if (ENABLE_MATERIAL_PARAM_TEX)
{
vec2 l9_438=N7_getUV(NODE_221_DROPLIST_ITEM);
vec4 l9_439;
#if (materialParamsTexLayout==2)
{
bool l9_440=(int(SC_USE_CLAMP_TO_BORDER_materialParamsTex)!=0)&&(!(int(SC_USE_UV_MIN_MAX_materialParamsTex)!=0));
float l9_441=l9_438.x;
sc_SoftwareWrapEarly(l9_441,ivec2(SC_SOFTWARE_WRAP_MODE_U_materialParamsTex,SC_SOFTWARE_WRAP_MODE_V_materialParamsTex).x);
float l9_442=l9_441;
float l9_443=l9_438.y;
sc_SoftwareWrapEarly(l9_443,ivec2(SC_SOFTWARE_WRAP_MODE_U_materialParamsTex,SC_SOFTWARE_WRAP_MODE_V_materialParamsTex).y);
float l9_444=l9_443;
vec2 l9_445;
float l9_446;
#if (SC_USE_UV_MIN_MAX_materialParamsTex)
{
bool l9_447;
#if (SC_USE_CLAMP_TO_BORDER_materialParamsTex)
{
l9_447=ivec2(SC_SOFTWARE_WRAP_MODE_U_materialParamsTex,SC_SOFTWARE_WRAP_MODE_V_materialParamsTex).x==3;
}
#else
{
l9_447=(int(SC_USE_CLAMP_TO_BORDER_materialParamsTex)!=0);
}
#endif
float l9_448=l9_442;
float l9_449=1.0;
sc_ClampUV(l9_448,materialParamsTexUvMinMax.x,materialParamsTexUvMinMax.z,l9_447,l9_449);
float l9_450=l9_448;
float l9_451=l9_449;
bool l9_452;
#if (SC_USE_CLAMP_TO_BORDER_materialParamsTex)
{
l9_452=ivec2(SC_SOFTWARE_WRAP_MODE_U_materialParamsTex,SC_SOFTWARE_WRAP_MODE_V_materialParamsTex).y==3;
}
#else
{
l9_452=(int(SC_USE_CLAMP_TO_BORDER_materialParamsTex)!=0);
}
#endif
float l9_453=l9_444;
float l9_454=l9_451;
sc_ClampUV(l9_453,materialParamsTexUvMinMax.y,materialParamsTexUvMinMax.w,l9_452,l9_454);
l9_446=l9_454;
l9_445=vec2(l9_450,l9_453);
}
#else
{
l9_446=1.0;
l9_445=vec2(l9_442,l9_444);
}
#endif
vec2 l9_455=sc_TransformUV(l9_445,(int(SC_USE_UV_TRANSFORM_materialParamsTex)!=0),materialParamsTexTransform);
float l9_456=l9_455.x;
float l9_457=l9_446;
sc_SoftwareWrapLate(l9_456,ivec2(SC_SOFTWARE_WRAP_MODE_U_materialParamsTex,SC_SOFTWARE_WRAP_MODE_V_materialParamsTex).x,l9_440,l9_457);
float l9_458=l9_455.y;
float l9_459=l9_457;
sc_SoftwareWrapLate(l9_458,ivec2(SC_SOFTWARE_WRAP_MODE_U_materialParamsTex,SC_SOFTWARE_WRAP_MODE_V_materialParamsTex).y,l9_440,l9_459);
float l9_460=l9_459;
vec3 l9_461=sc_SamplingCoordsViewToGlobal(vec2(l9_456,l9_458),materialParamsTexLayout,materialParamsTexGetStereoViewIndex());
vec4 l9_462=texture(materialParamsTexArrSC,l9_461,0.0);
vec4 l9_463;
#if (SC_USE_CLAMP_TO_BORDER_materialParamsTex)
{
l9_463=mix(materialParamsTexBorderColor,l9_462,vec4(l9_460));
}
#else
{
l9_463=l9_462;
}
#endif
l9_439=l9_463;
}
#else
{
bool l9_464=(int(SC_USE_CLAMP_TO_BORDER_materialParamsTex)!=0)&&(!(int(SC_USE_UV_MIN_MAX_materialParamsTex)!=0));
float l9_465=l9_438.x;
sc_SoftwareWrapEarly(l9_465,ivec2(SC_SOFTWARE_WRAP_MODE_U_materialParamsTex,SC_SOFTWARE_WRAP_MODE_V_materialParamsTex).x);
float l9_466=l9_465;
float l9_467=l9_438.y;
sc_SoftwareWrapEarly(l9_467,ivec2(SC_SOFTWARE_WRAP_MODE_U_materialParamsTex,SC_SOFTWARE_WRAP_MODE_V_materialParamsTex).y);
float l9_468=l9_467;
vec2 l9_469;
float l9_470;
#if (SC_USE_UV_MIN_MAX_materialParamsTex)
{
bool l9_471;
#if (SC_USE_CLAMP_TO_BORDER_materialParamsTex)
{
l9_471=ivec2(SC_SOFTWARE_WRAP_MODE_U_materialParamsTex,SC_SOFTWARE_WRAP_MODE_V_materialParamsTex).x==3;
}
#else
{
l9_471=(int(SC_USE_CLAMP_TO_BORDER_materialParamsTex)!=0);
}
#endif
float l9_472=l9_466;
float l9_473=1.0;
sc_ClampUV(l9_472,materialParamsTexUvMinMax.x,materialParamsTexUvMinMax.z,l9_471,l9_473);
float l9_474=l9_472;
float l9_475=l9_473;
bool l9_476;
#if (SC_USE_CLAMP_TO_BORDER_materialParamsTex)
{
l9_476=ivec2(SC_SOFTWARE_WRAP_MODE_U_materialParamsTex,SC_SOFTWARE_WRAP_MODE_V_materialParamsTex).y==3;
}
#else
{
l9_476=(int(SC_USE_CLAMP_TO_BORDER_materialParamsTex)!=0);
}
#endif
float l9_477=l9_468;
float l9_478=l9_475;
sc_ClampUV(l9_477,materialParamsTexUvMinMax.y,materialParamsTexUvMinMax.w,l9_476,l9_478);
l9_470=l9_478;
l9_469=vec2(l9_474,l9_477);
}
#else
{
l9_470=1.0;
l9_469=vec2(l9_466,l9_468);
}
#endif
vec2 l9_479=sc_TransformUV(l9_469,(int(SC_USE_UV_TRANSFORM_materialParamsTex)!=0),materialParamsTexTransform);
float l9_480=l9_479.x;
float l9_481=l9_470;
sc_SoftwareWrapLate(l9_480,ivec2(SC_SOFTWARE_WRAP_MODE_U_materialParamsTex,SC_SOFTWARE_WRAP_MODE_V_materialParamsTex).x,l9_464,l9_481);
float l9_482=l9_479.y;
float l9_483=l9_481;
sc_SoftwareWrapLate(l9_482,ivec2(SC_SOFTWARE_WRAP_MODE_U_materialParamsTex,SC_SOFTWARE_WRAP_MODE_V_materialParamsTex).y,l9_464,l9_483);
float l9_484=l9_483;
vec3 l9_485=sc_SamplingCoordsViewToGlobal(vec2(l9_480,l9_482),materialParamsTexLayout,materialParamsTexGetStereoViewIndex());
vec4 l9_486=texture(materialParamsTex,l9_485.xy,0.0);
vec4 l9_487;
#if (SC_USE_CLAMP_TO_BORDER_materialParamsTex)
{
l9_487=mix(materialParamsTexBorderColor,l9_486,vec4(l9_484));
}
#else
{
l9_487=l9_486;
}
#endif
l9_439=l9_487;
}
#endif
l9_437=roughness*l9_439.y;
}
#else
{
l9_437=roughness;
}
#endif
vec3 l9_488;
#if (!sc_ProjectiveShadowsCaster)
{
l9_488=l9_111;
}
#else
{
l9_488=vec3(0.0);
}
#endif
float l9_489=clamp(l9_110,0.0,1.0);
#if (sc_BlendMode_AlphaTest)
{
if (l9_489<alphaTestThreshold)
{
discard;
}
}
#endif
#if (ENABLE_STIPPLE_PATTERN_TEST)
{
if (l9_489<((mod(dot(floor(mod(gl_FragCoord.xy,vec2(4.0))),vec2(4.0,1.0))*9.0,16.0)+1.0)/17.0))
{
discard;
}
}
#endif
if (dot(l9_5,l9_488)>=(-0.050000001))
{
uvec3 l9_490=uvec3(round((varPos-OriginNormalizationOffset)*OriginNormalizationScale));
position_and_mask=uvec4(l9_490.x,l9_490.y,l9_490.z,position_and_mask.w);
position_and_mask.w=uint(receiver_mask);
vec3 l9_491=abs(l9_488);
vec3 l9_492=l9_488/vec3(dot(l9_491,vec3(1.0)));
float l9_493=clamp(-l9_492.z,0.0,1.0);
float l9_494=l9_492.x;
float l9_495;
if (l9_494>=0.0)
{
l9_495=l9_493;
}
else
{
l9_495=-l9_493;
}
float l9_496=l9_494+l9_495;
float l9_497=l9_492.y;
float l9_498;
if (l9_497>=0.0)
{
l9_498=l9_493;
}
else
{
l9_498=-l9_493;
}
uvec2 l9_499=uvec2(packHalf2x16(vec2(l9_496,0.0)),packHalf2x16(vec2(l9_497+l9_498,0.0)));
normal_and_more=uvec4(l9_499.x,l9_499.y,normal_and_more.z,normal_and_more.w);
normal_and_more.z=packHalf2x16(vec2(0.0));
uint l9_500;
if (l9_437<0.0)
{
l9_500=1023u;
}
else
{
l9_500=uint(clamp(l9_437,0.0,1.0)*1000.0);
}
normal_and_more.w=l9_500|uint((receiverId%32)<<int(10u));
}
else
{
position_and_mask=uvec4(0u);
normal_and_more=uvec4(0u);
}
}
#else // #if SC_RT_RECEIVER_MODE
#define sc_StereoRendering_Disabled 0
#define sc_StereoRendering_InstancedClipped 1
#define sc_StereoRendering_Multiview 2
#ifdef GL_ES
    #define SC_GLES_VERSION_20 2000
    #define SC_GLES_VERSION_30 3000
    #define SC_GLES_VERSION_31 3100
    #define SC_GLES_VERSION_32 3200
#endif
#ifdef VERTEX_SHADER
    #define scOutPos(clipPosition) gl_Position=clipPosition
    #define MAIN main
#endif
#ifdef SC_ENABLE_INSTANCED_RENDERING
    #ifndef sc_EnableInstancing
        #define sc_EnableInstancing 1
    #endif
#endif
#define mod(x,y) (x-y*floor((x+1e-6)/y))
#if defined(GL_ES)&&(__VERSION__<300)&&!defined(GL_OES_standard_derivatives)
#define dFdx(A) (A)
#define dFdy(A) (A)
#define fwidth(A) (A)
#endif
#if __VERSION__<300
#define isinf(x) (x!=0.0&&x*2.0==x ? true : false)
#define isnan(x) (x>0.0||x<0.0||x==0.0 ? false : true)
#define inverse(M) M
#endif
#ifdef sc_EnableFeatureLevelES3
    #ifdef sc_EnableStereoClipDistance
        #if defined(GL_APPLE_clip_distance)
            #extension GL_APPLE_clip_distance : require
        #elif defined(GL_EXT_clip_cull_distance)
            #extension GL_EXT_clip_cull_distance : require
        #else
            #error Clip distance is requested but not supported by this device.
        #endif
    #endif
#else
    #ifdef sc_EnableStereoClipDistance
        #error Clip distance is requested but not supported by this device.
    #endif
#endif
#ifdef sc_EnableFeatureLevelES3
    #ifdef VERTEX_SHADER
        #define attribute in
        #define varying out
    #endif
    #ifdef FRAGMENT_SHADER
        #define varying in
    #endif
    #define gl_FragColor sc_FragData0
    #define texture2D texture
    #define texture2DLod textureLod
    #define texture2DLodEXT textureLod
    #define textureCubeLodEXT textureLod
#endif
#if defined(sc_EnableMultiviewStereoRendering)
    #define sc_StereoRenderingMode sc_StereoRendering_Multiview
    #define sc_NumStereoViews 2
    #extension GL_OVR_multiview2 : require
    #ifdef VERTEX_SHADER
        #ifdef sc_EnableInstancingFallback
            #define sc_GlobalInstanceID (sc_FallbackInstanceID*2+gl_InstanceID)
        #else
            #define sc_GlobalInstanceID gl_InstanceID
        #endif
        #define sc_LocalInstanceID sc_GlobalInstanceID
        #define sc_StereoViewID int(gl_ViewID_OVR)
    #endif
#elif defined(sc_EnableInstancedClippedStereoRendering)
    #ifndef sc_EnableInstancing
        #error Instanced-clipped stereo rendering requires enabled instancing.
    #endif
    #ifndef sc_EnableStereoClipDistance
        #define sc_StereoRendering_IsClipDistanceEnabled 0
    #else
        #define sc_StereoRendering_IsClipDistanceEnabled 1
    #endif
    #define sc_StereoRenderingMode sc_StereoRendering_InstancedClipped
    #define sc_NumStereoClipPlanes 1
    #define sc_NumStereoViews 2
    #ifdef VERTEX_SHADER
        #ifdef sc_EnableInstancingFallback
            #define sc_GlobalInstanceID (sc_FallbackInstanceID*2+gl_InstanceID)
        #else
            #define sc_GlobalInstanceID gl_InstanceID
        #endif
        #ifdef sc_EnableFeatureLevelES3
            #define sc_LocalInstanceID (sc_GlobalInstanceID/2)
            #define sc_StereoViewID (sc_GlobalInstanceID%2)
        #else
            #define sc_LocalInstanceID int(sc_GlobalInstanceID/2.0)
            #define sc_StereoViewID int(mod(sc_GlobalInstanceID,2.0))
        #endif
    #endif
#else
    #define sc_StereoRenderingMode sc_StereoRendering_Disabled
#endif
#ifdef VERTEX_SHADER
    #ifdef sc_EnableInstancing
        #ifdef GL_ES
            #if defined(sc_EnableFeatureLevelES2)&&!defined(GL_EXT_draw_instanced)
                #define gl_InstanceID (0)
            #endif
        #else
            #if defined(sc_EnableFeatureLevelES2)&&!defined(GL_EXT_draw_instanced)&&!defined(GL_ARB_draw_instanced)&&!defined(GL_EXT_gpu_shader4)
                #define gl_InstanceID (0)
            #endif
        #endif
        #ifdef GL_ARB_draw_instanced
            #extension GL_ARB_draw_instanced : require
            #define gl_InstanceID gl_InstanceIDARB
        #endif
        #ifdef GL_EXT_draw_instanced
            #extension GL_EXT_draw_instanced : require
            #define gl_InstanceID gl_InstanceIDEXT
        #endif
        #ifndef sc_InstanceID
            #define sc_InstanceID gl_InstanceID
        #endif
        #ifndef sc_GlobalInstanceID
            #ifdef sc_EnableInstancingFallback
                #define sc_GlobalInstanceID (sc_FallbackInstanceID)
                #define sc_LocalInstanceID (sc_FallbackInstanceID)
            #else
                #define sc_GlobalInstanceID gl_InstanceID
                #define sc_LocalInstanceID gl_InstanceID
            #endif
        #endif
    #endif
#endif
#ifdef VERTEX_SHADER
    #if (__VERSION__<300)&&!defined(GL_EXT_gpu_shader4)
        #define gl_VertexID (0)
    #endif
#endif
#ifndef GL_ES
        #extension GL_EXT_gpu_shader4 : enable
    #extension GL_ARB_shader_texture_lod : enable
    #ifndef texture2DLodEXT
        #define texture2DLodEXT texture2DLod
    #endif
    #define precision
    #define lowp
    #define mediump
    #define highp
    #define sc_FragmentPrecision
#endif
#ifdef sc_EnableFeatureLevelES3
    #define sc_CanUseSampler2DArray 1
#endif
#if defined(sc_EnableFeatureLevelES2)&&defined(GL_ES)
    #ifdef GL_EXT_texture_array
        #extension GL_EXT_texture_array : require
        #define sc_CanUseSampler2DArray 1
    #else
        #define sc_CanUseSampler2DArray 0
    #endif
#endif
#ifdef GL_ES
    #ifdef sc_FramebufferFetch
        #if defined(GL_EXT_shader_framebuffer_fetch)
            #extension GL_EXT_shader_framebuffer_fetch : require
        #elif defined(GL_ARM_shader_framebuffer_fetch)
            #extension GL_ARM_shader_framebuffer_fetch : require
        #else
            #error Framebuffer fetch is requested but not supported by this device.
        #endif
    #endif
    #ifdef GL_FRAGMENT_PRECISION_HIGH
        #define sc_FragmentPrecision highp
    #else
        #define sc_FragmentPrecision mediump
    #endif
    #ifdef FRAGMENT_SHADER
        precision highp int;
        precision highp float;
    #endif
#endif
#ifdef VERTEX_SHADER
    #ifdef sc_EnableMultiviewStereoRendering
        layout(num_views=sc_NumStereoViews) in;
    #endif
#endif
#if __VERSION__>100
    #define SC_INT_FALLBACK_FLOAT int
    #define SC_INTERPOLATION_FLAT flat
    #define SC_INTERPOLATION_CENTROID centroid
#else
    #define SC_INT_FALLBACK_FLOAT float
    #define SC_INTERPOLATION_FLAT
    #define SC_INTERPOLATION_CENTROID
#endif
#ifndef sc_NumStereoViews
    #define sc_NumStereoViews 1
#endif
#ifndef sc_CanUseSampler2DArray
    #define sc_CanUseSampler2DArray 0
#endif
#if __VERSION__>=300
#define texture3D texture
#define textureCube texture
#define texture2DArray texture
#define texture2DLod textureLod
#define texture3DLod textureLod
#define texture2DLodEXT textureLod
#define texture3DLodEXT textureLod
#define textureCubeLod textureLod
#define textureCubeLodEXT textureLod
#define texture2DArrayLod textureLod
#define texture2DArrayLodEXT textureLod
#endif
    #ifndef sc_TextureRenderingLayout_Regular
        #define sc_TextureRenderingLayout_Regular 0
        #define sc_TextureRenderingLayout_StereoInstancedClipped 1
        #define sc_TextureRenderingLayout_StereoMultiview 2
    #endif
    #define depthToGlobal   depthScreenToViewSpace
    #define depthToLocal    depthViewToScreenSpace
    #ifndef quantizeUV
        #define quantizeUV sc_QuantizeUV
        #define sc_platformUVFlip sc_PlatformFlipV
        #define sc_PlatformFlipUV sc_PlatformFlipV
    #endif
    #ifndef sc_texture2DLod
        #define sc_texture2DLod sc_InternalTextureLevel
        #define sc_textureLod sc_InternalTextureLevel
        #define sc_textureBias sc_InternalTextureBiasOrLevel
        #define sc_texture sc_InternalTexture
    #endif
#if sc_ExporterVersion<224
#define MAIN main
#endif
    #ifndef sc_FramebufferFetch
    #define sc_FramebufferFetch 0
    #elif sc_FramebufferFetch==1
    #undef sc_FramebufferFetch
    #define sc_FramebufferFetch 1
    #endif
    #if !defined(GL_ES)&&__VERSION__<420
        #ifdef FRAGMENT_SHADER
            #define sc_FragData0 gl_FragData[0]
            #define sc_FragData1 gl_FragData[1]
            #define sc_FragData2 gl_FragData[2]
            #define sc_FragData3 gl_FragData[3]
        #endif
        mat4 getFragData() { return mat4(vec4(0.0),vec4(0.0),vec4(0.0),vec4(0.0)); }
        #define gl_LastFragData (getFragData())
        #if sc_FramebufferFetch
            #error Framebuffer fetch is requested but not supported by this device.
        #endif
    #elif defined(sc_EnableFeatureLevelES3)
        #if sc_FragDataCount>=1
            #define sc_DeclareFragData0(StorageQualifier) layout(location=0) StorageQualifier sc_FragmentPrecision vec4 sc_FragData0
        #endif
        #if sc_FragDataCount>=2
            #define sc_DeclareFragData1(StorageQualifier) layout(location=1) StorageQualifier sc_FragmentPrecision vec4 sc_FragData1
        #endif
        #if sc_FragDataCount>=3
            #define sc_DeclareFragData2(StorageQualifier) layout(location=2) StorageQualifier sc_FragmentPrecision vec4 sc_FragData2
        #endif
        #if sc_FragDataCount>=4
            #define sc_DeclareFragData3(StorageQualifier) layout(location=3) StorageQualifier sc_FragmentPrecision vec4 sc_FragData3
        #endif
        #ifndef sc_DeclareFragData0
            #define sc_DeclareFragData0(_) const vec4 sc_FragData0=vec4(0.0)
        #endif
        #ifndef sc_DeclareFragData1
            #define sc_DeclareFragData1(_) const vec4 sc_FragData1=vec4(0.0)
        #endif
        #ifndef sc_DeclareFragData2
            #define sc_DeclareFragData2(_) const vec4 sc_FragData2=vec4(0.0)
        #endif
        #ifndef sc_DeclareFragData3
            #define sc_DeclareFragData3(_) const vec4 sc_FragData3=vec4(0.0)
        #endif
        #if sc_FramebufferFetch
            #ifdef GL_EXT_shader_framebuffer_fetch
                sc_DeclareFragData0(inout);
                sc_DeclareFragData1(inout);
                sc_DeclareFragData2(inout);
                sc_DeclareFragData3(inout);
                mediump mat4 getFragData() { return mat4(sc_FragData0,sc_FragData1,sc_FragData2,sc_FragData3); }
                #define gl_LastFragData (getFragData())
            #elif defined(GL_ARM_shader_framebuffer_fetch)
                sc_DeclareFragData0(out);
                sc_DeclareFragData1(out);
                sc_DeclareFragData2(out);
                sc_DeclareFragData3(out);
                mediump mat4 getFragData() { return mat4(gl_LastFragColorARM,vec4(0.0),vec4(0.0),vec4(0.0)); }
                #define gl_LastFragData (getFragData())
            #endif
        #else
            #ifdef sc_EnableFeatureLevelES3
                sc_DeclareFragData0(out);
                sc_DeclareFragData1(out);
                sc_DeclareFragData2(out);
                sc_DeclareFragData3(out);
                mediump mat4 getFragData() { return mat4(vec4(0.0),vec4(0.0),vec4(0.0),vec4(0.0)); }
                #define gl_LastFragData (getFragData())
            #endif
        #endif
    #elif defined(sc_EnableFeatureLevelES2)
        #define sc_FragData0 gl_FragColor
        mediump mat4 getFragData() { return mat4(vec4(0.0),vec4(0.0),vec4(0.0),vec4(0.0)); }
    #else
        #define sc_FragData0 gl_FragColor
        mediump mat4 getFragData() { return mat4(vec4(0.0),vec4(0.0),vec4(0.0),vec4(0.0)); }
    #endif
#ifdef uv2
#undef uv2
#endif
#ifdef uv3
#undef uv3
#endif
struct RayHitPayload
{
vec3 viewDirWS;
vec3 positionWS;
vec3 normalWS;
vec4 tangentWS;
vec4 color;
vec2 uv0;
vec2 uv1;
vec2 uv2;
vec2 uv3;
uvec2 id;
};
struct SurfaceProperties
{
vec3 albedo;
float opacity;
vec3 normal;
vec3 positionWS;
vec3 viewDirWS;
float metallic;
float roughness;
vec3 emissive;
vec3 ao;
vec3 specularAo;
vec3 bakedShadows;
vec3 specColor;
};
struct LightingComponents
{
vec3 directDiffuse;
vec3 directSpecular;
vec3 indirectDiffuse;
vec3 indirectSpecular;
vec3 emitted;
vec3 transmitted;
};
struct LightProperties
{
vec3 direction;
vec3 color;
float attenuation;
};
struct sc_SphericalGaussianLight_t
{
vec3 color;
float sharpness;
vec3 axis;
};
struct ssGlobals
{
float gTimeElapsed;
float gTimeDelta;
float gTimeElapsedShifted;
vec2 N7_TransformedUV2;
vec2 N7_TransformedUV3;
vec3 BumpedNormal;
vec3 ViewDirWS;
vec3 PositionWS;
vec3 VertexNormal_WorldSpace;
vec3 VertexTangent_WorldSpace;
vec3 VertexBinormal_WorldSpace;
vec2 Surface_UVCoord0;
vec2 Surface_UVCoord1;
vec4 VertexColor;
vec2 gScreenCoord;
vec3 SurfacePosition_WorldSpace;
};
#ifndef sc_StereoRenderingMode
#define sc_StereoRenderingMode 0
#endif
#ifndef sc_EnvmapDiffuseHasSwappedViews
#define sc_EnvmapDiffuseHasSwappedViews 0
#elif sc_EnvmapDiffuseHasSwappedViews==1
#undef sc_EnvmapDiffuseHasSwappedViews
#define sc_EnvmapDiffuseHasSwappedViews 1
#endif
#ifndef sc_EnvmapDiffuseLayout
#define sc_EnvmapDiffuseLayout 0
#endif
#ifndef sc_EnvmapSpecularHasSwappedViews
#define sc_EnvmapSpecularHasSwappedViews 0
#elif sc_EnvmapSpecularHasSwappedViews==1
#undef sc_EnvmapSpecularHasSwappedViews
#define sc_EnvmapSpecularHasSwappedViews 1
#endif
#ifndef sc_EnvmapSpecularLayout
#define sc_EnvmapSpecularLayout 0
#endif
#ifndef sc_ScreenTextureHasSwappedViews
#define sc_ScreenTextureHasSwappedViews 0
#elif sc_ScreenTextureHasSwappedViews==1
#undef sc_ScreenTextureHasSwappedViews
#define sc_ScreenTextureHasSwappedViews 1
#endif
#ifndef sc_ScreenTextureLayout
#define sc_ScreenTextureLayout 0
#endif
#ifndef sc_RayTracedReflectionTextureHasSwappedViews
#define sc_RayTracedReflectionTextureHasSwappedViews 0
#elif sc_RayTracedReflectionTextureHasSwappedViews==1
#undef sc_RayTracedReflectionTextureHasSwappedViews
#define sc_RayTracedReflectionTextureHasSwappedViews 1
#endif
#ifndef sc_RayTracedReflectionTextureLayout
#define sc_RayTracedReflectionTextureLayout 0
#endif
#ifndef sc_RayTracedShadowTextureHasSwappedViews
#define sc_RayTracedShadowTextureHasSwappedViews 0
#elif sc_RayTracedShadowTextureHasSwappedViews==1
#undef sc_RayTracedShadowTextureHasSwappedViews
#define sc_RayTracedShadowTextureHasSwappedViews 1
#endif
#ifndef sc_RayTracedShadowTextureLayout
#define sc_RayTracedShadowTextureLayout 0
#endif
#ifndef sc_RayTracedDiffIndTextureHasSwappedViews
#define sc_RayTracedDiffIndTextureHasSwappedViews 0
#elif sc_RayTracedDiffIndTextureHasSwappedViews==1
#undef sc_RayTracedDiffIndTextureHasSwappedViews
#define sc_RayTracedDiffIndTextureHasSwappedViews 1
#endif
#ifndef sc_RayTracedDiffIndTextureLayout
#define sc_RayTracedDiffIndTextureLayout 0
#endif
#ifndef sc_RayTracedAoTextureHasSwappedViews
#define sc_RayTracedAoTextureHasSwappedViews 0
#elif sc_RayTracedAoTextureHasSwappedViews==1
#undef sc_RayTracedAoTextureHasSwappedViews
#define sc_RayTracedAoTextureHasSwappedViews 1
#endif
#ifndef sc_RayTracedAoTextureLayout
#define sc_RayTracedAoTextureLayout 0
#endif
#ifndef sc_NumStereoViews
#define sc_NumStereoViews 1
#endif
#ifndef sc_BlendMode_Normal
#define sc_BlendMode_Normal 0
#elif sc_BlendMode_Normal==1
#undef sc_BlendMode_Normal
#define sc_BlendMode_Normal 1
#endif
#ifndef sc_BlendMode_AlphaToCoverage
#define sc_BlendMode_AlphaToCoverage 0
#elif sc_BlendMode_AlphaToCoverage==1
#undef sc_BlendMode_AlphaToCoverage
#define sc_BlendMode_AlphaToCoverage 1
#endif
#ifndef sc_BlendMode_PremultipliedAlphaHardware
#define sc_BlendMode_PremultipliedAlphaHardware 0
#elif sc_BlendMode_PremultipliedAlphaHardware==1
#undef sc_BlendMode_PremultipliedAlphaHardware
#define sc_BlendMode_PremultipliedAlphaHardware 1
#endif
#ifndef sc_BlendMode_PremultipliedAlphaAuto
#define sc_BlendMode_PremultipliedAlphaAuto 0
#elif sc_BlendMode_PremultipliedAlphaAuto==1
#undef sc_BlendMode_PremultipliedAlphaAuto
#define sc_BlendMode_PremultipliedAlphaAuto 1
#endif
#ifndef sc_BlendMode_PremultipliedAlpha
#define sc_BlendMode_PremultipliedAlpha 0
#elif sc_BlendMode_PremultipliedAlpha==1
#undef sc_BlendMode_PremultipliedAlpha
#define sc_BlendMode_PremultipliedAlpha 1
#endif
#ifndef sc_BlendMode_AddWithAlphaFactor
#define sc_BlendMode_AddWithAlphaFactor 0
#elif sc_BlendMode_AddWithAlphaFactor==1
#undef sc_BlendMode_AddWithAlphaFactor
#define sc_BlendMode_AddWithAlphaFactor 1
#endif
#ifndef sc_BlendMode_AlphaTest
#define sc_BlendMode_AlphaTest 0
#elif sc_BlendMode_AlphaTest==1
#undef sc_BlendMode_AlphaTest
#define sc_BlendMode_AlphaTest 1
#endif
#ifndef sc_BlendMode_Multiply
#define sc_BlendMode_Multiply 0
#elif sc_BlendMode_Multiply==1
#undef sc_BlendMode_Multiply
#define sc_BlendMode_Multiply 1
#endif
#ifndef sc_BlendMode_MultiplyOriginal
#define sc_BlendMode_MultiplyOriginal 0
#elif sc_BlendMode_MultiplyOriginal==1
#undef sc_BlendMode_MultiplyOriginal
#define sc_BlendMode_MultiplyOriginal 1
#endif
#ifndef sc_BlendMode_ColoredGlass
#define sc_BlendMode_ColoredGlass 0
#elif sc_BlendMode_ColoredGlass==1
#undef sc_BlendMode_ColoredGlass
#define sc_BlendMode_ColoredGlass 1
#endif
#ifndef sc_BlendMode_Add
#define sc_BlendMode_Add 0
#elif sc_BlendMode_Add==1
#undef sc_BlendMode_Add
#define sc_BlendMode_Add 1
#endif
#ifndef sc_BlendMode_Screen
#define sc_BlendMode_Screen 0
#elif sc_BlendMode_Screen==1
#undef sc_BlendMode_Screen
#define sc_BlendMode_Screen 1
#endif
#ifndef sc_BlendMode_Min
#define sc_BlendMode_Min 0
#elif sc_BlendMode_Min==1
#undef sc_BlendMode_Min
#define sc_BlendMode_Min 1
#endif
#ifndef sc_BlendMode_Max
#define sc_BlendMode_Max 0
#elif sc_BlendMode_Max==1
#undef sc_BlendMode_Max
#define sc_BlendMode_Max 1
#endif
#ifndef sc_ProjectiveShadowsReceiver
#define sc_ProjectiveShadowsReceiver 0
#elif sc_ProjectiveShadowsReceiver==1
#undef sc_ProjectiveShadowsReceiver
#define sc_ProjectiveShadowsReceiver 1
#endif
#ifndef sc_MotionVectorsPass
#define sc_MotionVectorsPass 0
#elif sc_MotionVectorsPass==1
#undef sc_MotionVectorsPass
#define sc_MotionVectorsPass 1
#endif
#ifndef sc_StereoRendering_IsClipDistanceEnabled
#define sc_StereoRendering_IsClipDistanceEnabled 0
#endif
#ifndef sc_ShaderComplexityAnalyzer
#define sc_ShaderComplexityAnalyzer 0
#elif sc_ShaderComplexityAnalyzer==1
#undef sc_ShaderComplexityAnalyzer
#define sc_ShaderComplexityAnalyzer 1
#endif
#ifndef sc_ShaderCacheConstant
#define sc_ShaderCacheConstant 0
#endif
#ifndef sc_UseFramebufferFetchMarker
#define sc_UseFramebufferFetchMarker 0
#elif sc_UseFramebufferFetchMarker==1
#undef sc_UseFramebufferFetchMarker
#define sc_UseFramebufferFetchMarker 1
#endif
#ifndef sc_FramebufferFetch
#define sc_FramebufferFetch 0
#elif sc_FramebufferFetch==1
#undef sc_FramebufferFetch
#define sc_FramebufferFetch 1
#endif
#ifndef sc_IsEditor
#define sc_IsEditor 0
#elif sc_IsEditor==1
#undef sc_IsEditor
#define sc_IsEditor 1
#endif
#ifndef sc_GetFramebufferColorInvalidUsageMarker
#define sc_GetFramebufferColorInvalidUsageMarker 0
#elif sc_GetFramebufferColorInvalidUsageMarker==1
#undef sc_GetFramebufferColorInvalidUsageMarker
#define sc_GetFramebufferColorInvalidUsageMarker 1
#endif
#ifndef sc_BlendMode_Software
#define sc_BlendMode_Software 0
#elif sc_BlendMode_Software==1
#undef sc_BlendMode_Software
#define sc_BlendMode_Software 1
#endif
#ifndef sc_SSAOEnabled
#define sc_SSAOEnabled 0
#elif sc_SSAOEnabled==1
#undef sc_SSAOEnabled
#define sc_SSAOEnabled 1
#endif
#ifndef sc_ProxyAlphaOne
#define sc_ProxyAlphaOne 0
#elif sc_ProxyAlphaOne==1
#undef sc_ProxyAlphaOne
#define sc_ProxyAlphaOne 1
#endif
#ifndef SC_DEVICE_CLASS
#define SC_DEVICE_CLASS -1
#endif
#ifndef intensityTextureHasSwappedViews
#define intensityTextureHasSwappedViews 0
#elif intensityTextureHasSwappedViews==1
#undef intensityTextureHasSwappedViews
#define intensityTextureHasSwappedViews 1
#endif
#ifndef intensityTextureLayout
#define intensityTextureLayout 0
#endif
#ifndef BLEND_MODE_REALISTIC
#define BLEND_MODE_REALISTIC 0
#elif BLEND_MODE_REALISTIC==1
#undef BLEND_MODE_REALISTIC
#define BLEND_MODE_REALISTIC 1
#endif
#ifndef BLEND_MODE_FORGRAY
#define BLEND_MODE_FORGRAY 0
#elif BLEND_MODE_FORGRAY==1
#undef BLEND_MODE_FORGRAY
#define BLEND_MODE_FORGRAY 1
#endif
#ifndef BLEND_MODE_NOTBRIGHT
#define BLEND_MODE_NOTBRIGHT 0
#elif BLEND_MODE_NOTBRIGHT==1
#undef BLEND_MODE_NOTBRIGHT
#define BLEND_MODE_NOTBRIGHT 1
#endif
#ifndef BLEND_MODE_DIVISION
#define BLEND_MODE_DIVISION 0
#elif BLEND_MODE_DIVISION==1
#undef BLEND_MODE_DIVISION
#define BLEND_MODE_DIVISION 1
#endif
#ifndef BLEND_MODE_BRIGHT
#define BLEND_MODE_BRIGHT 0
#elif BLEND_MODE_BRIGHT==1
#undef BLEND_MODE_BRIGHT
#define BLEND_MODE_BRIGHT 1
#endif
#ifndef BLEND_MODE_INTENSE
#define BLEND_MODE_INTENSE 0
#elif BLEND_MODE_INTENSE==1
#undef BLEND_MODE_INTENSE
#define BLEND_MODE_INTENSE 1
#endif
#ifndef SC_USE_UV_TRANSFORM_intensityTexture
#define SC_USE_UV_TRANSFORM_intensityTexture 0
#elif SC_USE_UV_TRANSFORM_intensityTexture==1
#undef SC_USE_UV_TRANSFORM_intensityTexture
#define SC_USE_UV_TRANSFORM_intensityTexture 1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_U_intensityTexture
#define SC_SOFTWARE_WRAP_MODE_U_intensityTexture -1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_V_intensityTexture
#define SC_SOFTWARE_WRAP_MODE_V_intensityTexture -1
#endif
#ifndef SC_USE_UV_MIN_MAX_intensityTexture
#define SC_USE_UV_MIN_MAX_intensityTexture 0
#elif SC_USE_UV_MIN_MAX_intensityTexture==1
#undef SC_USE_UV_MIN_MAX_intensityTexture
#define SC_USE_UV_MIN_MAX_intensityTexture 1
#endif
#ifndef SC_USE_CLAMP_TO_BORDER_intensityTexture
#define SC_USE_CLAMP_TO_BORDER_intensityTexture 0
#elif SC_USE_CLAMP_TO_BORDER_intensityTexture==1
#undef SC_USE_CLAMP_TO_BORDER_intensityTexture
#define SC_USE_CLAMP_TO_BORDER_intensityTexture 1
#endif
#ifndef BLEND_MODE_LIGHTEN
#define BLEND_MODE_LIGHTEN 0
#elif BLEND_MODE_LIGHTEN==1
#undef BLEND_MODE_LIGHTEN
#define BLEND_MODE_LIGHTEN 1
#endif
#ifndef BLEND_MODE_DARKEN
#define BLEND_MODE_DARKEN 0
#elif BLEND_MODE_DARKEN==1
#undef BLEND_MODE_DARKEN
#define BLEND_MODE_DARKEN 1
#endif
#ifndef BLEND_MODE_DIVIDE
#define BLEND_MODE_DIVIDE 0
#elif BLEND_MODE_DIVIDE==1
#undef BLEND_MODE_DIVIDE
#define BLEND_MODE_DIVIDE 1
#endif
#ifndef BLEND_MODE_AVERAGE
#define BLEND_MODE_AVERAGE 0
#elif BLEND_MODE_AVERAGE==1
#undef BLEND_MODE_AVERAGE
#define BLEND_MODE_AVERAGE 1
#endif
#ifndef BLEND_MODE_SUBTRACT
#define BLEND_MODE_SUBTRACT 0
#elif BLEND_MODE_SUBTRACT==1
#undef BLEND_MODE_SUBTRACT
#define BLEND_MODE_SUBTRACT 1
#endif
#ifndef BLEND_MODE_DIFFERENCE
#define BLEND_MODE_DIFFERENCE 0
#elif BLEND_MODE_DIFFERENCE==1
#undef BLEND_MODE_DIFFERENCE
#define BLEND_MODE_DIFFERENCE 1
#endif
#ifndef BLEND_MODE_NEGATION
#define BLEND_MODE_NEGATION 0
#elif BLEND_MODE_NEGATION==1
#undef BLEND_MODE_NEGATION
#define BLEND_MODE_NEGATION 1
#endif
#ifndef BLEND_MODE_EXCLUSION
#define BLEND_MODE_EXCLUSION 0
#elif BLEND_MODE_EXCLUSION==1
#undef BLEND_MODE_EXCLUSION
#define BLEND_MODE_EXCLUSION 1
#endif
#ifndef BLEND_MODE_OVERLAY
#define BLEND_MODE_OVERLAY 0
#elif BLEND_MODE_OVERLAY==1
#undef BLEND_MODE_OVERLAY
#define BLEND_MODE_OVERLAY 1
#endif
#ifndef BLEND_MODE_SOFT_LIGHT
#define BLEND_MODE_SOFT_LIGHT 0
#elif BLEND_MODE_SOFT_LIGHT==1
#undef BLEND_MODE_SOFT_LIGHT
#define BLEND_MODE_SOFT_LIGHT 1
#endif
#ifndef BLEND_MODE_HARD_LIGHT
#define BLEND_MODE_HARD_LIGHT 0
#elif BLEND_MODE_HARD_LIGHT==1
#undef BLEND_MODE_HARD_LIGHT
#define BLEND_MODE_HARD_LIGHT 1
#endif
#ifndef BLEND_MODE_COLOR_DODGE
#define BLEND_MODE_COLOR_DODGE 0
#elif BLEND_MODE_COLOR_DODGE==1
#undef BLEND_MODE_COLOR_DODGE
#define BLEND_MODE_COLOR_DODGE 1
#endif
#ifndef BLEND_MODE_COLOR_BURN
#define BLEND_MODE_COLOR_BURN 0
#elif BLEND_MODE_COLOR_BURN==1
#undef BLEND_MODE_COLOR_BURN
#define BLEND_MODE_COLOR_BURN 1
#endif
#ifndef BLEND_MODE_LINEAR_LIGHT
#define BLEND_MODE_LINEAR_LIGHT 0
#elif BLEND_MODE_LINEAR_LIGHT==1
#undef BLEND_MODE_LINEAR_LIGHT
#define BLEND_MODE_LINEAR_LIGHT 1
#endif
#ifndef BLEND_MODE_VIVID_LIGHT
#define BLEND_MODE_VIVID_LIGHT 0
#elif BLEND_MODE_VIVID_LIGHT==1
#undef BLEND_MODE_VIVID_LIGHT
#define BLEND_MODE_VIVID_LIGHT 1
#endif
#ifndef BLEND_MODE_PIN_LIGHT
#define BLEND_MODE_PIN_LIGHT 0
#elif BLEND_MODE_PIN_LIGHT==1
#undef BLEND_MODE_PIN_LIGHT
#define BLEND_MODE_PIN_LIGHT 1
#endif
#ifndef BLEND_MODE_HARD_MIX
#define BLEND_MODE_HARD_MIX 0
#elif BLEND_MODE_HARD_MIX==1
#undef BLEND_MODE_HARD_MIX
#define BLEND_MODE_HARD_MIX 1
#endif
#ifndef BLEND_MODE_HARD_REFLECT
#define BLEND_MODE_HARD_REFLECT 0
#elif BLEND_MODE_HARD_REFLECT==1
#undef BLEND_MODE_HARD_REFLECT
#define BLEND_MODE_HARD_REFLECT 1
#endif
#ifndef BLEND_MODE_HARD_GLOW
#define BLEND_MODE_HARD_GLOW 0
#elif BLEND_MODE_HARD_GLOW==1
#undef BLEND_MODE_HARD_GLOW
#define BLEND_MODE_HARD_GLOW 1
#endif
#ifndef BLEND_MODE_HARD_PHOENIX
#define BLEND_MODE_HARD_PHOENIX 0
#elif BLEND_MODE_HARD_PHOENIX==1
#undef BLEND_MODE_HARD_PHOENIX
#define BLEND_MODE_HARD_PHOENIX 1
#endif
#ifndef BLEND_MODE_HUE
#define BLEND_MODE_HUE 0
#elif BLEND_MODE_HUE==1
#undef BLEND_MODE_HUE
#define BLEND_MODE_HUE 1
#endif
#ifndef BLEND_MODE_SATURATION
#define BLEND_MODE_SATURATION 0
#elif BLEND_MODE_SATURATION==1
#undef BLEND_MODE_SATURATION
#define BLEND_MODE_SATURATION 1
#endif
#ifndef BLEND_MODE_COLOR
#define BLEND_MODE_COLOR 0
#elif BLEND_MODE_COLOR==1
#undef BLEND_MODE_COLOR
#define BLEND_MODE_COLOR 1
#endif
#ifndef BLEND_MODE_LUMINOSITY
#define BLEND_MODE_LUMINOSITY 0
#elif BLEND_MODE_LUMINOSITY==1
#undef BLEND_MODE_LUMINOSITY
#define BLEND_MODE_LUMINOSITY 1
#endif
#ifndef sc_SkinBonesCount
#define sc_SkinBonesCount 0
#endif
#ifndef UseViewSpaceDepthVariant
#define UseViewSpaceDepthVariant 1
#elif UseViewSpaceDepthVariant==1
#undef UseViewSpaceDepthVariant
#define UseViewSpaceDepthVariant 1
#endif
#ifndef sc_OITDepthGatherPass
#define sc_OITDepthGatherPass 0
#elif sc_OITDepthGatherPass==1
#undef sc_OITDepthGatherPass
#define sc_OITDepthGatherPass 1
#endif
#ifndef sc_OITCompositingPass
#define sc_OITCompositingPass 0
#elif sc_OITCompositingPass==1
#undef sc_OITCompositingPass
#define sc_OITCompositingPass 1
#endif
#ifndef sc_OITDepthBoundsPass
#define sc_OITDepthBoundsPass 0
#elif sc_OITDepthBoundsPass==1
#undef sc_OITDepthBoundsPass
#define sc_OITDepthBoundsPass 1
#endif
#ifndef sc_OITMaxLayers4Plus1
#define sc_OITMaxLayers4Plus1 0
#elif sc_OITMaxLayers4Plus1==1
#undef sc_OITMaxLayers4Plus1
#define sc_OITMaxLayers4Plus1 1
#endif
#ifndef sc_OITMaxLayersVisualizeLayerCount
#define sc_OITMaxLayersVisualizeLayerCount 0
#elif sc_OITMaxLayersVisualizeLayerCount==1
#undef sc_OITMaxLayersVisualizeLayerCount
#define sc_OITMaxLayersVisualizeLayerCount 1
#endif
#ifndef sc_OITMaxLayers8
#define sc_OITMaxLayers8 0
#elif sc_OITMaxLayers8==1
#undef sc_OITMaxLayers8
#define sc_OITMaxLayers8 1
#endif
#ifndef sc_OITFrontLayerPass
#define sc_OITFrontLayerPass 0
#elif sc_OITFrontLayerPass==1
#undef sc_OITFrontLayerPass
#define sc_OITFrontLayerPass 1
#endif
#ifndef sc_OITDepthPrepass
#define sc_OITDepthPrepass 0
#elif sc_OITDepthPrepass==1
#undef sc_OITDepthPrepass
#define sc_OITDepthPrepass 1
#endif
#ifndef ENABLE_STIPPLE_PATTERN_TEST
#define ENABLE_STIPPLE_PATTERN_TEST 0
#elif ENABLE_STIPPLE_PATTERN_TEST==1
#undef ENABLE_STIPPLE_PATTERN_TEST
#define ENABLE_STIPPLE_PATTERN_TEST 1
#endif
#ifndef sc_ProjectiveShadowsCaster
#define sc_ProjectiveShadowsCaster 0
#elif sc_ProjectiveShadowsCaster==1
#undef sc_ProjectiveShadowsCaster
#define sc_ProjectiveShadowsCaster 1
#endif
#ifndef sc_RenderAlphaToColor
#define sc_RenderAlphaToColor 0
#elif sc_RenderAlphaToColor==1
#undef sc_RenderAlphaToColor
#define sc_RenderAlphaToColor 1
#endif
#ifndef sc_BlendMode_Custom
#define sc_BlendMode_Custom 0
#elif sc_BlendMode_Custom==1
#undef sc_BlendMode_Custom
#define sc_BlendMode_Custom 1
#endif
#ifndef baseTexHasSwappedViews
#define baseTexHasSwappedViews 0
#elif baseTexHasSwappedViews==1
#undef baseTexHasSwappedViews
#define baseTexHasSwappedViews 1
#endif
#ifndef baseTexLayout
#define baseTexLayout 0
#endif
#ifndef opacityTexHasSwappedViews
#define opacityTexHasSwappedViews 0
#elif opacityTexHasSwappedViews==1
#undef opacityTexHasSwappedViews
#define opacityTexHasSwappedViews 1
#endif
#ifndef opacityTexLayout
#define opacityTexLayout 0
#endif
#ifndef normalTexHasSwappedViews
#define normalTexHasSwappedViews 0
#elif normalTexHasSwappedViews==1
#undef normalTexHasSwappedViews
#define normalTexHasSwappedViews 1
#endif
#ifndef normalTexLayout
#define normalTexLayout 0
#endif
#ifndef detailNormalTexHasSwappedViews
#define detailNormalTexHasSwappedViews 0
#elif detailNormalTexHasSwappedViews==1
#undef detailNormalTexHasSwappedViews
#define detailNormalTexHasSwappedViews 1
#endif
#ifndef detailNormalTexLayout
#define detailNormalTexLayout 0
#endif
#ifndef emissiveTexHasSwappedViews
#define emissiveTexHasSwappedViews 0
#elif emissiveTexHasSwappedViews==1
#undef emissiveTexHasSwappedViews
#define emissiveTexHasSwappedViews 1
#endif
#ifndef emissiveTexLayout
#define emissiveTexLayout 0
#endif
#ifndef reflectionTexHasSwappedViews
#define reflectionTexHasSwappedViews 0
#elif reflectionTexHasSwappedViews==1
#undef reflectionTexHasSwappedViews
#define reflectionTexHasSwappedViews 1
#endif
#ifndef reflectionTexLayout
#define reflectionTexLayout 0
#endif
#ifndef reflectionModulationTexHasSwappedViews
#define reflectionModulationTexHasSwappedViews 0
#elif reflectionModulationTexHasSwappedViews==1
#undef reflectionModulationTexHasSwappedViews
#define reflectionModulationTexHasSwappedViews 1
#endif
#ifndef reflectionModulationTexLayout
#define reflectionModulationTexLayout 0
#endif
#ifndef rimColorTexHasSwappedViews
#define rimColorTexHasSwappedViews 0
#elif rimColorTexHasSwappedViews==1
#undef rimColorTexHasSwappedViews
#define rimColorTexHasSwappedViews 1
#endif
#ifndef rimColorTexLayout
#define rimColorTexLayout 0
#endif
#ifndef materialParamsTexHasSwappedViews
#define materialParamsTexHasSwappedViews 0
#elif materialParamsTexHasSwappedViews==1
#undef materialParamsTexHasSwappedViews
#define materialParamsTexHasSwappedViews 1
#endif
#ifndef materialParamsTexLayout
#define materialParamsTexLayout 0
#endif
#ifndef sc_EnvLightMode
#define sc_EnvLightMode 0
#endif
#ifndef sc_AmbientLightMode_EnvironmentMap
#define sc_AmbientLightMode_EnvironmentMap 0
#endif
#ifndef sc_AmbientLightMode_FromCamera
#define sc_AmbientLightMode_FromCamera 0
#endif
#ifndef sc_LightEstimation
#define sc_LightEstimation 0
#elif sc_LightEstimation==1
#undef sc_LightEstimation
#define sc_LightEstimation 1
#endif
struct sc_LightEstimationData_t
{
sc_SphericalGaussianLight_t sg[12];
vec3 ambientLight;
};
#ifndef sc_LightEstimationSGCount
#define sc_LightEstimationSGCount 0
#endif
#ifndef sc_MaxTextureImageUnits
#define sc_MaxTextureImageUnits 0
#endif
#ifndef sc_HasDiffuseEnvmap
#define sc_HasDiffuseEnvmap 0
#elif sc_HasDiffuseEnvmap==1
#undef sc_HasDiffuseEnvmap
#define sc_HasDiffuseEnvmap 1
#endif
#ifndef sc_AmbientLightMode_SphericalHarmonics
#define sc_AmbientLightMode_SphericalHarmonics 0
#endif
#ifndef sc_AmbientLightsCount
#define sc_AmbientLightsCount 0
#endif
#ifndef sc_AmbientLightMode0
#define sc_AmbientLightMode0 0
#endif
#ifndef sc_AmbientLightMode_Constant
#define sc_AmbientLightMode_Constant 0
#endif
struct sc_AmbientLight_t
{
vec3 color;
float intensity;
};
#ifndef sc_AmbientLightMode1
#define sc_AmbientLightMode1 0
#endif
#ifndef sc_AmbientLightMode2
#define sc_AmbientLightMode2 0
#endif
#ifndef sc_DirectionalLightsCount
#define sc_DirectionalLightsCount 0
#endif
struct sc_DirectionalLight_t
{
vec3 direction;
vec4 color;
};
#ifndef sc_PointLightsCount
#define sc_PointLightsCount 0
#endif
struct sc_PointLight_t
{
bool falloffEnabled;
float falloffEndDistance;
float negRcpFalloffEndDistance4;
float angleScale;
float angleOffset;
vec3 direction;
vec3 position;
vec4 color;
};
#ifndef NODE_38_DROPLIST_ITEM
#define NODE_38_DROPLIST_ITEM 0
#endif
#ifndef ENABLE_BASE_TEX
#define ENABLE_BASE_TEX 0
#elif ENABLE_BASE_TEX==1
#undef ENABLE_BASE_TEX
#define ENABLE_BASE_TEX 1
#endif
#ifndef SC_USE_UV_TRANSFORM_baseTex
#define SC_USE_UV_TRANSFORM_baseTex 0
#elif SC_USE_UV_TRANSFORM_baseTex==1
#undef SC_USE_UV_TRANSFORM_baseTex
#define SC_USE_UV_TRANSFORM_baseTex 1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_U_baseTex
#define SC_SOFTWARE_WRAP_MODE_U_baseTex -1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_V_baseTex
#define SC_SOFTWARE_WRAP_MODE_V_baseTex -1
#endif
#ifndef SC_USE_UV_MIN_MAX_baseTex
#define SC_USE_UV_MIN_MAX_baseTex 0
#elif SC_USE_UV_MIN_MAX_baseTex==1
#undef SC_USE_UV_MIN_MAX_baseTex
#define SC_USE_UV_MIN_MAX_baseTex 1
#endif
#ifndef SC_USE_CLAMP_TO_BORDER_baseTex
#define SC_USE_CLAMP_TO_BORDER_baseTex 0
#elif SC_USE_CLAMP_TO_BORDER_baseTex==1
#undef SC_USE_CLAMP_TO_BORDER_baseTex
#define SC_USE_CLAMP_TO_BORDER_baseTex 1
#endif
#ifndef NODE_27_DROPLIST_ITEM
#define NODE_27_DROPLIST_ITEM 0
#endif
#ifndef ENABLE_RECOLOR
#define ENABLE_RECOLOR 0
#elif ENABLE_RECOLOR==1
#undef ENABLE_RECOLOR
#define ENABLE_RECOLOR 1
#endif
#ifndef ENABLE_OPACITY_TEX
#define ENABLE_OPACITY_TEX 0
#elif ENABLE_OPACITY_TEX==1
#undef ENABLE_OPACITY_TEX
#define ENABLE_OPACITY_TEX 1
#endif
#ifndef SC_USE_UV_TRANSFORM_opacityTex
#define SC_USE_UV_TRANSFORM_opacityTex 0
#elif SC_USE_UV_TRANSFORM_opacityTex==1
#undef SC_USE_UV_TRANSFORM_opacityTex
#define SC_USE_UV_TRANSFORM_opacityTex 1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_U_opacityTex
#define SC_SOFTWARE_WRAP_MODE_U_opacityTex -1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_V_opacityTex
#define SC_SOFTWARE_WRAP_MODE_V_opacityTex -1
#endif
#ifndef SC_USE_UV_MIN_MAX_opacityTex
#define SC_USE_UV_MIN_MAX_opacityTex 0
#elif SC_USE_UV_MIN_MAX_opacityTex==1
#undef SC_USE_UV_MIN_MAX_opacityTex
#define SC_USE_UV_MIN_MAX_opacityTex 1
#endif
#ifndef SC_USE_CLAMP_TO_BORDER_opacityTex
#define SC_USE_CLAMP_TO_BORDER_opacityTex 0
#elif SC_USE_CLAMP_TO_BORDER_opacityTex==1
#undef SC_USE_CLAMP_TO_BORDER_opacityTex
#define SC_USE_CLAMP_TO_BORDER_opacityTex 1
#endif
#ifndef NODE_69_DROPLIST_ITEM
#define NODE_69_DROPLIST_ITEM 0
#endif
#ifndef ENABLE_NORMALMAP
#define ENABLE_NORMALMAP 0
#elif ENABLE_NORMALMAP==1
#undef ENABLE_NORMALMAP
#define ENABLE_NORMALMAP 1
#endif
#ifndef SC_USE_UV_TRANSFORM_normalTex
#define SC_USE_UV_TRANSFORM_normalTex 0
#elif SC_USE_UV_TRANSFORM_normalTex==1
#undef SC_USE_UV_TRANSFORM_normalTex
#define SC_USE_UV_TRANSFORM_normalTex 1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_U_normalTex
#define SC_SOFTWARE_WRAP_MODE_U_normalTex -1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_V_normalTex
#define SC_SOFTWARE_WRAP_MODE_V_normalTex -1
#endif
#ifndef SC_USE_UV_MIN_MAX_normalTex
#define SC_USE_UV_MIN_MAX_normalTex 0
#elif SC_USE_UV_MIN_MAX_normalTex==1
#undef SC_USE_UV_MIN_MAX_normalTex
#define SC_USE_UV_MIN_MAX_normalTex 1
#endif
#ifndef SC_USE_CLAMP_TO_BORDER_normalTex
#define SC_USE_CLAMP_TO_BORDER_normalTex 0
#elif SC_USE_CLAMP_TO_BORDER_normalTex==1
#undef SC_USE_CLAMP_TO_BORDER_normalTex
#define SC_USE_CLAMP_TO_BORDER_normalTex 1
#endif
#ifndef NODE_181_DROPLIST_ITEM
#define NODE_181_DROPLIST_ITEM 0
#endif
#ifndef ENABLE_DETAIL_NORMAL
#define ENABLE_DETAIL_NORMAL 0
#elif ENABLE_DETAIL_NORMAL==1
#undef ENABLE_DETAIL_NORMAL
#define ENABLE_DETAIL_NORMAL 1
#endif
#ifndef SC_USE_UV_TRANSFORM_detailNormalTex
#define SC_USE_UV_TRANSFORM_detailNormalTex 0
#elif SC_USE_UV_TRANSFORM_detailNormalTex==1
#undef SC_USE_UV_TRANSFORM_detailNormalTex
#define SC_USE_UV_TRANSFORM_detailNormalTex 1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_U_detailNormalTex
#define SC_SOFTWARE_WRAP_MODE_U_detailNormalTex -1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_V_detailNormalTex
#define SC_SOFTWARE_WRAP_MODE_V_detailNormalTex -1
#endif
#ifndef SC_USE_UV_MIN_MAX_detailNormalTex
#define SC_USE_UV_MIN_MAX_detailNormalTex 0
#elif SC_USE_UV_MIN_MAX_detailNormalTex==1
#undef SC_USE_UV_MIN_MAX_detailNormalTex
#define SC_USE_UV_MIN_MAX_detailNormalTex 1
#endif
#ifndef SC_USE_CLAMP_TO_BORDER_detailNormalTex
#define SC_USE_CLAMP_TO_BORDER_detailNormalTex 0
#elif SC_USE_CLAMP_TO_BORDER_detailNormalTex==1
#undef SC_USE_CLAMP_TO_BORDER_detailNormalTex
#define SC_USE_CLAMP_TO_BORDER_detailNormalTex 1
#endif
#ifndef NODE_184_DROPLIST_ITEM
#define NODE_184_DROPLIST_ITEM 0
#endif
#ifndef ENABLE_EMISSIVE
#define ENABLE_EMISSIVE 0
#elif ENABLE_EMISSIVE==1
#undef ENABLE_EMISSIVE
#define ENABLE_EMISSIVE 1
#endif
#ifndef SC_USE_UV_TRANSFORM_emissiveTex
#define SC_USE_UV_TRANSFORM_emissiveTex 0
#elif SC_USE_UV_TRANSFORM_emissiveTex==1
#undef SC_USE_UV_TRANSFORM_emissiveTex
#define SC_USE_UV_TRANSFORM_emissiveTex 1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_U_emissiveTex
#define SC_SOFTWARE_WRAP_MODE_U_emissiveTex -1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_V_emissiveTex
#define SC_SOFTWARE_WRAP_MODE_V_emissiveTex -1
#endif
#ifndef SC_USE_UV_MIN_MAX_emissiveTex
#define SC_USE_UV_MIN_MAX_emissiveTex 0
#elif SC_USE_UV_MIN_MAX_emissiveTex==1
#undef SC_USE_UV_MIN_MAX_emissiveTex
#define SC_USE_UV_MIN_MAX_emissiveTex 1
#endif
#ifndef SC_USE_CLAMP_TO_BORDER_emissiveTex
#define SC_USE_CLAMP_TO_BORDER_emissiveTex 0
#elif SC_USE_CLAMP_TO_BORDER_emissiveTex==1
#undef SC_USE_CLAMP_TO_BORDER_emissiveTex
#define SC_USE_CLAMP_TO_BORDER_emissiveTex 1
#endif
#ifndef NODE_76_DROPLIST_ITEM
#define NODE_76_DROPLIST_ITEM 0
#endif
#ifndef ENABLE_SIMPLE_REFLECTION
#define ENABLE_SIMPLE_REFLECTION 0
#elif ENABLE_SIMPLE_REFLECTION==1
#undef ENABLE_SIMPLE_REFLECTION
#define ENABLE_SIMPLE_REFLECTION 1
#endif
#ifndef SC_USE_UV_TRANSFORM_reflectionTex
#define SC_USE_UV_TRANSFORM_reflectionTex 0
#elif SC_USE_UV_TRANSFORM_reflectionTex==1
#undef SC_USE_UV_TRANSFORM_reflectionTex
#define SC_USE_UV_TRANSFORM_reflectionTex 1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_U_reflectionTex
#define SC_SOFTWARE_WRAP_MODE_U_reflectionTex -1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_V_reflectionTex
#define SC_SOFTWARE_WRAP_MODE_V_reflectionTex -1
#endif
#ifndef SC_USE_UV_MIN_MAX_reflectionTex
#define SC_USE_UV_MIN_MAX_reflectionTex 0
#elif SC_USE_UV_MIN_MAX_reflectionTex==1
#undef SC_USE_UV_MIN_MAX_reflectionTex
#define SC_USE_UV_MIN_MAX_reflectionTex 1
#endif
#ifndef SC_USE_CLAMP_TO_BORDER_reflectionTex
#define SC_USE_CLAMP_TO_BORDER_reflectionTex 0
#elif SC_USE_CLAMP_TO_BORDER_reflectionTex==1
#undef SC_USE_CLAMP_TO_BORDER_reflectionTex
#define SC_USE_CLAMP_TO_BORDER_reflectionTex 1
#endif
#ifndef Tweak_N177
#define Tweak_N177 0
#elif Tweak_N177==1
#undef Tweak_N177
#define Tweak_N177 1
#endif
#ifndef NODE_228_DROPLIST_ITEM
#define NODE_228_DROPLIST_ITEM 0
#endif
#ifndef SC_USE_UV_TRANSFORM_reflectionModulationTex
#define SC_USE_UV_TRANSFORM_reflectionModulationTex 0
#elif SC_USE_UV_TRANSFORM_reflectionModulationTex==1
#undef SC_USE_UV_TRANSFORM_reflectionModulationTex
#define SC_USE_UV_TRANSFORM_reflectionModulationTex 1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_U_reflectionModulationTex
#define SC_SOFTWARE_WRAP_MODE_U_reflectionModulationTex -1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_V_reflectionModulationTex
#define SC_SOFTWARE_WRAP_MODE_V_reflectionModulationTex -1
#endif
#ifndef SC_USE_UV_MIN_MAX_reflectionModulationTex
#define SC_USE_UV_MIN_MAX_reflectionModulationTex 0
#elif SC_USE_UV_MIN_MAX_reflectionModulationTex==1
#undef SC_USE_UV_MIN_MAX_reflectionModulationTex
#define SC_USE_UV_MIN_MAX_reflectionModulationTex 1
#endif
#ifndef SC_USE_CLAMP_TO_BORDER_reflectionModulationTex
#define SC_USE_CLAMP_TO_BORDER_reflectionModulationTex 0
#elif SC_USE_CLAMP_TO_BORDER_reflectionModulationTex==1
#undef SC_USE_CLAMP_TO_BORDER_reflectionModulationTex
#define SC_USE_CLAMP_TO_BORDER_reflectionModulationTex 1
#endif
#ifndef ENABLE_RIM_HIGHLIGHT
#define ENABLE_RIM_HIGHLIGHT 0
#elif ENABLE_RIM_HIGHLIGHT==1
#undef ENABLE_RIM_HIGHLIGHT
#define ENABLE_RIM_HIGHLIGHT 1
#endif
#ifndef Tweak_N216
#define Tweak_N216 0
#elif Tweak_N216==1
#undef Tweak_N216
#define Tweak_N216 1
#endif
#ifndef ENABLE_RIM_INVERT
#define ENABLE_RIM_INVERT 0
#elif ENABLE_RIM_INVERT==1
#undef ENABLE_RIM_INVERT
#define ENABLE_RIM_INVERT 1
#endif
#ifndef SC_USE_UV_TRANSFORM_rimColorTex
#define SC_USE_UV_TRANSFORM_rimColorTex 0
#elif SC_USE_UV_TRANSFORM_rimColorTex==1
#undef SC_USE_UV_TRANSFORM_rimColorTex
#define SC_USE_UV_TRANSFORM_rimColorTex 1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_U_rimColorTex
#define SC_SOFTWARE_WRAP_MODE_U_rimColorTex -1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_V_rimColorTex
#define SC_SOFTWARE_WRAP_MODE_V_rimColorTex -1
#endif
#ifndef SC_USE_UV_MIN_MAX_rimColorTex
#define SC_USE_UV_MIN_MAX_rimColorTex 0
#elif SC_USE_UV_MIN_MAX_rimColorTex==1
#undef SC_USE_UV_MIN_MAX_rimColorTex
#define SC_USE_UV_MIN_MAX_rimColorTex 1
#endif
#ifndef SC_USE_CLAMP_TO_BORDER_rimColorTex
#define SC_USE_CLAMP_TO_BORDER_rimColorTex 0
#elif SC_USE_CLAMP_TO_BORDER_rimColorTex==1
#undef SC_USE_CLAMP_TO_BORDER_rimColorTex
#define SC_USE_CLAMP_TO_BORDER_rimColorTex 1
#endif
#ifndef NODE_315_DROPLIST_ITEM
#define NODE_315_DROPLIST_ITEM 0
#endif
#ifndef ENABLE_MATERIAL_PARAM_TEX
#define ENABLE_MATERIAL_PARAM_TEX 0
#elif ENABLE_MATERIAL_PARAM_TEX==1
#undef ENABLE_MATERIAL_PARAM_TEX
#define ENABLE_MATERIAL_PARAM_TEX 1
#endif
#ifndef SC_USE_UV_TRANSFORM_materialParamsTex
#define SC_USE_UV_TRANSFORM_materialParamsTex 0
#elif SC_USE_UV_TRANSFORM_materialParamsTex==1
#undef SC_USE_UV_TRANSFORM_materialParamsTex
#define SC_USE_UV_TRANSFORM_materialParamsTex 1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_U_materialParamsTex
#define SC_SOFTWARE_WRAP_MODE_U_materialParamsTex -1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_V_materialParamsTex
#define SC_SOFTWARE_WRAP_MODE_V_materialParamsTex -1
#endif
#ifndef SC_USE_UV_MIN_MAX_materialParamsTex
#define SC_USE_UV_MIN_MAX_materialParamsTex 0
#elif SC_USE_UV_MIN_MAX_materialParamsTex==1
#undef SC_USE_UV_MIN_MAX_materialParamsTex
#define SC_USE_UV_MIN_MAX_materialParamsTex 1
#endif
#ifndef SC_USE_CLAMP_TO_BORDER_materialParamsTex
#define SC_USE_CLAMP_TO_BORDER_materialParamsTex 0
#elif SC_USE_CLAMP_TO_BORDER_materialParamsTex==1
#undef SC_USE_CLAMP_TO_BORDER_materialParamsTex
#define SC_USE_CLAMP_TO_BORDER_materialParamsTex 1
#endif
#ifndef NODE_221_DROPLIST_ITEM
#define NODE_221_DROPLIST_ITEM 0
#endif
#ifndef ENABLE_SPECULAR_AO
#define ENABLE_SPECULAR_AO 0
#elif ENABLE_SPECULAR_AO==1
#undef ENABLE_SPECULAR_AO
#define ENABLE_SPECULAR_AO 1
#endif
#ifndef ENABLE_UV2
#define ENABLE_UV2 0
#elif ENABLE_UV2==1
#undef ENABLE_UV2
#define ENABLE_UV2 1
#endif
#ifndef NODE_13_DROPLIST_ITEM
#define NODE_13_DROPLIST_ITEM 0
#endif
#ifndef uv2EnableAnimation
#define uv2EnableAnimation 0
#elif uv2EnableAnimation==1
#undef uv2EnableAnimation
#define uv2EnableAnimation 1
#endif
#ifndef ENABLE_UV3
#define ENABLE_UV3 0
#elif ENABLE_UV3==1
#undef ENABLE_UV3
#define ENABLE_UV3 1
#endif
#ifndef NODE_49_DROPLIST_ITEM
#define NODE_49_DROPLIST_ITEM 0
#endif
#ifndef uv3EnableAnimation
#define uv3EnableAnimation 0
#elif uv3EnableAnimation==1
#undef uv3EnableAnimation
#define uv3EnableAnimation 1
#endif
#ifndef sc_DepthOnly
#define sc_DepthOnly 0
#elif sc_DepthOnly==1
#undef sc_DepthOnly
#define sc_DepthOnly 1
#endif
struct sc_Camera_t
{
vec3 position;
float aspect;
vec2 clipPlanes;
};
layout(binding=1,std430) readonly buffer layoutVertices
{
float _Vertices[1];
} layoutVertices_obj;
layout(binding=2,std430) readonly buffer layoutVerticesPN
{
float _VerticesPN[1];
} layoutVerticesPN_obj;
layout(binding=0,std430) readonly buffer layoutIndices
{
uint _Triangles[1];
} layoutIndices_obj;
uniform bool receivesRayTracedReflections;
uniform bool isProxyMode;
uniform bool receivesRayTracedShadows;
uniform bool receivesRayTracedDiffuseIndirect;
uniform bool receivesRayTracedAo;
uniform bool noEarlyZ;
uniform vec4 sc_CurrentRenderTargetDims;
uniform mat4 sc_ProjectionMatrixArray[sc_NumStereoViews];
uniform float sc_ShadowDensity;
uniform vec4 sc_ShadowColor;
uniform mat4 sc_ViewProjectionMatrixArray[sc_NumStereoViews];
uniform mat4 sc_PrevFrameViewProjectionMatrixArray[sc_NumStereoViews];
uniform mat4 sc_PrevFrameModelMatrix;
uniform mat4 sc_ModelMatrixInverse;
uniform float shaderComplexityValue;
uniform vec4 sc_UniformConstants;
uniform float _sc_framebufferFetchMarker;
uniform float _sc_GetFramebufferColorInvalidUsageMarker;
uniform int emitter_stride;
uniform int proxy_offset_position;
uniform int proxy_format_position;
uniform int proxy_offset_normal;
uniform int proxy_format_normal;
uniform int proxy_offset_tangent;
uniform int proxy_format_tangent;
uniform int proxy_offset_color;
uniform int proxy_format_color;
uniform int proxy_offset_texture0;
uniform int proxy_format_texture0;
uniform int proxy_offset_texture1;
uniform int proxy_format_texture1;
uniform int proxy_offset_texture2;
uniform int proxy_format_texture2;
uniform int proxy_offset_texture3;
uniform int proxy_format_texture3;
uniform int lray_triangles_last;
uniform int instance_id;
uniform bool has_animated_pn;
uniform mat4 sc_ModelMatrix;
uniform mat3 sc_NormalMatrix;
uniform float correctedIntensity;
uniform mat3 intensityTextureTransform;
uniform vec4 intensityTextureUvMinMax;
uniform vec4 intensityTextureBorderColor;
uniform float alphaTestThreshold;
uniform sc_LightEstimationData_t sc_LightEstimationData;
uniform vec3 sc_EnvmapRotation;
uniform vec4 sc_EnvmapSpecularSize;
uniform vec4 sc_EnvmapDiffuseSize;
uniform float sc_EnvmapExposure;
uniform vec3 sc_Sh[9];
uniform float sc_ShIntensity;
uniform sc_AmbientLight_t sc_AmbientLights[sc_AmbientLightsCount+1];
uniform sc_DirectionalLight_t sc_DirectionalLights[sc_DirectionalLightsCount+1];
uniform sc_PointLight_t sc_PointLights[sc_PointLightsCount+1];
uniform mat3 baseTexTransform;
uniform vec4 baseTexUvMinMax;
uniform vec4 baseTexBorderColor;
uniform mat3 opacityTexTransform;
uniform vec4 opacityTexUvMinMax;
uniform vec4 opacityTexBorderColor;
uniform mat3 normalTexTransform;
uniform vec4 normalTexUvMinMax;
uniform vec4 normalTexBorderColor;
uniform mat3 detailNormalTexTransform;
uniform vec4 detailNormalTexUvMinMax;
uniform vec4 detailNormalTexBorderColor;
uniform mat3 emissiveTexTransform;
uniform vec4 emissiveTexUvMinMax;
uniform vec4 emissiveTexBorderColor;
uniform mat3 reflectionTexTransform;
uniform vec4 reflectionTexUvMinMax;
uniform vec4 reflectionTexBorderColor;
uniform mat3 reflectionModulationTexTransform;
uniform vec4 reflectionModulationTexUvMinMax;
uniform vec4 reflectionModulationTexBorderColor;
uniform mat3 rimColorTexTransform;
uniform vec4 rimColorTexUvMinMax;
uniform vec4 rimColorTexBorderColor;
uniform mat3 materialParamsTexTransform;
uniform vec4 materialParamsTexUvMinMax;
uniform vec4 materialParamsTexBorderColor;
uniform vec4 baseColor;
uniform vec3 recolorRed;
uniform vec3 recolorGreen;
uniform vec3 recolorBlue;
uniform vec3 emissiveColor;
uniform float emissiveIntensity;
uniform float reflectionIntensity;
uniform vec3 rimColor;
uniform float rimIntensity;
uniform float rimExponent;
uniform float metallic;
uniform float roughness;
uniform float specularAoIntensity;
uniform float specularAoDarkening;
uniform vec2 uv2Scale;
uniform vec2 uv2Offset;
uniform vec2 uv3Scale;
uniform vec2 uv3Offset;
uniform vec4 sc_Time;
uniform sc_Camera_t sc_Camera;
uniform int PreviewEnabled;
uniform usampler2D z_hitIdAndBarycentric;
uniform sampler2D z_rayDirections;
uniform sampler2D baseTex;
uniform sampler2DArray baseTexArrSC;
uniform sampler2D opacityTex;
uniform sampler2DArray opacityTexArrSC;
uniform sampler2D normalTex;
uniform sampler2DArray normalTexArrSC;
uniform sampler2D detailNormalTex;
uniform sampler2DArray detailNormalTexArrSC;
uniform sampler2D emissiveTex;
uniform sampler2DArray emissiveTexArrSC;
uniform sampler2D reflectionTex;
uniform sampler2DArray reflectionTexArrSC;
uniform sampler2D reflectionModulationTex;
uniform sampler2DArray reflectionModulationTexArrSC;
uniform sampler2D rimColorTex;
uniform sampler2DArray rimColorTexArrSC;
uniform sampler2D materialParamsTex;
uniform sampler2DArray materialParamsTexArrSC;
uniform sampler2D sc_SSAOTexture;
uniform sampler2D sc_ShadowTexture;
uniform sampler2D sc_RayTracedShadowTexture;
uniform sampler2DArray sc_RayTracedShadowTextureArrSC;
uniform sampler2D sc_EnvmapSpecular;
uniform sampler2DArray sc_EnvmapSpecularArrSC;
uniform sampler2D sc_EnvmapDiffuse;
uniform sampler2DArray sc_EnvmapDiffuseArrSC;
uniform sampler2D sc_RayTracedDiffIndTexture;
uniform sampler2DArray sc_RayTracedDiffIndTextureArrSC;
uniform sampler2D sc_RayTracedReflectionTexture;
uniform sampler2DArray sc_RayTracedReflectionTextureArrSC;
uniform sampler2D sc_ScreenTexture;
uniform sampler2DArray sc_ScreenTextureArrSC;
uniform sampler2D sc_RayTracedAoTexture;
uniform sampler2DArray sc_RayTracedAoTextureArrSC;
uniform sampler2D intensityTexture;
uniform sampler2DArray intensityTextureArrSC;
uniform sampler2D sc_OITFrontDepthTexture;
uniform sampler2D sc_OITDepthHigh0;
uniform sampler2D sc_OITDepthLow0;
uniform sampler2D sc_OITAlpha0;
uniform sampler2D sc_OITDepthHigh1;
uniform sampler2D sc_OITDepthLow1;
uniform sampler2D sc_OITAlpha1;
uniform sampler2D sc_OITFilteredDepthBoundsTexture;
flat in int varStereoViewID;
in vec2 varShadowTex;
in float varClipDistance;
in float varViewSpaceDepth;
in vec4 PreviewVertexColor;
in float PreviewVertexSaved;
in vec3 varPos;
in vec3 varNormal;
in vec4 varTangent;
in vec4 varPackedTex;
in vec4 varColor;
in vec4 varScreenPos;
in vec2 varScreenTexturePos;
bool N7_EnableUV2;
ssGlobals tempGlobals;
int sc_GetStereoViewIndex()
{
int l9_0;
#if (sc_StereoRenderingMode==0)
{
l9_0=0;
}
#else
{
l9_0=varStereoViewID;
}
#endif
return l9_0;
}
vec2 sc_SamplingCoordsGlobalToView(vec3 uvi,int renderingLayout,int viewIndex)
{
if (renderingLayout==1)
{
uvi.y=((2.0*uvi.y)+float(viewIndex))-1.0;
}
return uvi.xy;
}
vec2 sc_ScreenCoordsGlobalToView(vec2 uv)
{
vec2 l9_0;
#if (sc_StereoRenderingMode==1)
{
l9_0=sc_SamplingCoordsGlobalToView(vec3(uv,0.0),1,sc_GetStereoViewIndex());
}
#else
{
l9_0=uv;
}
#endif
return l9_0;
}
vec3 interp_float3_animated(vec3 brc,ivec3 indices,int offset)
{
ivec3 l9_0=(indices*ivec3(6))+ivec3(offset);
int l9_1=l9_0.x;
int l9_2=l9_0.y;
int l9_3=l9_0.z;
return ((vec3(layoutVerticesPN_obj._VerticesPN[l9_1],layoutVerticesPN_obj._VerticesPN[l9_1+1],layoutVerticesPN_obj._VerticesPN[l9_1+2])*brc.x)+(vec3(layoutVerticesPN_obj._VerticesPN[l9_2],layoutVerticesPN_obj._VerticesPN[l9_2+1],layoutVerticesPN_obj._VerticesPN[l9_2+2])*brc.y))+(vec3(layoutVerticesPN_obj._VerticesPN[l9_3],layoutVerticesPN_obj._VerticesPN[l9_3+1],layoutVerticesPN_obj._VerticesPN[l9_3+2])*brc.z);
}
vec4 fetch_unorm_byte4(int offset)
{
uint l9_0=floatBitsToUint(layoutVertices_obj._Vertices[offset]);
return vec4(float(l9_0&255u),float((l9_0>>uint(8))&255u),float((l9_0>>uint(16))&255u),float((l9_0>>uint(24))&255u))/vec4(255.0);
}
RayHitPayload GetHitData(ivec2 screenPos)
{
ivec2 l9_0=screenPos;
uvec4 l9_1=texelFetch(z_hitIdAndBarycentric,l9_0,0);
uvec2 l9_2=l9_1.xy;
if (l9_1.x!=uint(instance_id))
{
return RayHitPayload(vec3(0.0),vec3(0.0),vec3(0.0),vec4(0.0),vec4(0.0),vec2(0.0),vec2(0.0),vec2(0.0),vec2(0.0),l9_2);
}
vec2 l9_3=unpackHalf2x16(l9_1.z|(l9_1.w<<uint(16)));
float l9_4=l9_3.x;
float l9_5=l9_3.y;
float l9_6=(1.0-l9_4)-l9_5;
vec3 l9_7=vec3(l9_6,l9_4,l9_5);
ivec2 l9_8=screenPos;
vec4 l9_9=texelFetch(z_rayDirections,l9_8,0);
float l9_10=l9_9.x;
float l9_11=l9_9.y;
float l9_12=(1.0-abs(l9_10))-abs(l9_11);
vec3 l9_13=vec3(l9_10,l9_11,l9_12);
float l9_14=clamp(-l9_12,0.0,1.0);
float l9_15;
if (l9_10>=0.0)
{
l9_15=-l9_14;
}
else
{
l9_15=l9_14;
}
float l9_16;
if (l9_11>=0.0)
{
l9_16=-l9_14;
}
else
{
l9_16=l9_14;
}
vec2 l9_17=vec2(l9_15,l9_16);
vec2 l9_18=l9_13.xy+l9_17;
uint l9_19=min(l9_1.y,uint(lray_triangles_last))*6u;
uint l9_20=l9_19&4294967292u;
uint l9_21=l9_20/4u;
uint l9_22=layoutIndices_obj._Triangles[l9_21];
uint l9_23=l9_21+1u;
uint l9_24=layoutIndices_obj._Triangles[l9_23];
uvec4 l9_25=(uvec4(l9_22,l9_22,l9_24,l9_24)&uvec4(65535u,4294967295u,65535u,4294967295u))>>uvec4(0u,16u,0u,16u);
ivec3 l9_26;
if (l9_19==l9_20)
{
l9_26=ivec3(l9_25.xyz);
}
else
{
l9_26=ivec3(l9_25.yzw);
}
vec3 l9_27;
if (has_animated_pn)
{
l9_27=interp_float3_animated(l9_7,l9_26,0);
}
else
{
int l9_28=(l9_26.x*emitter_stride)+proxy_offset_position;
int l9_29=(l9_26.y*emitter_stride)+proxy_offset_position;
int l9_30=(l9_26.z*emitter_stride)+proxy_offset_position;
vec3 l9_31;
if (proxy_format_position==5)
{
l9_31=((vec3(layoutVertices_obj._Vertices[l9_28],layoutVertices_obj._Vertices[l9_28+1],layoutVertices_obj._Vertices[l9_28+2])*l9_6)+(vec3(layoutVertices_obj._Vertices[l9_29],layoutVertices_obj._Vertices[l9_29+1],layoutVertices_obj._Vertices[l9_29+2])*l9_4))+(vec3(layoutVertices_obj._Vertices[l9_30],layoutVertices_obj._Vertices[l9_30+1],layoutVertices_obj._Vertices[l9_30+2])*l9_5);
}
else
{
vec3 l9_32;
if (proxy_format_position==6)
{
l9_32=((vec3(unpackHalf2x16(floatBitsToUint(layoutVertices_obj._Vertices[l9_28])),unpackHalf2x16(floatBitsToUint(layoutVertices_obj._Vertices[l9_28+1])).x)*l9_6)+(vec3(unpackHalf2x16(floatBitsToUint(layoutVertices_obj._Vertices[l9_29])),unpackHalf2x16(floatBitsToUint(layoutVertices_obj._Vertices[l9_29+1])).x)*l9_4))+(vec3(unpackHalf2x16(floatBitsToUint(layoutVertices_obj._Vertices[l9_30])),unpackHalf2x16(floatBitsToUint(layoutVertices_obj._Vertices[l9_30+1])).x)*l9_5);
}
else
{
l9_32=vec3(1.0,0.0,0.0);
}
l9_31=l9_32;
}
l9_27=(sc_ModelMatrix*vec4(l9_31,1.0)).xyz;
}
vec3 l9_33;
if (proxy_offset_normal>0)
{
vec3 l9_34;
if (has_animated_pn)
{
l9_34=interp_float3_animated(l9_7,l9_26,3);
}
else
{
int l9_35=(l9_26.x*emitter_stride)+proxy_offset_normal;
int l9_36=(l9_26.y*emitter_stride)+proxy_offset_normal;
int l9_37=(l9_26.z*emitter_stride)+proxy_offset_normal;
vec3 l9_38;
if (proxy_format_normal==5)
{
l9_38=((vec3(layoutVertices_obj._Vertices[l9_35],layoutVertices_obj._Vertices[l9_35+1],layoutVertices_obj._Vertices[l9_35+2])*l9_6)+(vec3(layoutVertices_obj._Vertices[l9_36],layoutVertices_obj._Vertices[l9_36+1],layoutVertices_obj._Vertices[l9_36+2])*l9_4))+(vec3(layoutVertices_obj._Vertices[l9_37],layoutVertices_obj._Vertices[l9_37+1],layoutVertices_obj._Vertices[l9_37+2])*l9_5);
}
else
{
vec3 l9_39;
if (proxy_format_normal==6)
{
l9_39=((vec3(unpackHalf2x16(floatBitsToUint(layoutVertices_obj._Vertices[l9_35])),unpackHalf2x16(floatBitsToUint(layoutVertices_obj._Vertices[l9_35+1])).x)*l9_6)+(vec3(unpackHalf2x16(floatBitsToUint(layoutVertices_obj._Vertices[l9_36])),unpackHalf2x16(floatBitsToUint(layoutVertices_obj._Vertices[l9_36+1])).x)*l9_4))+(vec3(unpackHalf2x16(floatBitsToUint(layoutVertices_obj._Vertices[l9_37])),unpackHalf2x16(floatBitsToUint(layoutVertices_obj._Vertices[l9_37+1])).x)*l9_5);
}
else
{
l9_39=vec3(1.0,0.0,0.0);
}
l9_38=l9_39;
}
l9_34=normalize(sc_NormalMatrix*l9_38);
}
l9_33=l9_34;
}
else
{
l9_33=vec3(1.0,0.0,0.0);
}
vec4 l9_40;
if ((!has_animated_pn)&&(proxy_offset_tangent>0))
{
int l9_41=(l9_26.x*emitter_stride)+proxy_offset_tangent;
int l9_42=(l9_26.y*emitter_stride)+proxy_offset_tangent;
int l9_43=(l9_26.z*emitter_stride)+proxy_offset_tangent;
vec4 l9_44;
if (proxy_format_tangent==5)
{
l9_44=((vec4(layoutVertices_obj._Vertices[l9_41],layoutVertices_obj._Vertices[l9_41+1],layoutVertices_obj._Vertices[l9_41+2],layoutVertices_obj._Vertices[l9_41+3])*l9_6)+(vec4(layoutVertices_obj._Vertices[l9_42],layoutVertices_obj._Vertices[l9_42+1],layoutVertices_obj._Vertices[l9_42+2],layoutVertices_obj._Vertices[l9_42+3])*l9_4))+(vec4(layoutVertices_obj._Vertices[l9_43],layoutVertices_obj._Vertices[l9_43+1],layoutVertices_obj._Vertices[l9_43+2],layoutVertices_obj._Vertices[l9_43+3])*l9_5);
}
else
{
vec4 l9_45;
if (proxy_format_tangent==6)
{
l9_45=((vec4(unpackHalf2x16(floatBitsToUint(layoutVertices_obj._Vertices[l9_41])),unpackHalf2x16(floatBitsToUint(layoutVertices_obj._Vertices[l9_41+1])))*l9_6)+(vec4(unpackHalf2x16(floatBitsToUint(layoutVertices_obj._Vertices[l9_42])),unpackHalf2x16(floatBitsToUint(layoutVertices_obj._Vertices[l9_42+1])))*l9_4))+(vec4(unpackHalf2x16(floatBitsToUint(layoutVertices_obj._Vertices[l9_43])),unpackHalf2x16(floatBitsToUint(layoutVertices_obj._Vertices[l9_43+1])))*l9_5);
}
else
{
vec4 l9_46;
if (proxy_format_tangent==2)
{
l9_46=((fetch_unorm_byte4(l9_41)*l9_6)+(fetch_unorm_byte4(l9_42)*l9_4))+(fetch_unorm_byte4(l9_43)*l9_5);
}
else
{
l9_46=vec4(1.0,0.0,0.0,0.0);
}
l9_45=l9_46;
}
l9_44=l9_45;
}
l9_40=vec4(normalize(sc_NormalMatrix*l9_44.xyz),l9_44.w);
}
else
{
l9_40=vec4(1.0,0.0,0.0,1.0);
}
vec4 l9_47;
if (proxy_format_color>0)
{
int l9_48=(l9_26.x*emitter_stride)+proxy_offset_color;
int l9_49=(l9_26.y*emitter_stride)+proxy_offset_color;
int l9_50=(l9_26.z*emitter_stride)+proxy_offset_color;
vec4 l9_51;
if (proxy_format_color==5)
{
l9_51=((vec4(layoutVertices_obj._Vertices[l9_48],layoutVertices_obj._Vertices[l9_48+1],layoutVertices_obj._Vertices[l9_48+2],layoutVertices_obj._Vertices[l9_48+3])*l9_6)+(vec4(layoutVertices_obj._Vertices[l9_49],layoutVertices_obj._Vertices[l9_49+1],layoutVertices_obj._Vertices[l9_49+2],layoutVertices_obj._Vertices[l9_49+3])*l9_4))+(vec4(layoutVertices_obj._Vertices[l9_50],layoutVertices_obj._Vertices[l9_50+1],layoutVertices_obj._Vertices[l9_50+2],layoutVertices_obj._Vertices[l9_50+3])*l9_5);
}
else
{
vec4 l9_52;
if (proxy_format_color==6)
{
l9_52=((vec4(unpackHalf2x16(floatBitsToUint(layoutVertices_obj._Vertices[l9_48])),unpackHalf2x16(floatBitsToUint(layoutVertices_obj._Vertices[l9_48+1])))*l9_6)+(vec4(unpackHalf2x16(floatBitsToUint(layoutVertices_obj._Vertices[l9_49])),unpackHalf2x16(floatBitsToUint(layoutVertices_obj._Vertices[l9_49+1])))*l9_4))+(vec4(unpackHalf2x16(floatBitsToUint(layoutVertices_obj._Vertices[l9_50])),unpackHalf2x16(floatBitsToUint(layoutVertices_obj._Vertices[l9_50+1])))*l9_5);
}
else
{
vec4 l9_53;
if (proxy_format_color==2)
{
l9_53=((fetch_unorm_byte4(l9_48)*l9_6)+(fetch_unorm_byte4(l9_49)*l9_4))+(fetch_unorm_byte4(l9_50)*l9_5);
}
else
{
l9_53=vec4(1.0,0.0,0.0,0.0);
}
l9_52=l9_53;
}
l9_51=l9_52;
}
l9_47=l9_51;
}
else
{
l9_47=vec4(0.0);
}
ivec3 l9_54=l9_26%ivec3(2);
vec2 l9_55=vec2(dot(l9_7,vec3(ivec3(1)-l9_54)),0.0);
vec2 l9_56;
if (proxy_format_texture0>0)
{
int l9_57=(l9_26.x*emitter_stride)+proxy_offset_texture0;
int l9_58=(l9_26.y*emitter_stride)+proxy_offset_texture0;
int l9_59=(l9_26.z*emitter_stride)+proxy_offset_texture0;
vec2 l9_60;
if (proxy_format_texture0==5)
{
l9_60=((vec2(layoutVertices_obj._Vertices[l9_57],layoutVertices_obj._Vertices[l9_57+1])*l9_6)+(vec2(layoutVertices_obj._Vertices[l9_58],layoutVertices_obj._Vertices[l9_58+1])*l9_4))+(vec2(layoutVertices_obj._Vertices[l9_59],layoutVertices_obj._Vertices[l9_59+1])*l9_5);
}
else
{
vec2 l9_61;
if (proxy_format_texture0==6)
{
l9_61=((unpackHalf2x16(floatBitsToUint(layoutVertices_obj._Vertices[l9_57]))*l9_6)+(unpackHalf2x16(floatBitsToUint(layoutVertices_obj._Vertices[l9_58]))*l9_4))+(unpackHalf2x16(floatBitsToUint(layoutVertices_obj._Vertices[l9_59]))*l9_5);
}
else
{
l9_61=vec2(1.0,0.0);
}
l9_60=l9_61;
}
l9_56=l9_60;
}
else
{
l9_56=l9_55;
}
vec2 l9_62;
if (proxy_format_texture1>0)
{
int l9_63=(l9_26.x*emitter_stride)+proxy_offset_texture1;
int l9_64=(l9_26.y*emitter_stride)+proxy_offset_texture1;
int l9_65=(l9_26.z*emitter_stride)+proxy_offset_texture1;
vec2 l9_66;
if (proxy_format_texture1==5)
{
l9_66=((vec2(layoutVertices_obj._Vertices[l9_63],layoutVertices_obj._Vertices[l9_63+1])*l9_6)+(vec2(layoutVertices_obj._Vertices[l9_64],layoutVertices_obj._Vertices[l9_64+1])*l9_4))+(vec2(layoutVertices_obj._Vertices[l9_65],layoutVertices_obj._Vertices[l9_65+1])*l9_5);
}
else
{
vec2 l9_67;
if (proxy_format_texture1==6)
{
l9_67=((unpackHalf2x16(floatBitsToUint(layoutVertices_obj._Vertices[l9_63]))*l9_6)+(unpackHalf2x16(floatBitsToUint(layoutVertices_obj._Vertices[l9_64]))*l9_4))+(unpackHalf2x16(floatBitsToUint(layoutVertices_obj._Vertices[l9_65]))*l9_5);
}
else
{
l9_67=vec2(1.0,0.0);
}
l9_66=l9_67;
}
l9_62=l9_66;
}
else
{
l9_62=l9_55;
}
vec2 l9_68;
if (proxy_format_texture2>0)
{
int l9_69=(l9_26.x*emitter_stride)+proxy_offset_texture2;
int l9_70=(l9_26.y*emitter_stride)+proxy_offset_texture2;
int l9_71=(l9_26.z*emitter_stride)+proxy_offset_texture2;
vec2 l9_72;
if (proxy_format_texture2==5)
{
l9_72=((vec2(layoutVertices_obj._Vertices[l9_69],layoutVertices_obj._Vertices[l9_69+1])*l9_6)+(vec2(layoutVertices_obj._Vertices[l9_70],layoutVertices_obj._Vertices[l9_70+1])*l9_4))+(vec2(layoutVertices_obj._Vertices[l9_71],layoutVertices_obj._Vertices[l9_71+1])*l9_5);
}
else
{
vec2 l9_73;
if (proxy_format_texture2==6)
{
l9_73=((unpackHalf2x16(floatBitsToUint(layoutVertices_obj._Vertices[l9_69]))*l9_6)+(unpackHalf2x16(floatBitsToUint(layoutVertices_obj._Vertices[l9_70]))*l9_4))+(unpackHalf2x16(floatBitsToUint(layoutVertices_obj._Vertices[l9_71]))*l9_5);
}
else
{
l9_73=vec2(1.0,0.0);
}
l9_72=l9_73;
}
l9_68=l9_72;
}
else
{
l9_68=l9_55;
}
vec2 l9_74;
if (proxy_format_texture3>0)
{
int l9_75=(l9_26.x*emitter_stride)+proxy_offset_texture3;
int l9_76=(l9_26.y*emitter_stride)+proxy_offset_texture3;
int l9_77=(l9_26.z*emitter_stride)+proxy_offset_texture3;
vec2 l9_78;
if (proxy_format_texture3==5)
{
l9_78=((vec2(layoutVertices_obj._Vertices[l9_75],layoutVertices_obj._Vertices[l9_75+1])*l9_6)+(vec2(layoutVertices_obj._Vertices[l9_76],layoutVertices_obj._Vertices[l9_76+1])*l9_4))+(vec2(layoutVertices_obj._Vertices[l9_77],layoutVertices_obj._Vertices[l9_77+1])*l9_5);
}
else
{
vec2 l9_79;
if (proxy_format_texture3==6)
{
l9_79=((unpackHalf2x16(floatBitsToUint(layoutVertices_obj._Vertices[l9_75]))*l9_6)+(unpackHalf2x16(floatBitsToUint(layoutVertices_obj._Vertices[l9_76]))*l9_4))+(unpackHalf2x16(floatBitsToUint(layoutVertices_obj._Vertices[l9_77]))*l9_5);
}
else
{
l9_79=vec2(1.0,0.0);
}
l9_78=l9_79;
}
l9_74=l9_78;
}
else
{
l9_74=l9_55;
}
return RayHitPayload(-normalize(vec3(l9_18.x,l9_18.y,l9_13.z)),l9_27,l9_33,l9_40,l9_47,l9_56,l9_62,l9_68,l9_74,l9_2);
}
vec2 N7_gettransformUV(int pickUV,vec2 scale,vec2 offset,bool animated,bool enabled)
{
vec2 l9_0=tempGlobals.Surface_UVCoord0;
vec2 l9_1;
if (enabled==N7_EnableUV2)
{
vec2 l9_2;
if (pickUV==0)
{
l9_2=tempGlobals.Surface_UVCoord0;
}
else
{
l9_2=l9_0;
}
vec2 l9_3;
if (pickUV==1)
{
l9_3=tempGlobals.Surface_UVCoord1;
}
else
{
l9_3=l9_2;
}
vec2 l9_4;
if (pickUV==2)
{
l9_4=tempGlobals.gScreenCoord;
}
else
{
l9_4=l9_3;
}
l9_1=l9_4;
}
else
{
vec2 l9_5;
if (pickUV==0)
{
l9_5=tempGlobals.Surface_UVCoord0;
}
else
{
l9_5=l9_0;
}
vec2 l9_6;
if (pickUV==1)
{
l9_6=tempGlobals.Surface_UVCoord1;
}
else
{
l9_6=l9_5;
}
vec2 l9_7;
if (pickUV==2)
{
l9_7=tempGlobals.gScreenCoord;
}
else
{
l9_7=l9_6;
}
vec2 l9_8;
if (pickUV==3)
{
l9_8=tempGlobals.N7_TransformedUV2;
}
else
{
l9_8=l9_7;
}
l9_1=l9_8;
}
vec2 l9_9=scale;
vec2 l9_10=l9_1*l9_9;
vec2 l9_11=offset;
vec2 l9_12=l9_10+l9_11;
vec2 l9_13;
if (animated)
{
l9_13=l9_12+(offset*tempGlobals.gTimeElapsed);
}
else
{
l9_13=l9_12;
}
return l9_13;
}
vec2 N7_getUV(int pickUV)
{
vec2 l9_0=tempGlobals.Surface_UVCoord0;
vec2 l9_1;
if (pickUV==0)
{
l9_1=tempGlobals.Surface_UVCoord0;
}
else
{
l9_1=l9_0;
}
vec2 l9_2;
if (pickUV==1)
{
l9_2=tempGlobals.Surface_UVCoord1;
}
else
{
l9_2=l9_1;
}
vec2 l9_3;
if (pickUV==2)
{
l9_3=tempGlobals.N7_TransformedUV2;
}
else
{
l9_3=l9_2;
}
vec2 l9_4;
if (pickUV==3)
{
l9_4=tempGlobals.N7_TransformedUV3;
}
else
{
l9_4=l9_3;
}
return l9_4;
}
int baseTexGetStereoViewIndex()
{
int l9_0;
#if (baseTexHasSwappedViews)
{
l9_0=1-sc_GetStereoViewIndex();
}
#else
{
l9_0=sc_GetStereoViewIndex();
}
#endif
return l9_0;
}
void sc_SoftwareWrapEarly(inout float uv,int softwareWrapMode)
{
if (softwareWrapMode==1)
{
uv=fract(uv);
}
else
{
if (softwareWrapMode==2)
{
float l9_0=fract(uv);
uv=mix(l9_0,1.0-l9_0,clamp(step(0.25,fract((uv-l9_0)*0.5)),0.0,1.0));
}
}
}
void sc_ClampUV(inout float value,float minValue,float maxValue,bool useClampToBorder,inout float clampToBorderFactor)
{
float l9_0=clamp(value,minValue,maxValue);
float l9_1=step(abs(value-l9_0),9.9999997e-06);
clampToBorderFactor*=(l9_1+((1.0-float(useClampToBorder))*(1.0-l9_1)));
value=l9_0;
}
vec2 sc_TransformUV(vec2 uv,bool useUvTransform,mat3 uvTransform)
{
if (useUvTransform)
{
uv=vec2((uvTransform*vec3(uv,1.0)).xy);
}
return uv;
}
void sc_SoftwareWrapLate(inout float uv,int softwareWrapMode,bool useClampToBorder,inout float clampToBorderFactor)
{
if ((softwareWrapMode==0)||(softwareWrapMode==3))
{
sc_ClampUV(uv,0.0,1.0,useClampToBorder,clampToBorderFactor);
}
}
vec3 sc_SamplingCoordsViewToGlobal(vec2 uv,int renderingLayout,int viewIndex)
{
vec3 l9_0;
if (renderingLayout==0)
{
l9_0=vec3(uv,0.0);
}
else
{
vec3 l9_1;
if (renderingLayout==1)
{
l9_1=vec3(uv.x,(uv.y*0.5)+(0.5-(float(viewIndex)*0.5)),0.0);
}
else
{
l9_1=vec3(uv,float(viewIndex));
}
l9_0=l9_1;
}
return l9_0;
}
int opacityTexGetStereoViewIndex()
{
int l9_0;
#if (opacityTexHasSwappedViews)
{
l9_0=1-sc_GetStereoViewIndex();
}
#else
{
l9_0=sc_GetStereoViewIndex();
}
#endif
return l9_0;
}
int normalTexGetStereoViewIndex()
{
int l9_0;
#if (normalTexHasSwappedViews)
{
l9_0=1-sc_GetStereoViewIndex();
}
#else
{
l9_0=sc_GetStereoViewIndex();
}
#endif
return l9_0;
}
int detailNormalTexGetStereoViewIndex()
{
int l9_0;
#if (detailNormalTexHasSwappedViews)
{
l9_0=1-sc_GetStereoViewIndex();
}
#else
{
l9_0=sc_GetStereoViewIndex();
}
#endif
return l9_0;
}
int emissiveTexGetStereoViewIndex()
{
int l9_0;
#if (emissiveTexHasSwappedViews)
{
l9_0=1-sc_GetStereoViewIndex();
}
#else
{
l9_0=sc_GetStereoViewIndex();
}
#endif
return l9_0;
}
vec3 ssPow(vec3 A,vec3 B)
{
float l9_0;
if (A.x<=0.0)
{
l9_0=0.0;
}
else
{
l9_0=pow(A.x,B.x);
}
float l9_1;
if (A.y<=0.0)
{
l9_1=0.0;
}
else
{
l9_1=pow(A.y,B.y);
}
float l9_2;
if (A.z<=0.0)
{
l9_2=0.0;
}
else
{
l9_2=pow(A.z,B.z);
}
return vec3(l9_0,l9_1,l9_2);
}
int reflectionTexGetStereoViewIndex()
{
int l9_0;
#if (reflectionTexHasSwappedViews)
{
l9_0=1-sc_GetStereoViewIndex();
}
#else
{
l9_0=sc_GetStereoViewIndex();
}
#endif
return l9_0;
}
int reflectionModulationTexGetStereoViewIndex()
{
int l9_0;
#if (reflectionModulationTexHasSwappedViews)
{
l9_0=1-sc_GetStereoViewIndex();
}
#else
{
l9_0=sc_GetStereoViewIndex();
}
#endif
return l9_0;
}
vec3 ssSRGB_to_Linear(vec3 value)
{
vec3 l9_0;
#if (SC_DEVICE_CLASS>=2)
{
l9_0=vec3(pow(value.x,2.2),pow(value.y,2.2),pow(value.z,2.2));
}
#else
{
l9_0=value*value;
}
#endif
return l9_0;
}
int rimColorTexGetStereoViewIndex()
{
int l9_0;
#if (rimColorTexHasSwappedViews)
{
l9_0=1-sc_GetStereoViewIndex();
}
#else
{
l9_0=sc_GetStereoViewIndex();
}
#endif
return l9_0;
}
int materialParamsTexGetStereoViewIndex()
{
int l9_0;
#if (materialParamsTexHasSwappedViews)
{
l9_0=1-sc_GetStereoViewIndex();
}
#else
{
l9_0=sc_GetStereoViewIndex();
}
#endif
return l9_0;
}
vec3 evaluateSSAO(vec3 positionWS)
{
#if (sc_SSAOEnabled)
{
vec4 l9_0=sc_ViewProjectionMatrixArray[sc_GetStereoViewIndex()]*vec4(positionWS,1.0);
return vec3(texture(sc_SSAOTexture,((l9_0.xyz/vec3(l9_0.w)).xy*0.5)+vec2(0.5)).x);
}
#else
{
return vec3(1.0);
}
#endif
}
vec3 fresnelSchlickSub(float cosTheta,vec3 F0,vec3 fresnelMax)
{
float l9_0=1.0-cosTheta;
float l9_1=l9_0*l9_0;
return F0+((fresnelMax-F0)*((l9_1*l9_1)*l9_0));
}
float Dggx(float NdotH,float roughness_1)
{
float l9_0=roughness_1;
float l9_1=roughness_1;
float l9_2=l9_0*l9_1;
float l9_3=l9_2*l9_2;
float l9_4=NdotH;
float l9_5=NdotH;
float l9_6=((l9_4*l9_5)*(l9_3-1.0))+1.0;
float l9_7;
if (isProxyMode)
{
l9_7=1e-07;
}
else
{
l9_7=9.9999999e-09;
}
return l9_3/((l9_6*l9_6)+l9_7);
}
vec3 calculateDirectSpecular(SurfaceProperties surfaceProperties,vec3 L,vec3 V)
{
float l9_0=surfaceProperties.roughness;
float l9_1=max(l9_0,0.029999999);
vec3 l9_2=surfaceProperties.specColor;
vec3 l9_3=surfaceProperties.normal;
vec3 l9_4=L;
vec3 l9_5=V;
vec3 l9_6=normalize(l9_4+l9_5);
vec3 l9_7=L;
float l9_8=clamp(dot(l9_3,l9_7),0.0,1.0);
vec3 l9_9=V;
float l9_10=clamp(dot(l9_3,l9_6),0.0,1.0);
vec3 l9_11=V;
float l9_12=clamp(dot(l9_11,l9_6),0.0,1.0);
#if (SC_DEVICE_CLASS>=2)
{
float l9_13=l9_1+1.0;
float l9_14=(l9_13*l9_13)*0.125;
float l9_15=1.0-l9_14;
return fresnelSchlickSub(l9_12,l9_2,vec3(1.0))*(((Dggx(l9_10,l9_1)*(1.0/(((l9_8*l9_15)+l9_14)*((clamp(dot(l9_3,l9_9),0.0,1.0)*l9_15)+l9_14))))*0.25)*l9_8);
}
#else
{
float l9_16=exp2(11.0-(10.0*l9_1));
return ((fresnelSchlickSub(l9_12,l9_2,vec3(1.0))*((l9_16*0.125)+0.25))*pow(l9_10,l9_16))*l9_8;
}
#endif
}
LightingComponents accumulateLight(LightingComponents lighting,LightProperties light,SurfaceProperties surfaceProperties,vec3 V)
{
lighting.directDiffuse+=((vec3(clamp(dot(surfaceProperties.normal,light.direction),0.0,1.0))*light.color)*light.attenuation);
lighting.directSpecular+=((calculateDirectSpecular(surfaceProperties,light.direction,V)*light.color)*light.attenuation);
return lighting;
}
float computeDistanceAttenuation(float distanceToLight,float falloffEndDistance)
{
float l9_0=distanceToLight;
float l9_1=distanceToLight;
float l9_2=l9_0*l9_1;
if (falloffEndDistance==0.0)
{
return 1.0/l9_2;
}
return max(min(1.0-((l9_2*l9_2)/pow(falloffEndDistance,4.0)),1.0),0.0)/l9_2;
}
vec2 calcPanoramicTexCoordsFromDir(vec3 reflDir,float rotationDegrees)
{
float l9_0=-reflDir.z;
vec2 l9_1=vec2((((reflDir.x<0.0) ? (-1.0) : 1.0)*acos(clamp(l9_0/length(vec2(reflDir.x,l9_0)),-1.0,1.0)))-1.5707964,acos(reflDir.y))/vec2(6.2831855,3.1415927);
float l9_2=l9_1.x+(rotationDegrees/360.0);
vec2 l9_3=vec2(l9_2,1.0-l9_1.y);
l9_3.x=fract((l9_2+floor(l9_2))+1.0);
return l9_3;
}
int sc_EnvmapSpecularGetStereoViewIndex()
{
int l9_0;
#if (sc_EnvmapSpecularHasSwappedViews)
{
l9_0=1-sc_GetStereoViewIndex();
}
#else
{
l9_0=sc_GetStereoViewIndex();
}
#endif
return l9_0;
}
vec4 sc_EnvmapSpecularSampleViewIndexBias(vec2 uv,int viewIndex,float bias)
{
vec4 l9_0;
#if (sc_EnvmapSpecularLayout==2)
{
l9_0=texture(sc_EnvmapSpecularArrSC,sc_SamplingCoordsViewToGlobal(uv,sc_EnvmapSpecularLayout,viewIndex),bias);
}
#else
{
l9_0=texture(sc_EnvmapSpecular,sc_SamplingCoordsViewToGlobal(uv,sc_EnvmapSpecularLayout,viewIndex).xy,bias);
}
#endif
return l9_0;
}
vec2 calcSeamlessPanoramicUvsForSampling(vec2 uv,vec2 topMipRes,float lod)
{
#if (SC_DEVICE_CLASS>=2)
{
vec2 l9_0=max(vec2(1.0),topMipRes/vec2(exp2(lod)));
return ((uv*(l9_0-vec2(1.0)))/l9_0)+(vec2(0.5)/l9_0);
}
#else
{
return uv;
}
#endif
}
int sc_EnvmapDiffuseGetStereoViewIndex()
{
int l9_0;
#if (sc_EnvmapDiffuseHasSwappedViews)
{
l9_0=1-sc_GetStereoViewIndex();
}
#else
{
l9_0=sc_GetStereoViewIndex();
}
#endif
return l9_0;
}
vec4 sampleRayTracedIndirectDiffuse()
{
if (receivesRayTracedDiffuseIndirect)
{
vec2 l9_0=gl_FragCoord.xy*sc_CurrentRenderTargetDims.zw;
int l9_1;
#if (sc_RayTracedDiffIndTextureHasSwappedViews)
{
l9_1=1-sc_GetStereoViewIndex();
}
#else
{
l9_1=sc_GetStereoViewIndex();
}
#endif
vec4 l9_2;
#if (sc_RayTracedDiffIndTextureLayout==2)
{
l9_2=texture(sc_RayTracedDiffIndTextureArrSC,sc_SamplingCoordsViewToGlobal(l9_0,sc_RayTracedDiffIndTextureLayout,l9_1),0.0);
}
#else
{
l9_2=texture(sc_RayTracedDiffIndTexture,sc_SamplingCoordsViewToGlobal(l9_0,sc_RayTracedDiffIndTextureLayout,l9_1).xy,0.0);
}
#endif
return l9_2;
}
return vec4(0.0);
}
vec3 getSpecularDominantDir(vec3 N,vec3 R,float roughness_1)
{
#if (SC_DEVICE_CLASS>=2)
{
return normalize(mix(R,N,vec3((roughness_1*roughness_1)*roughness_1)));
}
#else
{
return R;
}
#endif
}
vec4 sc_EnvmapSpecularSampleViewIndexLevel(vec2 uv,int viewIndex,float level_)
{
vec4 l9_0;
#if (sc_EnvmapSpecularLayout==2)
{
l9_0=textureLod(sc_EnvmapSpecularArrSC,sc_SamplingCoordsViewToGlobal(uv,sc_EnvmapSpecularLayout,viewIndex),level_);
}
#else
{
l9_0=textureLod(sc_EnvmapSpecular,sc_SamplingCoordsViewToGlobal(uv,sc_EnvmapSpecularLayout,viewIndex).xy,level_);
}
#endif
return l9_0;
}
vec4 sampleRayTracedReflections()
{
if (!receivesRayTracedReflections)
{
return vec4(0.0);
}
else
{
vec2 l9_0=gl_FragCoord.xy*sc_CurrentRenderTargetDims.zw;
int l9_1;
#if (sc_RayTracedReflectionTextureHasSwappedViews)
{
l9_1=1-sc_GetStereoViewIndex();
}
#else
{
l9_1=sc_GetStereoViewIndex();
}
#endif
vec4 l9_2;
#if (sc_RayTracedReflectionTextureLayout==2)
{
l9_2=texture(sc_RayTracedReflectionTextureArrSC,sc_SamplingCoordsViewToGlobal(l9_0,sc_RayTracedReflectionTextureLayout,l9_1),0.0);
}
#else
{
l9_2=texture(sc_RayTracedReflectionTexture,sc_SamplingCoordsViewToGlobal(l9_0,sc_RayTracedReflectionTextureLayout,l9_1).xy,0.0);
}
#endif
return l9_2;
}
}
vec3 envBRDFApprox(SurfaceProperties surfaceProperties,float NdotV)
{
#if (SC_DEVICE_CLASS>=2)
{
vec4 l9_0=(vec4(-1.0,-0.0275,-0.57200003,0.022)*surfaceProperties.roughness)+vec4(1.0,0.0425,1.04,-0.039999999);
float l9_1=l9_0.x;
vec2 l9_2=(vec2(-1.04,1.04)*((min(l9_1*l9_1,exp2((-9.2799997)*NdotV))*l9_1)+l9_0.y))+l9_0.zw;
return max((surfaceProperties.specColor*l9_2.x)+vec3(l9_2.y),vec3(0.0));
}
#else
{
return fresnelSchlickSub(NdotV,surfaceProperties.specColor,max(vec3(1.0-surfaceProperties.roughness),surfaceProperties.specColor));
}
#endif
}
int sc_ScreenTextureGetStereoViewIndex()
{
int l9_0;
#if (sc_ScreenTextureHasSwappedViews)
{
l9_0=1-sc_GetStereoViewIndex();
}
#else
{
l9_0=sc_GetStereoViewIndex();
}
#endif
return l9_0;
}
vec4 sc_ScreenTextureSampleViewIndexBias(vec2 uv,int viewIndex,float bias)
{
vec4 l9_0;
#if (sc_ScreenTextureLayout==2)
{
l9_0=texture(sc_ScreenTextureArrSC,sc_SamplingCoordsViewToGlobal(uv,sc_ScreenTextureLayout,viewIndex),bias);
}
#else
{
l9_0=texture(sc_ScreenTexture,sc_SamplingCoordsViewToGlobal(uv,sc_ScreenTextureLayout,viewIndex).xy,bias);
}
#endif
return l9_0;
}
vec4 sc_readFragData0_Platform()
{
    return getFragData()[0];
}
vec4 sc_readFragData0()
{
vec4 l9_0=sc_readFragData0_Platform();
vec4 l9_1;
#if (sc_UseFramebufferFetchMarker)
{
vec4 l9_2=l9_0;
l9_2.x=l9_0.x+_sc_framebufferFetchMarker;
l9_1=l9_2;
}
#else
{
l9_1=l9_0;
}
#endif
return l9_1;
}
vec4 sc_GetFramebufferColor()
{
vec4 l9_0;
#if (sc_FramebufferFetch)
{
l9_0=sc_readFragData0();
}
#else
{
l9_0=sc_ScreenTextureSampleViewIndexBias(sc_ScreenCoordsGlobalToView(gl_FragCoord.xy*sc_CurrentRenderTargetDims.zw),sc_ScreenTextureGetStereoViewIndex(),0.0);
}
#endif
vec4 l9_1;
#if (((sc_IsEditor&&sc_GetFramebufferColorInvalidUsageMarker)&&(!sc_BlendMode_Software))&&(!sc_BlendMode_ColoredGlass))
{
vec4 l9_2=l9_0;
l9_2.x=l9_0.x+_sc_GetFramebufferColorInvalidUsageMarker;
l9_1=l9_2;
}
#else
{
l9_1=l9_0;
}
#endif
return l9_1;
}
float sampleRayTracedAo()
{
if (receivesRayTracedAo)
{
vec2 l9_0=gl_FragCoord.xy*sc_CurrentRenderTargetDims.zw;
int l9_1;
#if (sc_RayTracedAoTextureHasSwappedViews)
{
l9_1=1-sc_GetStereoViewIndex();
}
#else
{
l9_1=sc_GetStereoViewIndex();
}
#endif
vec4 l9_2;
#if (sc_RayTracedAoTextureLayout==2)
{
l9_2=texture(sc_RayTracedAoTextureArrSC,sc_SamplingCoordsViewToGlobal(l9_0,sc_RayTracedAoTextureLayout,l9_1),0.0);
}
#else
{
l9_2=texture(sc_RayTracedAoTexture,sc_SamplingCoordsViewToGlobal(l9_0,sc_RayTracedAoTextureLayout,l9_1).xy,0.0);
}
#endif
return l9_2.x;
}
return 0.0;
}
float srgbToLinear(float x)
{
#if (SC_DEVICE_CLASS>=2)
{
return pow(x,2.2);
}
#else
{
return x*x;
}
#endif
}
float linearToSrgb(float x)
{
#if (SC_DEVICE_CLASS>=2)
{
return pow(x,0.45454547);
}
#else
{
return sqrt(x);
}
#endif
}
vec4 ngsCalculateLighting(vec3 albedo,float opacity,vec3 normal,vec3 position,vec3 viewDir,vec3 emissive,float metallic_1,float roughness_1,vec3 ao,vec3 specularAO)
{
float l9_0=opacity;
vec3 l9_1=ssSRGB_to_Linear(albedo);
vec3 l9_2=normal;
vec3 l9_3=normalize(l9_2);
vec3 l9_4=position;
vec3 l9_5=viewDir;
vec3 l9_6=ssSRGB_to_Linear(emissive);
float l9_7=metallic_1;
float l9_8=roughness_1;
vec3 l9_9=ao;
vec3 l9_10=specularAO;
vec3 l9_11;
#if (sc_SSAOEnabled)
{
l9_11=evaluateSSAO(l9_4);
}
#else
{
l9_11=l9_9;
}
#endif
vec3 l9_12=vec3(l9_7);
vec3 l9_13=mix(vec3(0.039999999),l9_1*l9_7,l9_12);
vec3 l9_14=mix(l9_1*(1.0-l9_7),vec3(0.0),l9_12);
SurfaceProperties l9_15=SurfaceProperties(l9_14,l9_0,l9_3,l9_4,l9_5,l9_7,l9_8,l9_6,l9_11,l9_10,vec3(1.0),l9_13);
vec4 l9_16=vec4(1.0);
vec3 l9_17;
vec3 l9_18;
vec3 l9_19;
vec3 l9_20;
int l9_21;
vec3 l9_22;
vec3 l9_23;
#if (sc_DirectionalLightsCount>0)
{
vec3 l9_24;
vec3 l9_25;
vec3 l9_26;
vec3 l9_27;
int l9_28;
vec3 l9_29;
vec3 l9_30;
l9_30=vec3(1.0);
l9_29=vec3(0.0);
l9_28=0;
l9_27=vec3(0.0);
l9_26=vec3(0.0);
l9_25=vec3(0.0);
l9_24=vec3(0.0);
LightingComponents l9_31;
LightProperties l9_32;
SurfaceProperties l9_33;
vec3 l9_34;
int l9_35=0;
for (int snapLoopIndex=0; snapLoopIndex==0; snapLoopIndex+=0)
{
if (l9_35<sc_DirectionalLightsCount)
{
LightingComponents l9_36=accumulateLight(LightingComponents(l9_24,l9_25,l9_30,l9_29,l9_27,l9_26),LightProperties(sc_DirectionalLights[l9_35].direction,sc_DirectionalLights[l9_35].color.xyz,sc_DirectionalLights[l9_35].color.w*l9_16[(l9_28<3) ? l9_28 : 3]),l9_15,l9_5);
l9_30=l9_36.indirectDiffuse;
l9_29=l9_36.indirectSpecular;
l9_28++;
l9_27=l9_36.emitted;
l9_26=l9_36.transmitted;
l9_25=l9_36.directSpecular;
l9_24=l9_36.directDiffuse;
l9_35++;
continue;
}
else
{
break;
}
}
l9_23=l9_30;
l9_22=l9_29;
l9_21=l9_28;
l9_20=l9_27;
l9_19=l9_26;
l9_18=l9_25;
l9_17=l9_24;
}
#else
{
l9_23=vec3(1.0);
l9_22=vec3(0.0);
l9_21=0;
l9_20=vec3(0.0);
l9_19=vec3(0.0);
l9_18=vec3(0.0);
l9_17=vec3(0.0);
}
#endif
vec3 l9_37;
vec3 l9_38;
vec3 l9_39;
#if (sc_PointLightsCount>0)
{
vec3 l9_40;
vec3 l9_41;
vec3 l9_42;
vec3 l9_43;
vec3 l9_44;
vec3 l9_45;
l9_45=l9_23;
l9_44=l9_22;
l9_43=l9_20;
l9_42=l9_19;
l9_41=l9_18;
l9_40=l9_17;
int l9_46;
vec3 l9_47;
vec3 l9_48;
vec3 l9_49;
vec3 l9_50;
vec3 l9_51;
vec3 l9_52;
int l9_53=0;
int l9_54=l9_21;
for (int snapLoopIndex=0; snapLoopIndex==0; snapLoopIndex+=0)
{
if (l9_53<sc_PointLightsCount)
{
vec3 l9_55=sc_PointLights[l9_53].position-l9_4;
vec3 l9_56=normalize(l9_55);
float l9_57=l9_16[(l9_54<3) ? l9_54 : 3];
float l9_58=clamp((dot(l9_56,sc_PointLights[l9_53].direction)*sc_PointLights[l9_53].angleScale)+sc_PointLights[l9_53].angleOffset,0.0,1.0);
float l9_59=(sc_PointLights[l9_53].color.w*l9_57)*(l9_58*l9_58);
float l9_60;
if (sc_PointLights[l9_53].falloffEnabled)
{
l9_60=l9_59*computeDistanceAttenuation(length(l9_55),sc_PointLights[l9_53].falloffEndDistance);
}
else
{
l9_60=l9_59;
}
l9_46=l9_54+1;
LightingComponents l9_61=accumulateLight(LightingComponents(l9_40,l9_41,l9_45,l9_44,l9_43,l9_42),LightProperties(l9_56,sc_PointLights[l9_53].color.xyz,l9_60),l9_15,l9_5);
l9_47=l9_61.directDiffuse;
l9_48=l9_61.directSpecular;
l9_49=l9_61.indirectDiffuse;
l9_50=l9_61.indirectSpecular;
l9_51=l9_61.emitted;
l9_52=l9_61.transmitted;
l9_45=l9_49;
l9_44=l9_50;
l9_54=l9_46;
l9_43=l9_51;
l9_42=l9_52;
l9_41=l9_48;
l9_40=l9_47;
l9_53++;
continue;
}
else
{
break;
}
}
l9_39=l9_42;
l9_38=l9_41;
l9_37=l9_40;
}
#else
{
l9_39=l9_19;
l9_38=l9_18;
l9_37=l9_17;
}
#endif
vec3 l9_62;
vec3 l9_63;
#if (sc_ProjectiveShadowsReceiver)
{
vec3 l9_64;
#if (sc_ProjectiveShadowsReceiver)
{
vec2 l9_65=abs(varShadowTex-vec2(0.5));
vec4 l9_66=texture(sc_ShadowTexture,varShadowTex)*step(max(l9_65.x,l9_65.y),0.5);
l9_64=mix(vec3(1.0),mix(sc_ShadowColor.xyz,sc_ShadowColor.xyz*l9_66.xyz,vec3(sc_ShadowColor.w)),vec3(l9_66.w*sc_ShadowDensity));
}
#else
{
l9_64=vec3(1.0);
}
#endif
l9_63=l9_38*l9_64;
l9_62=l9_37*l9_64;
}
#else
{
l9_63=l9_38;
l9_62=l9_37;
}
#endif
vec3 l9_67;
vec3 l9_68;
if (receivesRayTracedShadows)
{
vec2 l9_69=gl_FragCoord.xy*sc_CurrentRenderTargetDims.zw;
int l9_70;
#if (sc_RayTracedShadowTextureHasSwappedViews)
{
l9_70=1-sc_GetStereoViewIndex();
}
#else
{
l9_70=sc_GetStereoViewIndex();
}
#endif
vec4 l9_71;
#if (sc_RayTracedShadowTextureLayout==2)
{
l9_71=texture(sc_RayTracedShadowTextureArrSC,sc_SamplingCoordsViewToGlobal(l9_69,sc_RayTracedShadowTextureLayout,l9_70),0.0);
}
#else
{
l9_71=texture(sc_RayTracedShadowTexture,sc_SamplingCoordsViewToGlobal(l9_69,sc_RayTracedShadowTextureLayout,l9_70).xy,0.0);
}
#endif
vec3 l9_72=vec3(1.0)-vec3(l9_71.x);
l9_68=l9_62*l9_72;
l9_67=l9_63*l9_72;
}
else
{
l9_68=l9_62;
l9_67=l9_63;
}
vec3 l9_73;
#if ((sc_EnvLightMode==sc_AmbientLightMode_EnvironmentMap)||(sc_EnvLightMode==sc_AmbientLightMode_FromCamera))
{
vec2 l9_74=calcPanoramicTexCoordsFromDir(l9_3,sc_EnvmapRotation.y);
vec4 l9_75;
#if (sc_EnvLightMode==sc_AmbientLightMode_FromCamera)
{
vec2 l9_76;
#if (SC_DEVICE_CLASS>=2)
{
l9_76=calcSeamlessPanoramicUvsForSampling(l9_74,sc_EnvmapSpecularSize.xy,5.0);
}
#else
{
l9_76=l9_74;
}
#endif
l9_75=sc_EnvmapSpecularSampleViewIndexBias(l9_76,sc_EnvmapSpecularGetStereoViewIndex(),13.0);
}
#else
{
vec4 l9_77;
#if ((sc_MaxTextureImageUnits>8)&&sc_HasDiffuseEnvmap)
{
vec2 l9_78=calcSeamlessPanoramicUvsForSampling(l9_74,sc_EnvmapDiffuseSize.xy,0.0);
vec4 l9_79;
if (isProxyMode)
{
int l9_80=sc_EnvmapDiffuseGetStereoViewIndex();
vec4 l9_81;
#if (sc_EnvmapDiffuseLayout==2)
{
l9_81=textureLod(sc_EnvmapDiffuseArrSC,sc_SamplingCoordsViewToGlobal(l9_78,sc_EnvmapDiffuseLayout,l9_80),0.0);
}
#else
{
l9_81=textureLod(sc_EnvmapDiffuse,sc_SamplingCoordsViewToGlobal(l9_78,sc_EnvmapDiffuseLayout,l9_80).xy,0.0);
}
#endif
l9_79=l9_81;
}
else
{
int l9_82=sc_EnvmapDiffuseGetStereoViewIndex();
vec4 l9_83;
#if (sc_EnvmapDiffuseLayout==2)
{
l9_83=texture(sc_EnvmapDiffuseArrSC,sc_SamplingCoordsViewToGlobal(l9_78,sc_EnvmapDiffuseLayout,l9_82),-13.0);
}
#else
{
l9_83=texture(sc_EnvmapDiffuse,sc_SamplingCoordsViewToGlobal(l9_78,sc_EnvmapDiffuseLayout,l9_82).xy,-13.0);
}
#endif
l9_79=l9_83;
}
l9_77=l9_79;
}
#else
{
l9_77=sc_EnvmapSpecularSampleViewIndexBias(l9_74,sc_EnvmapSpecularGetStereoViewIndex(),13.0);
}
#endif
l9_75=l9_77;
}
#endif
l9_73=(l9_75.xyz*(1.0/l9_75.w))*sc_EnvmapExposure;
}
#else
{
vec3 l9_84;
#if (sc_EnvLightMode==sc_AmbientLightMode_SphericalHarmonics)
{
vec3 l9_85=-l9_3;
float l9_86=l9_85.x;
float l9_87=l9_85.y;
float l9_88=l9_85.z;
l9_84=(((((((sc_Sh[8]*0.42904299)*((l9_86*l9_86)-(l9_87*l9_87)))+((sc_Sh[6]*0.74312502)*(l9_88*l9_88)))+(sc_Sh[0]*0.88622701))-(sc_Sh[6]*0.24770799))+((((sc_Sh[4]*(l9_86*l9_87))+(sc_Sh[7]*(l9_86*l9_88)))+(sc_Sh[5]*(l9_87*l9_88)))*0.85808599))+((((sc_Sh[3]*l9_86)+(sc_Sh[1]*l9_87))+(sc_Sh[2]*l9_88))*1.0233279))*sc_ShIntensity;
}
#else
{
l9_84=vec3(0.0);
}
#endif
l9_73=l9_84;
}
#endif
vec3 l9_89;
if (receivesRayTracedDiffuseIndirect)
{
vec4 l9_90=sampleRayTracedIndirectDiffuse();
l9_89=mix(l9_73,l9_90.xyz,vec3(l9_90.w));
}
else
{
l9_89=l9_73;
}
vec3 l9_91;
#if (sc_AmbientLightsCount>0)
{
vec3 l9_92;
#if (sc_AmbientLightMode0==sc_AmbientLightMode_Constant)
{
l9_92=l9_89+(sc_AmbientLights[0].color*sc_AmbientLights[0].intensity);
}
#else
{
vec3 l9_93=l9_89;
l9_93.x=l9_89.x+(1e-06*sc_AmbientLights[0].color.x);
l9_92=l9_93;
}
#endif
l9_91=l9_92;
}
#else
{
l9_91=l9_89;
}
#endif
vec3 l9_94;
#if (sc_AmbientLightsCount>1)
{
vec3 l9_95;
#if (sc_AmbientLightMode1==sc_AmbientLightMode_Constant)
{
l9_95=l9_91+(sc_AmbientLights[1].color*sc_AmbientLights[1].intensity);
}
#else
{
vec3 l9_96=l9_91;
l9_96.x=l9_91.x+(1e-06*sc_AmbientLights[1].color.x);
l9_95=l9_96;
}
#endif
l9_94=l9_95;
}
#else
{
l9_94=l9_91;
}
#endif
vec3 l9_97;
#if (sc_AmbientLightsCount>2)
{
vec3 l9_98;
#if (sc_AmbientLightMode2==sc_AmbientLightMode_Constant)
{
l9_98=l9_94+(sc_AmbientLights[2].color*sc_AmbientLights[2].intensity);
}
#else
{
vec3 l9_99=l9_94;
l9_99.x=l9_94.x+(1e-06*sc_AmbientLights[2].color.x);
l9_98=l9_99;
}
#endif
l9_97=l9_98;
}
#else
{
l9_97=l9_94;
}
#endif
vec3 l9_100;
#if (sc_LightEstimation)
{
vec3 l9_101;
l9_101=sc_LightEstimationData.ambientLight;
vec3 l9_102;
int l9_103=0;
for (int snapLoopIndex=0; snapLoopIndex==0; snapLoopIndex+=0)
{
if (l9_103<sc_LightEstimationSGCount)
{
float l9_104=dot(sc_LightEstimationData.sg[l9_103].axis,l9_3);
float l9_105=exp(-sc_LightEstimationData.sg[l9_103].sharpness);
float l9_106=l9_105*l9_105;
float l9_107=1.0/sc_LightEstimationData.sg[l9_103].sharpness;
float l9_108=(1.0+(2.0*l9_106))-l9_107;
float l9_109=sqrt(1.0-l9_108);
float l9_110=0.36000001*l9_104;
float l9_111=(1.0/(4.0*0.36000001))*l9_109;
float l9_112=l9_110+l9_111;
float l9_113;
if (step(abs(l9_110),l9_111)>0.5)
{
l9_113=(l9_112*l9_112)/l9_109;
}
else
{
l9_113=clamp(l9_104,0.0,1.0);
}
l9_102=l9_101+((((sc_LightEstimationData.sg[l9_103].color/vec3(sc_LightEstimationData.sg[l9_103].sharpness))*6.2831855)*((l9_108*l9_113)+(((l9_105-l9_106)*l9_107)-l9_106)))/vec3(3.1415927));
l9_101=l9_102;
l9_103++;
continue;
}
else
{
break;
}
}
l9_100=l9_97+l9_101;
}
#else
{
l9_100=l9_97;
}
#endif
vec3 l9_114;
#if ((sc_EnvLightMode==sc_AmbientLightMode_EnvironmentMap)||(sc_EnvLightMode==sc_AmbientLightMode_FromCamera))
{
float l9_115=clamp(pow(l9_8,0.66666669),0.0,1.0)*5.0;
vec2 l9_116=calcPanoramicTexCoordsFromDir(getSpecularDominantDir(l9_3,reflect(-l9_5,l9_3),l9_8),sc_EnvmapRotation.y);
vec4 l9_117;
#if (SC_DEVICE_CLASS>=2)
{
float l9_118=floor(l9_115);
float l9_119=ceil(l9_115);
l9_117=mix(sc_EnvmapSpecularSampleViewIndexLevel(calcSeamlessPanoramicUvsForSampling(l9_116,sc_EnvmapSpecularSize.xy,l9_118),sc_EnvmapSpecularGetStereoViewIndex(),l9_118),sc_EnvmapSpecularSampleViewIndexLevel(calcSeamlessPanoramicUvsForSampling(l9_116,sc_EnvmapSpecularSize.xy,l9_119),sc_EnvmapSpecularGetStereoViewIndex(),l9_119),vec4(l9_115-l9_118));
}
#else
{
l9_117=sc_EnvmapSpecularSampleViewIndexLevel(l9_116,sc_EnvmapSpecularGetStereoViewIndex(),l9_115);
}
#endif
vec3 l9_120=((l9_117.xyz*(1.0/l9_117.w))*sc_EnvmapExposure)+vec3(1e-06);
vec3 l9_121;
if (receivesRayTracedReflections)
{
vec4 l9_122=sampleRayTracedReflections();
l9_121=mix(l9_120,l9_122.xyz,vec3(l9_122.w));
}
else
{
l9_121=l9_120;
}
l9_114=vec3(0.0)+(l9_121*envBRDFApprox(l9_15,abs(dot(l9_3,l9_5))));
}
#else
{
l9_114=vec3(0.0);
}
#endif
vec3 l9_123;
#if (sc_LightEstimation)
{
float l9_124=clamp(l9_8*l9_8,0.0099999998,1.0);
vec3 l9_125;
l9_125=sc_LightEstimationData.ambientLight*l9_13;
int l9_126=0;
for (int snapLoopIndex=0; snapLoopIndex==0; snapLoopIndex+=0)
{
if (l9_126<sc_LightEstimationSGCount)
{
float l9_127=l9_124*l9_124;
vec3 l9_128=reflect(-l9_5,l9_3);
float l9_129=dot(l9_3,l9_5);
float l9_130=(2.0/l9_127)/(4.0*max(l9_129,9.9999997e-05));
float l9_131=length((l9_128*l9_130)+(sc_LightEstimationData.sg[l9_126].axis*sc_LightEstimationData.sg[l9_126].sharpness));
float l9_132=clamp(dot(l9_3,l9_128),0.0,1.0);
float l9_133=clamp(l9_129,0.0,1.0);
float l9_134=1.0-l9_127;
l9_125+=((((((((vec3(1.0/(3.1415927*l9_127))*exp((l9_131-l9_130)-sc_LightEstimationData.sg[l9_126].sharpness))*sc_LightEstimationData.sg[l9_126].color)*6.2831855)*(1.0-exp((-2.0)*l9_131)))/vec3(l9_131))*((1.0/(l9_132+sqrt(l9_127+((l9_134*l9_132)*l9_132))))*(1.0/(l9_133+sqrt(l9_127+((l9_134*l9_133)*l9_133))))))*(l9_13+((vec3(1.0)-l9_13)*pow(1.0-clamp(dot(l9_128,normalize(l9_128+l9_5)),0.0,1.0),5.0))))*l9_132);
l9_126++;
continue;
}
else
{
break;
}
}
l9_123=l9_114+l9_125;
}
#else
{
l9_123=l9_114;
}
#endif
float l9_135;
vec3 l9_136;
vec3 l9_137;
vec3 l9_138;
#if (sc_BlendMode_ColoredGlass)
{
l9_138=vec3(0.0);
l9_137=vec3(0.0);
l9_136=ssSRGB_to_Linear(sc_GetFramebufferColor().xyz)*mix(vec3(1.0),l9_14,vec3(l9_0));
l9_135=1.0;
}
#else
{
l9_138=l9_68;
l9_137=l9_100;
l9_136=l9_39;
l9_135=l9_0;
}
#endif
bool l9_139;
#if (sc_BlendMode_PremultipliedAlpha)
{
l9_139=true;
}
#else
{
l9_139=false;
}
#endif
vec3 l9_140;
if (receivesRayTracedAo)
{
l9_140=l9_14*(l9_138+(l9_137*vec3(1.0-sampleRayTracedAo())));
}
else
{
l9_140=l9_14*(l9_138+(l9_137*l9_11));
}
vec3 l9_141=l9_123*l9_10;
vec3 l9_142=l9_67+l9_141;
vec3 l9_143;
if (l9_139)
{
l9_143=l9_140*srgbToLinear(l9_135);
}
else
{
l9_143=l9_140;
}
vec3 l9_144=l9_143+l9_142;
vec3 l9_145=(l9_144+l9_6)+l9_136;
float l9_146=l9_145.x;
vec4 l9_147=vec4(l9_146,l9_145.yz,l9_135);
vec4 l9_148;
#if (sc_IsEditor)
{
vec4 l9_149=l9_147;
l9_149.x=l9_146+((l9_11.x*l9_10.x)*9.9999997e-06);
l9_148=l9_149;
}
#else
{
l9_148=l9_147;
}
#endif
if (isProxyMode)
{
return l9_148;
}
vec4 l9_150;
#if (!sc_BlendMode_Multiply)
{
vec3 l9_151=l9_148.xyz*1.8;
vec3 l9_152=(l9_148.xyz*(l9_151+vec3(1.4)))/((l9_148.xyz*(l9_151+vec3(0.5)))+vec3(1.5));
l9_150=vec4(l9_152.x,l9_152.y,l9_152.z,l9_148.w);
}
#else
{
l9_150=l9_148;
}
#endif
vec3 l9_153=vec3(linearToSrgb(l9_150.x),linearToSrgb(l9_150.y),linearToSrgb(l9_150.z));
return vec4(l9_153.x,l9_153.y,l9_153.z,l9_150.w);
}
void sc_writeFragData0Internal(vec4 col,float zero,int cacheConst)
{
    col.x+=zero*float(cacheConst);
    sc_FragData0=col;
}
int intensityTextureGetStereoViewIndex()
{
int l9_0;
#if (intensityTextureHasSwappedViews)
{
l9_0=1-sc_GetStereoViewIndex();
}
#else
{
l9_0=sc_GetStereoViewIndex();
}
#endif
return l9_0;
}
float transformSingleColor(float original,float intMap,float target)
{
#if ((BLEND_MODE_REALISTIC||BLEND_MODE_FORGRAY)||BLEND_MODE_NOTBRIGHT)
{
return original/pow(1.0-target,intMap);
}
#else
{
#if (BLEND_MODE_DIVISION)
{
return original/(1.0-target);
}
#else
{
#if (BLEND_MODE_BRIGHT)
{
return original/pow(1.0-target,2.0-(2.0*original));
}
#endif
}
#endif
}
#endif
return 0.0;
}
vec3 RGBtoHCV(vec3 rgb)
{
vec4 l9_0;
if (rgb.y<rgb.z)
{
l9_0=vec4(rgb.zy,-1.0,0.66666669);
}
else
{
l9_0=vec4(rgb.yz,0.0,-0.33333334);
}
vec4 l9_1;
if (rgb.x<l9_0.x)
{
l9_1=vec4(l9_0.xyw,rgb.x);
}
else
{
l9_1=vec4(rgb.x,l9_0.yzx);
}
float l9_2=l9_1.x-min(l9_1.w,l9_1.y);
return vec3(abs(((l9_1.w-l9_1.y)/((6.0*l9_2)+1e-07))+l9_1.z),l9_2,l9_1.x);
}
vec3 RGBToHSL(vec3 rgb)
{
vec3 l9_0=RGBtoHCV(rgb);
float l9_1=l9_0.y;
float l9_2=l9_0.z-(l9_1*0.5);
return vec3(l9_0.x,l9_1/((1.0-abs((2.0*l9_2)-1.0))+1e-07),l9_2);
}
vec3 HUEtoRGB(float hue)
{
return clamp(vec3(abs((6.0*hue)-3.0)-1.0,2.0-abs((6.0*hue)-2.0),2.0-abs((6.0*hue)-4.0)),vec3(0.0),vec3(1.0));
}
vec3 HSLToRGB(vec3 hsl)
{
return ((HUEtoRGB(hsl.x)-vec3(0.5))*((1.0-abs((2.0*hsl.z)-1.0))*hsl.y))+vec3(hsl.z);
}
vec3 transformColor(float yValue,vec3 original,vec3 target,float weight,float intMap)
{
#if (BLEND_MODE_INTENSE)
{
return mix(original,HSLToRGB(vec3(target.x,target.y,RGBToHSL(original).z)),vec3(weight));
}
#else
{
return mix(original,clamp(vec3(transformSingleColor(yValue,intMap,target.x),transformSingleColor(yValue,intMap,target.y),transformSingleColor(yValue,intMap,target.z)),vec3(0.0),vec3(1.0)),vec3(weight));
}
#endif
}
vec3 definedBlend(vec3 a,vec3 b)
{
#if (BLEND_MODE_LIGHTEN)
{
return max(a,b);
}
#else
{
#if (BLEND_MODE_DARKEN)
{
return min(a,b);
}
#else
{
#if (BLEND_MODE_DIVIDE)
{
return b/a;
}
#else
{
#if (BLEND_MODE_AVERAGE)
{
return (a+b)*0.5;
}
#else
{
#if (BLEND_MODE_SUBTRACT)
{
return max((a+b)-vec3(1.0),vec3(0.0));
}
#else
{
#if (BLEND_MODE_DIFFERENCE)
{
return abs(a-b);
}
#else
{
#if (BLEND_MODE_NEGATION)
{
return vec3(1.0)-abs((vec3(1.0)-a)-b);
}
#else
{
#if (BLEND_MODE_EXCLUSION)
{
return (a+b)-((a*2.0)*b);
}
#else
{
#if (BLEND_MODE_OVERLAY)
{
float l9_0;
if (a.x<0.5)
{
l9_0=(2.0*a.x)*b.x;
}
else
{
l9_0=1.0-((2.0*(1.0-a.x))*(1.0-b.x));
}
float l9_1;
if (a.y<0.5)
{
l9_1=(2.0*a.y)*b.y;
}
else
{
l9_1=1.0-((2.0*(1.0-a.y))*(1.0-b.y));
}
float l9_2;
if (a.z<0.5)
{
l9_2=(2.0*a.z)*b.z;
}
else
{
l9_2=1.0-((2.0*(1.0-a.z))*(1.0-b.z));
}
return vec3(l9_0,l9_1,l9_2);
}
#else
{
#if (BLEND_MODE_SOFT_LIGHT)
{
return (((vec3(1.0)-(b*2.0))*a)*a)+((a*2.0)*b);
}
#else
{
#if (BLEND_MODE_HARD_LIGHT)
{
float l9_3;
if (b.x<0.5)
{
l9_3=(2.0*b.x)*a.x;
}
else
{
l9_3=1.0-((2.0*(1.0-b.x))*(1.0-a.x));
}
float l9_4;
if (b.y<0.5)
{
l9_4=(2.0*b.y)*a.y;
}
else
{
l9_4=1.0-((2.0*(1.0-b.y))*(1.0-a.y));
}
float l9_5;
if (b.z<0.5)
{
l9_5=(2.0*b.z)*a.z;
}
else
{
l9_5=1.0-((2.0*(1.0-b.z))*(1.0-a.z));
}
return vec3(l9_3,l9_4,l9_5);
}
#else
{
#if (BLEND_MODE_COLOR_DODGE)
{
float l9_6;
if (b.x==1.0)
{
l9_6=b.x;
}
else
{
l9_6=min(a.x/(1.0-b.x),1.0);
}
float l9_7;
if (b.y==1.0)
{
l9_7=b.y;
}
else
{
l9_7=min(a.y/(1.0-b.y),1.0);
}
float l9_8;
if (b.z==1.0)
{
l9_8=b.z;
}
else
{
l9_8=min(a.z/(1.0-b.z),1.0);
}
return vec3(l9_6,l9_7,l9_8);
}
#else
{
#if (BLEND_MODE_COLOR_BURN)
{
float l9_9;
if (b.x==0.0)
{
l9_9=b.x;
}
else
{
l9_9=max(1.0-((1.0-a.x)/b.x),0.0);
}
float l9_10;
if (b.y==0.0)
{
l9_10=b.y;
}
else
{
l9_10=max(1.0-((1.0-a.y)/b.y),0.0);
}
float l9_11;
if (b.z==0.0)
{
l9_11=b.z;
}
else
{
l9_11=max(1.0-((1.0-a.z)/b.z),0.0);
}
return vec3(l9_9,l9_10,l9_11);
}
#else
{
#if (BLEND_MODE_LINEAR_LIGHT)
{
float l9_12;
if (b.x<0.5)
{
l9_12=max((a.x+(2.0*b.x))-1.0,0.0);
}
else
{
l9_12=min(a.x+(2.0*(b.x-0.5)),1.0);
}
float l9_13;
if (b.y<0.5)
{
l9_13=max((a.y+(2.0*b.y))-1.0,0.0);
}
else
{
l9_13=min(a.y+(2.0*(b.y-0.5)),1.0);
}
float l9_14;
if (b.z<0.5)
{
l9_14=max((a.z+(2.0*b.z))-1.0,0.0);
}
else
{
l9_14=min(a.z+(2.0*(b.z-0.5)),1.0);
}
return vec3(l9_12,l9_13,l9_14);
}
#else
{
#if (BLEND_MODE_VIVID_LIGHT)
{
float l9_15;
if (b.x<0.5)
{
float l9_16;
if ((2.0*b.x)==0.0)
{
l9_16=2.0*b.x;
}
else
{
l9_16=max(1.0-((1.0-a.x)/(2.0*b.x)),0.0);
}
l9_15=l9_16;
}
else
{
float l9_17;
if ((2.0*(b.x-0.5))==1.0)
{
l9_17=2.0*(b.x-0.5);
}
else
{
l9_17=min(a.x/(1.0-(2.0*(b.x-0.5))),1.0);
}
l9_15=l9_17;
}
float l9_18;
if (b.y<0.5)
{
float l9_19;
if ((2.0*b.y)==0.0)
{
l9_19=2.0*b.y;
}
else
{
l9_19=max(1.0-((1.0-a.y)/(2.0*b.y)),0.0);
}
l9_18=l9_19;
}
else
{
float l9_20;
if ((2.0*(b.y-0.5))==1.0)
{
l9_20=2.0*(b.y-0.5);
}
else
{
l9_20=min(a.y/(1.0-(2.0*(b.y-0.5))),1.0);
}
l9_18=l9_20;
}
float l9_21;
if (b.z<0.5)
{
float l9_22;
if ((2.0*b.z)==0.0)
{
l9_22=2.0*b.z;
}
else
{
l9_22=max(1.0-((1.0-a.z)/(2.0*b.z)),0.0);
}
l9_21=l9_22;
}
else
{
float l9_23;
if ((2.0*(b.z-0.5))==1.0)
{
l9_23=2.0*(b.z-0.5);
}
else
{
l9_23=min(a.z/(1.0-(2.0*(b.z-0.5))),1.0);
}
l9_21=l9_23;
}
return vec3(l9_15,l9_18,l9_21);
}
#else
{
#if (BLEND_MODE_PIN_LIGHT)
{
float l9_24;
if (b.x<0.5)
{
l9_24=min(a.x,2.0*b.x);
}
else
{
l9_24=max(a.x,2.0*(b.x-0.5));
}
float l9_25;
if (b.y<0.5)
{
l9_25=min(a.y,2.0*b.y);
}
else
{
l9_25=max(a.y,2.0*(b.y-0.5));
}
float l9_26;
if (b.z<0.5)
{
l9_26=min(a.z,2.0*b.z);
}
else
{
l9_26=max(a.z,2.0*(b.z-0.5));
}
return vec3(l9_24,l9_25,l9_26);
}
#else
{
#if (BLEND_MODE_HARD_MIX)
{
float l9_27;
if (b.x<0.5)
{
float l9_28;
if ((2.0*b.x)==0.0)
{
l9_28=2.0*b.x;
}
else
{
l9_28=max(1.0-((1.0-a.x)/(2.0*b.x)),0.0);
}
l9_27=l9_28;
}
else
{
float l9_29;
if ((2.0*(b.x-0.5))==1.0)
{
l9_29=2.0*(b.x-0.5);
}
else
{
l9_29=min(a.x/(1.0-(2.0*(b.x-0.5))),1.0);
}
l9_27=l9_29;
}
bool l9_30=l9_27<0.5;
float l9_31;
if (b.y<0.5)
{
float l9_32;
if ((2.0*b.y)==0.0)
{
l9_32=2.0*b.y;
}
else
{
l9_32=max(1.0-((1.0-a.y)/(2.0*b.y)),0.0);
}
l9_31=l9_32;
}
else
{
float l9_33;
if ((2.0*(b.y-0.5))==1.0)
{
l9_33=2.0*(b.y-0.5);
}
else
{
l9_33=min(a.y/(1.0-(2.0*(b.y-0.5))),1.0);
}
l9_31=l9_33;
}
bool l9_34=l9_31<0.5;
float l9_35;
if (b.z<0.5)
{
float l9_36;
if ((2.0*b.z)==0.0)
{
l9_36=2.0*b.z;
}
else
{
l9_36=max(1.0-((1.0-a.z)/(2.0*b.z)),0.0);
}
l9_35=l9_36;
}
else
{
float l9_37;
if ((2.0*(b.z-0.5))==1.0)
{
l9_37=2.0*(b.z-0.5);
}
else
{
l9_37=min(a.z/(1.0-(2.0*(b.z-0.5))),1.0);
}
l9_35=l9_37;
}
return vec3(l9_30 ? 0.0 : 1.0,l9_34 ? 0.0 : 1.0,(l9_35<0.5) ? 0.0 : 1.0);
}
#else
{
#if (BLEND_MODE_HARD_REFLECT)
{
float l9_38;
if (b.x==1.0)
{
l9_38=b.x;
}
else
{
l9_38=min((a.x*a.x)/(1.0-b.x),1.0);
}
float l9_39;
if (b.y==1.0)
{
l9_39=b.y;
}
else
{
l9_39=min((a.y*a.y)/(1.0-b.y),1.0);
}
float l9_40;
if (b.z==1.0)
{
l9_40=b.z;
}
else
{
l9_40=min((a.z*a.z)/(1.0-b.z),1.0);
}
return vec3(l9_38,l9_39,l9_40);
}
#else
{
#if (BLEND_MODE_HARD_GLOW)
{
float l9_41;
if (a.x==1.0)
{
l9_41=a.x;
}
else
{
l9_41=min((b.x*b.x)/(1.0-a.x),1.0);
}
float l9_42;
if (a.y==1.0)
{
l9_42=a.y;
}
else
{
l9_42=min((b.y*b.y)/(1.0-a.y),1.0);
}
float l9_43;
if (a.z==1.0)
{
l9_43=a.z;
}
else
{
l9_43=min((b.z*b.z)/(1.0-a.z),1.0);
}
return vec3(l9_41,l9_42,l9_43);
}
#else
{
#if (BLEND_MODE_HARD_PHOENIX)
{
return (min(a,b)-max(a,b))+vec3(1.0);
}
#else
{
#if (BLEND_MODE_HUE)
{
return HSLToRGB(vec3(RGBToHSL(b).x,RGBToHSL(a).yz));
}
#else
{
#if (BLEND_MODE_SATURATION)
{
vec3 l9_44=RGBToHSL(a);
return HSLToRGB(vec3(l9_44.x,RGBToHSL(b).y,l9_44.z));
}
#else
{
#if (BLEND_MODE_COLOR)
{
return HSLToRGB(vec3(RGBToHSL(b).xy,RGBToHSL(a).z));
}
#else
{
#if (BLEND_MODE_LUMINOSITY)
{
return HSLToRGB(vec3(RGBToHSL(a).xy,RGBToHSL(b).z));
}
#else
{
vec3 l9_45=a;
vec3 l9_46=b;
float l9_47=((0.29899999*l9_45.x)+(0.58700001*l9_45.y))+(0.114*l9_45.z);
float l9_48=pow(l9_47,1.0/correctedIntensity);
vec4 l9_49;
#if (intensityTextureLayout==2)
{
bool l9_50=(int(SC_USE_CLAMP_TO_BORDER_intensityTexture)!=0)&&(!(int(SC_USE_UV_MIN_MAX_intensityTexture)!=0));
float l9_51=l9_48;
sc_SoftwareWrapEarly(l9_51,ivec2(SC_SOFTWARE_WRAP_MODE_U_intensityTexture,SC_SOFTWARE_WRAP_MODE_V_intensityTexture).x);
float l9_52=l9_51;
float l9_53=0.5;
sc_SoftwareWrapEarly(l9_53,ivec2(SC_SOFTWARE_WRAP_MODE_U_intensityTexture,SC_SOFTWARE_WRAP_MODE_V_intensityTexture).y);
float l9_54=l9_53;
vec2 l9_55;
float l9_56;
#if (SC_USE_UV_MIN_MAX_intensityTexture)
{
bool l9_57;
#if (SC_USE_CLAMP_TO_BORDER_intensityTexture)
{
l9_57=ivec2(SC_SOFTWARE_WRAP_MODE_U_intensityTexture,SC_SOFTWARE_WRAP_MODE_V_intensityTexture).x==3;
}
#else
{
l9_57=(int(SC_USE_CLAMP_TO_BORDER_intensityTexture)!=0);
}
#endif
float l9_58=l9_52;
float l9_59=1.0;
sc_ClampUV(l9_58,intensityTextureUvMinMax.x,intensityTextureUvMinMax.z,l9_57,l9_59);
float l9_60=l9_58;
float l9_61=l9_59;
bool l9_62;
#if (SC_USE_CLAMP_TO_BORDER_intensityTexture)
{
l9_62=ivec2(SC_SOFTWARE_WRAP_MODE_U_intensityTexture,SC_SOFTWARE_WRAP_MODE_V_intensityTexture).y==3;
}
#else
{
l9_62=(int(SC_USE_CLAMP_TO_BORDER_intensityTexture)!=0);
}
#endif
float l9_63=l9_54;
float l9_64=l9_61;
sc_ClampUV(l9_63,intensityTextureUvMinMax.y,intensityTextureUvMinMax.w,l9_62,l9_64);
l9_56=l9_64;
l9_55=vec2(l9_60,l9_63);
}
#else
{
l9_56=1.0;
l9_55=vec2(l9_52,l9_54);
}
#endif
vec2 l9_65=sc_TransformUV(l9_55,(int(SC_USE_UV_TRANSFORM_intensityTexture)!=0),intensityTextureTransform);
float l9_66=l9_65.x;
float l9_67=l9_56;
sc_SoftwareWrapLate(l9_66,ivec2(SC_SOFTWARE_WRAP_MODE_U_intensityTexture,SC_SOFTWARE_WRAP_MODE_V_intensityTexture).x,l9_50,l9_67);
float l9_68=l9_65.y;
float l9_69=l9_67;
sc_SoftwareWrapLate(l9_68,ivec2(SC_SOFTWARE_WRAP_MODE_U_intensityTexture,SC_SOFTWARE_WRAP_MODE_V_intensityTexture).y,l9_50,l9_69);
float l9_70=l9_69;
vec3 l9_71=sc_SamplingCoordsViewToGlobal(vec2(l9_66,l9_68),intensityTextureLayout,intensityTextureGetStereoViewIndex());
vec4 l9_72=texture(intensityTextureArrSC,l9_71,0.0);
vec4 l9_73;
#if (SC_USE_CLAMP_TO_BORDER_intensityTexture)
{
l9_73=mix(intensityTextureBorderColor,l9_72,vec4(l9_70));
}
#else
{
l9_73=l9_72;
}
#endif
l9_49=l9_73;
}
#else
{
bool l9_74=(int(SC_USE_CLAMP_TO_BORDER_intensityTexture)!=0)&&(!(int(SC_USE_UV_MIN_MAX_intensityTexture)!=0));
float l9_75=l9_48;
sc_SoftwareWrapEarly(l9_75,ivec2(SC_SOFTWARE_WRAP_MODE_U_intensityTexture,SC_SOFTWARE_WRAP_MODE_V_intensityTexture).x);
float l9_76=l9_75;
float l9_77=0.5;
sc_SoftwareWrapEarly(l9_77,ivec2(SC_SOFTWARE_WRAP_MODE_U_intensityTexture,SC_SOFTWARE_WRAP_MODE_V_intensityTexture).y);
float l9_78=l9_77;
vec2 l9_79;
float l9_80;
#if (SC_USE_UV_MIN_MAX_intensityTexture)
{
bool l9_81;
#if (SC_USE_CLAMP_TO_BORDER_intensityTexture)
{
l9_81=ivec2(SC_SOFTWARE_WRAP_MODE_U_intensityTexture,SC_SOFTWARE_WRAP_MODE_V_intensityTexture).x==3;
}
#else
{
l9_81=(int(SC_USE_CLAMP_TO_BORDER_intensityTexture)!=0);
}
#endif
float l9_82=l9_76;
float l9_83=1.0;
sc_ClampUV(l9_82,intensityTextureUvMinMax.x,intensityTextureUvMinMax.z,l9_81,l9_83);
float l9_84=l9_82;
float l9_85=l9_83;
bool l9_86;
#if (SC_USE_CLAMP_TO_BORDER_intensityTexture)
{
l9_86=ivec2(SC_SOFTWARE_WRAP_MODE_U_intensityTexture,SC_SOFTWARE_WRAP_MODE_V_intensityTexture).y==3;
}
#else
{
l9_86=(int(SC_USE_CLAMP_TO_BORDER_intensityTexture)!=0);
}
#endif
float l9_87=l9_78;
float l9_88=l9_85;
sc_ClampUV(l9_87,intensityTextureUvMinMax.y,intensityTextureUvMinMax.w,l9_86,l9_88);
l9_80=l9_88;
l9_79=vec2(l9_84,l9_87);
}
#else
{
l9_80=1.0;
l9_79=vec2(l9_76,l9_78);
}
#endif
vec2 l9_89=sc_TransformUV(l9_79,(int(SC_USE_UV_TRANSFORM_intensityTexture)!=0),intensityTextureTransform);
float l9_90=l9_89.x;
float l9_91=l9_80;
sc_SoftwareWrapLate(l9_90,ivec2(SC_SOFTWARE_WRAP_MODE_U_intensityTexture,SC_SOFTWARE_WRAP_MODE_V_intensityTexture).x,l9_74,l9_91);
float l9_92=l9_89.y;
float l9_93=l9_91;
sc_SoftwareWrapLate(l9_92,ivec2(SC_SOFTWARE_WRAP_MODE_U_intensityTexture,SC_SOFTWARE_WRAP_MODE_V_intensityTexture).y,l9_74,l9_93);
float l9_94=l9_93;
vec3 l9_95=sc_SamplingCoordsViewToGlobal(vec2(l9_90,l9_92),intensityTextureLayout,intensityTextureGetStereoViewIndex());
vec4 l9_96=texture(intensityTexture,l9_95.xy,0.0);
vec4 l9_97;
#if (SC_USE_CLAMP_TO_BORDER_intensityTexture)
{
l9_97=mix(intensityTextureBorderColor,l9_96,vec4(l9_94));
}
#else
{
l9_97=l9_96;
}
#endif
l9_49=l9_97;
}
#endif
float l9_98=((((l9_49.x*256.0)+l9_49.y)+(l9_49.z/256.0))/257.00391)*16.0;
float l9_99;
#if (BLEND_MODE_FORGRAY)
{
l9_99=max(l9_98,1.0);
}
#else
{
l9_99=l9_98;
}
#endif
float l9_100;
#if (BLEND_MODE_NOTBRIGHT)
{
l9_100=min(l9_99,1.0);
}
#else
{
l9_100=l9_99;
}
#endif
return transformColor(l9_47,l9_45,l9_46,1.0,l9_100);
}
#endif
}
#endif
}
#endif
}
#endif
}
#endif
}
#endif
}
#endif
}
#endif
}
#endif
}
#endif
}
#endif
}
#endif
}
#endif
}
#endif
}
#endif
}
#endif
}
#endif
}
#endif
}
#endif
}
#endif
}
#endif
}
#endif
}
#endif
}
#endif
}
vec4 outputMotionVectorsIfNeeded(vec3 surfacePosWorldSpace,vec4 finalColor)
{
#if (sc_MotionVectorsPass)
{
vec4 l9_0=vec4(surfacePosWorldSpace,1.0);
vec4 l9_1=sc_ViewProjectionMatrixArray[sc_GetStereoViewIndex()]*l9_0;
vec4 l9_2=((sc_PrevFrameViewProjectionMatrixArray[sc_GetStereoViewIndex()]*sc_PrevFrameModelMatrix)*sc_ModelMatrixInverse)*l9_0;
vec2 l9_3=((l9_1.xy/vec2(l9_1.w)).xy-(l9_2.xy/vec2(l9_2.w)).xy)*0.5;
float l9_4=floor(((l9_3.x*5.0)+0.5)*65535.0);
float l9_5=floor(l9_4*0.00390625);
float l9_6=floor(((l9_3.y*5.0)+0.5)*65535.0);
float l9_7=floor(l9_6*0.00390625);
return vec4(l9_5/255.0,(l9_4-(l9_5*256.0))/255.0,l9_7/255.0,(l9_6-(l9_7*256.0))/255.0);
}
#else
{
return finalColor;
}
#endif
}
float getFrontLayerZTestEpsilon()
{
#if (sc_SkinBonesCount>0)
{
return 5e-07;
}
#else
{
return 5.0000001e-08;
}
#endif
}
void unpackValues(float channel,int passIndex,inout int values[8])
{
#if (sc_OITCompositingPass)
{
channel=floor((channel*255.0)+0.5);
int l9_0=((passIndex+1)*4)-1;
for (int snapLoopIndex=0; snapLoopIndex==0; snapLoopIndex+=0)
{
if (l9_0>=(passIndex*4))
{
values[l9_0]=(values[l9_0]*4)+int(floor(mod(channel,4.0)));
channel=floor(channel/4.0);
l9_0--;
continue;
}
else
{
break;
}
}
}
#endif
}
float getDepthOrderingEpsilon()
{
#if (sc_SkinBonesCount>0)
{
return 0.001;
}
#else
{
return 0.0;
}
#endif
}
int encodeDepth(float depth,vec2 depthBounds)
{
float l9_0=(1.0-depthBounds.x)*1000.0;
return int(clamp((depth-l9_0)/((depthBounds.y*1000.0)-l9_0),0.0,1.0)*65535.0);
}
float viewSpaceDepth()
{
#if (UseViewSpaceDepthVariant&&((sc_OITDepthGatherPass||sc_OITCompositingPass)||sc_OITDepthBoundsPass))
{
return varViewSpaceDepth;
}
#else
{
return sc_ProjectionMatrixArray[sc_GetStereoViewIndex()][3].z/(sc_ProjectionMatrixArray[sc_GetStereoViewIndex()][2].z+((gl_FragCoord.z*2.0)-1.0));
}
#endif
}
float packValue(inout int value)
{
#if (sc_OITDepthGatherPass)
{
int l9_0=value;
value/=4;
return floor(floor(mod(float(l9_0),4.0))*64.0)/255.0;
}
#else
{
return 0.0;
}
#endif
}
void sc_writeFragData1(vec4 col)
{
#if sc_FragDataCount>=2
    sc_FragData1=col;
#endif
}
void sc_writeFragData2(vec4 col)
{
#if sc_FragDataCount>=3
    sc_FragData2=col;
#endif
}
void main()
{
N7_EnableUV2=false;
#if (sc_DepthOnly)
{
return;
}
#endif
#if ((sc_StereoRenderingMode==1)&&(sc_StereoRendering_IsClipDistanceEnabled==0))
{
if (varClipDistance<0.0)
{
discard;
}
}
#endif
vec2 l9_0;
vec4 l9_1;
vec2 l9_2;
vec2 l9_3;
vec3 l9_4;
vec3 l9_5;
vec3 l9_6;
vec3 l9_7;
vec3 l9_8;
if (isProxyMode)
{
RayHitPayload l9_9=GetHitData(ivec2(gl_FragCoord.xy));
vec3 l9_10=l9_9.positionWS;
vec3 l9_11=l9_9.normalWS;
vec4 l9_12=l9_9.tangentWS;
if (noEarlyZ)
{
if (l9_9.id.x!=uint(instance_id))
{
return;
}
}
vec3 l9_13=l9_12.xyz;
vec4 l9_14=sc_ViewProjectionMatrixArray[sc_GetStereoViewIndex()]*vec4(l9_10,1.0);
l9_8=l9_9.viewDirWS;
l9_7=l9_10;
l9_6=l9_11;
l9_5=l9_13;
l9_4=cross(l9_11,l9_13)*l9_12.w;
l9_3=l9_9.uv0;
l9_2=l9_9.uv1;
l9_1=l9_9.color;
l9_0=((l9_14.xy/vec2(l9_14.w))*0.5)+vec2(0.5);
}
else
{
vec3 l9_15=normalize(varNormal);
vec3 l9_16=normalize(varTangent.xyz);
l9_8=normalize(sc_Camera.position-varPos);
l9_7=varPos;
l9_6=l9_15;
l9_5=l9_16;
l9_4=cross(l9_15,l9_16)*varTangent.w;
l9_3=varPackedTex.xy;
l9_2=varPackedTex.zw;
l9_1=varColor;
l9_0=sc_ScreenCoordsGlobalToView(gl_FragCoord.xy*sc_CurrentRenderTargetDims.zw);
}
tempGlobals=ssGlobals(sc_Time.x,sc_Time.y,0.0,vec2(0.0),vec2(0.0),vec3(0.0),l9_8,l9_7,l9_6,l9_5,l9_4,l9_3,l9_2,l9_1,l9_0,l9_7);
N7_EnableUV2=(int(ENABLE_UV2)!=0);
tempGlobals.N7_TransformedUV2=N7_gettransformUV(NODE_13_DROPLIST_ITEM,uv2Scale,uv2Offset,(int(uv2EnableAnimation)!=0),N7_EnableUV2);
tempGlobals.N7_TransformedUV3=N7_gettransformUV(NODE_49_DROPLIST_ITEM,uv3Scale,uv3Offset,(int(uv3EnableAnimation)!=0),(int(ENABLE_UV3)!=0));
vec4 l9_17;
#if (ENABLE_BASE_TEX)
{
vec2 l9_18=N7_getUV(NODE_27_DROPLIST_ITEM);
vec4 l9_19;
#if (baseTexLayout==2)
{
bool l9_20=(int(SC_USE_CLAMP_TO_BORDER_baseTex)!=0)&&(!(int(SC_USE_UV_MIN_MAX_baseTex)!=0));
float l9_21=l9_18.x;
sc_SoftwareWrapEarly(l9_21,ivec2(SC_SOFTWARE_WRAP_MODE_U_baseTex,SC_SOFTWARE_WRAP_MODE_V_baseTex).x);
float l9_22=l9_21;
float l9_23=l9_18.y;
sc_SoftwareWrapEarly(l9_23,ivec2(SC_SOFTWARE_WRAP_MODE_U_baseTex,SC_SOFTWARE_WRAP_MODE_V_baseTex).y);
float l9_24=l9_23;
vec2 l9_25;
float l9_26;
#if (SC_USE_UV_MIN_MAX_baseTex)
{
bool l9_27;
#if (SC_USE_CLAMP_TO_BORDER_baseTex)
{
l9_27=ivec2(SC_SOFTWARE_WRAP_MODE_U_baseTex,SC_SOFTWARE_WRAP_MODE_V_baseTex).x==3;
}
#else
{
l9_27=(int(SC_USE_CLAMP_TO_BORDER_baseTex)!=0);
}
#endif
float l9_28=l9_22;
float l9_29=1.0;
sc_ClampUV(l9_28,baseTexUvMinMax.x,baseTexUvMinMax.z,l9_27,l9_29);
float l9_30=l9_28;
float l9_31=l9_29;
bool l9_32;
#if (SC_USE_CLAMP_TO_BORDER_baseTex)
{
l9_32=ivec2(SC_SOFTWARE_WRAP_MODE_U_baseTex,SC_SOFTWARE_WRAP_MODE_V_baseTex).y==3;
}
#else
{
l9_32=(int(SC_USE_CLAMP_TO_BORDER_baseTex)!=0);
}
#endif
float l9_33=l9_24;
float l9_34=l9_31;
sc_ClampUV(l9_33,baseTexUvMinMax.y,baseTexUvMinMax.w,l9_32,l9_34);
l9_26=l9_34;
l9_25=vec2(l9_30,l9_33);
}
#else
{
l9_26=1.0;
l9_25=vec2(l9_22,l9_24);
}
#endif
vec2 l9_35=sc_TransformUV(l9_25,(int(SC_USE_UV_TRANSFORM_baseTex)!=0),baseTexTransform);
float l9_36=l9_35.x;
float l9_37=l9_26;
sc_SoftwareWrapLate(l9_36,ivec2(SC_SOFTWARE_WRAP_MODE_U_baseTex,SC_SOFTWARE_WRAP_MODE_V_baseTex).x,l9_20,l9_37);
float l9_38=l9_35.y;
float l9_39=l9_37;
sc_SoftwareWrapLate(l9_38,ivec2(SC_SOFTWARE_WRAP_MODE_U_baseTex,SC_SOFTWARE_WRAP_MODE_V_baseTex).y,l9_20,l9_39);
float l9_40=l9_39;
vec3 l9_41=sc_SamplingCoordsViewToGlobal(vec2(l9_36,l9_38),baseTexLayout,baseTexGetStereoViewIndex());
vec4 l9_42=texture(baseTexArrSC,l9_41,0.0);
vec4 l9_43;
#if (SC_USE_CLAMP_TO_BORDER_baseTex)
{
l9_43=mix(baseTexBorderColor,l9_42,vec4(l9_40));
}
#else
{
l9_43=l9_42;
}
#endif
l9_19=l9_43;
}
#else
{
bool l9_44=(int(SC_USE_CLAMP_TO_BORDER_baseTex)!=0)&&(!(int(SC_USE_UV_MIN_MAX_baseTex)!=0));
float l9_45=l9_18.x;
sc_SoftwareWrapEarly(l9_45,ivec2(SC_SOFTWARE_WRAP_MODE_U_baseTex,SC_SOFTWARE_WRAP_MODE_V_baseTex).x);
float l9_46=l9_45;
float l9_47=l9_18.y;
sc_SoftwareWrapEarly(l9_47,ivec2(SC_SOFTWARE_WRAP_MODE_U_baseTex,SC_SOFTWARE_WRAP_MODE_V_baseTex).y);
float l9_48=l9_47;
vec2 l9_49;
float l9_50;
#if (SC_USE_UV_MIN_MAX_baseTex)
{
bool l9_51;
#if (SC_USE_CLAMP_TO_BORDER_baseTex)
{
l9_51=ivec2(SC_SOFTWARE_WRAP_MODE_U_baseTex,SC_SOFTWARE_WRAP_MODE_V_baseTex).x==3;
}
#else
{
l9_51=(int(SC_USE_CLAMP_TO_BORDER_baseTex)!=0);
}
#endif
float l9_52=l9_46;
float l9_53=1.0;
sc_ClampUV(l9_52,baseTexUvMinMax.x,baseTexUvMinMax.z,l9_51,l9_53);
float l9_54=l9_52;
float l9_55=l9_53;
bool l9_56;
#if (SC_USE_CLAMP_TO_BORDER_baseTex)
{
l9_56=ivec2(SC_SOFTWARE_WRAP_MODE_U_baseTex,SC_SOFTWARE_WRAP_MODE_V_baseTex).y==3;
}
#else
{
l9_56=(int(SC_USE_CLAMP_TO_BORDER_baseTex)!=0);
}
#endif
float l9_57=l9_48;
float l9_58=l9_55;
sc_ClampUV(l9_57,baseTexUvMinMax.y,baseTexUvMinMax.w,l9_56,l9_58);
l9_50=l9_58;
l9_49=vec2(l9_54,l9_57);
}
#else
{
l9_50=1.0;
l9_49=vec2(l9_46,l9_48);
}
#endif
vec2 l9_59=sc_TransformUV(l9_49,(int(SC_USE_UV_TRANSFORM_baseTex)!=0),baseTexTransform);
float l9_60=l9_59.x;
float l9_61=l9_50;
sc_SoftwareWrapLate(l9_60,ivec2(SC_SOFTWARE_WRAP_MODE_U_baseTex,SC_SOFTWARE_WRAP_MODE_V_baseTex).x,l9_44,l9_61);
float l9_62=l9_59.y;
float l9_63=l9_61;
sc_SoftwareWrapLate(l9_62,ivec2(SC_SOFTWARE_WRAP_MODE_U_baseTex,SC_SOFTWARE_WRAP_MODE_V_baseTex).y,l9_44,l9_63);
float l9_64=l9_63;
vec3 l9_65=sc_SamplingCoordsViewToGlobal(vec2(l9_60,l9_62),baseTexLayout,baseTexGetStereoViewIndex());
vec4 l9_66=texture(baseTex,l9_65.xy,0.0);
vec4 l9_67;
#if (SC_USE_CLAMP_TO_BORDER_baseTex)
{
l9_67=mix(baseTexBorderColor,l9_66,vec4(l9_64));
}
#else
{
l9_67=l9_66;
}
#endif
l9_19=l9_67;
}
#endif
l9_17=baseColor*l9_19;
}
#else
{
l9_17=baseColor;
}
#endif
vec4 l9_68;
#if (ENABLE_RECOLOR)
{
vec3 l9_69=((recolorRed*l9_17.x)+(recolorGreen*l9_17.y))+(recolorBlue*l9_17.z);
l9_68=vec4(l9_69.x,l9_69.y,l9_69.z,l9_17.w);
}
#else
{
l9_68=l9_17;
}
#endif
float l9_70;
#if (ENABLE_OPACITY_TEX)
{
vec2 l9_71=N7_getUV(NODE_69_DROPLIST_ITEM);
vec4 l9_72;
#if (opacityTexLayout==2)
{
bool l9_73=(int(SC_USE_CLAMP_TO_BORDER_opacityTex)!=0)&&(!(int(SC_USE_UV_MIN_MAX_opacityTex)!=0));
float l9_74=l9_71.x;
sc_SoftwareWrapEarly(l9_74,ivec2(SC_SOFTWARE_WRAP_MODE_U_opacityTex,SC_SOFTWARE_WRAP_MODE_V_opacityTex).x);
float l9_75=l9_74;
float l9_76=l9_71.y;
sc_SoftwareWrapEarly(l9_76,ivec2(SC_SOFTWARE_WRAP_MODE_U_opacityTex,SC_SOFTWARE_WRAP_MODE_V_opacityTex).y);
float l9_77=l9_76;
vec2 l9_78;
float l9_79;
#if (SC_USE_UV_MIN_MAX_opacityTex)
{
bool l9_80;
#if (SC_USE_CLAMP_TO_BORDER_opacityTex)
{
l9_80=ivec2(SC_SOFTWARE_WRAP_MODE_U_opacityTex,SC_SOFTWARE_WRAP_MODE_V_opacityTex).x==3;
}
#else
{
l9_80=(int(SC_USE_CLAMP_TO_BORDER_opacityTex)!=0);
}
#endif
float l9_81=l9_75;
float l9_82=1.0;
sc_ClampUV(l9_81,opacityTexUvMinMax.x,opacityTexUvMinMax.z,l9_80,l9_82);
float l9_83=l9_81;
float l9_84=l9_82;
bool l9_85;
#if (SC_USE_CLAMP_TO_BORDER_opacityTex)
{
l9_85=ivec2(SC_SOFTWARE_WRAP_MODE_U_opacityTex,SC_SOFTWARE_WRAP_MODE_V_opacityTex).y==3;
}
#else
{
l9_85=(int(SC_USE_CLAMP_TO_BORDER_opacityTex)!=0);
}
#endif
float l9_86=l9_77;
float l9_87=l9_84;
sc_ClampUV(l9_86,opacityTexUvMinMax.y,opacityTexUvMinMax.w,l9_85,l9_87);
l9_79=l9_87;
l9_78=vec2(l9_83,l9_86);
}
#else
{
l9_79=1.0;
l9_78=vec2(l9_75,l9_77);
}
#endif
vec2 l9_88=sc_TransformUV(l9_78,(int(SC_USE_UV_TRANSFORM_opacityTex)!=0),opacityTexTransform);
float l9_89=l9_88.x;
float l9_90=l9_79;
sc_SoftwareWrapLate(l9_89,ivec2(SC_SOFTWARE_WRAP_MODE_U_opacityTex,SC_SOFTWARE_WRAP_MODE_V_opacityTex).x,l9_73,l9_90);
float l9_91=l9_88.y;
float l9_92=l9_90;
sc_SoftwareWrapLate(l9_91,ivec2(SC_SOFTWARE_WRAP_MODE_U_opacityTex,SC_SOFTWARE_WRAP_MODE_V_opacityTex).y,l9_73,l9_92);
float l9_93=l9_92;
vec3 l9_94=sc_SamplingCoordsViewToGlobal(vec2(l9_89,l9_91),opacityTexLayout,opacityTexGetStereoViewIndex());
vec4 l9_95=texture(opacityTexArrSC,l9_94,0.0);
vec4 l9_96;
#if (SC_USE_CLAMP_TO_BORDER_opacityTex)
{
l9_96=mix(opacityTexBorderColor,l9_95,vec4(l9_93));
}
#else
{
l9_96=l9_95;
}
#endif
l9_72=l9_96;
}
#else
{
bool l9_97=(int(SC_USE_CLAMP_TO_BORDER_opacityTex)!=0)&&(!(int(SC_USE_UV_MIN_MAX_opacityTex)!=0));
float l9_98=l9_71.x;
sc_SoftwareWrapEarly(l9_98,ivec2(SC_SOFTWARE_WRAP_MODE_U_opacityTex,SC_SOFTWARE_WRAP_MODE_V_opacityTex).x);
float l9_99=l9_98;
float l9_100=l9_71.y;
sc_SoftwareWrapEarly(l9_100,ivec2(SC_SOFTWARE_WRAP_MODE_U_opacityTex,SC_SOFTWARE_WRAP_MODE_V_opacityTex).y);
float l9_101=l9_100;
vec2 l9_102;
float l9_103;
#if (SC_USE_UV_MIN_MAX_opacityTex)
{
bool l9_104;
#if (SC_USE_CLAMP_TO_BORDER_opacityTex)
{
l9_104=ivec2(SC_SOFTWARE_WRAP_MODE_U_opacityTex,SC_SOFTWARE_WRAP_MODE_V_opacityTex).x==3;
}
#else
{
l9_104=(int(SC_USE_CLAMP_TO_BORDER_opacityTex)!=0);
}
#endif
float l9_105=l9_99;
float l9_106=1.0;
sc_ClampUV(l9_105,opacityTexUvMinMax.x,opacityTexUvMinMax.z,l9_104,l9_106);
float l9_107=l9_105;
float l9_108=l9_106;
bool l9_109;
#if (SC_USE_CLAMP_TO_BORDER_opacityTex)
{
l9_109=ivec2(SC_SOFTWARE_WRAP_MODE_U_opacityTex,SC_SOFTWARE_WRAP_MODE_V_opacityTex).y==3;
}
#else
{
l9_109=(int(SC_USE_CLAMP_TO_BORDER_opacityTex)!=0);
}
#endif
float l9_110=l9_101;
float l9_111=l9_108;
sc_ClampUV(l9_110,opacityTexUvMinMax.y,opacityTexUvMinMax.w,l9_109,l9_111);
l9_103=l9_111;
l9_102=vec2(l9_107,l9_110);
}
#else
{
l9_103=1.0;
l9_102=vec2(l9_99,l9_101);
}
#endif
vec2 l9_112=sc_TransformUV(l9_102,(int(SC_USE_UV_TRANSFORM_opacityTex)!=0),opacityTexTransform);
float l9_113=l9_112.x;
float l9_114=l9_103;
sc_SoftwareWrapLate(l9_113,ivec2(SC_SOFTWARE_WRAP_MODE_U_opacityTex,SC_SOFTWARE_WRAP_MODE_V_opacityTex).x,l9_97,l9_114);
float l9_115=l9_112.y;
float l9_116=l9_114;
sc_SoftwareWrapLate(l9_115,ivec2(SC_SOFTWARE_WRAP_MODE_U_opacityTex,SC_SOFTWARE_WRAP_MODE_V_opacityTex).y,l9_97,l9_116);
float l9_117=l9_116;
vec3 l9_118=sc_SamplingCoordsViewToGlobal(vec2(l9_113,l9_115),opacityTexLayout,opacityTexGetStereoViewIndex());
vec4 l9_119=texture(opacityTex,l9_118.xy,0.0);
vec4 l9_120;
#if (SC_USE_CLAMP_TO_BORDER_opacityTex)
{
l9_120=mix(opacityTexBorderColor,l9_119,vec4(l9_117));
}
#else
{
l9_120=l9_119;
}
#endif
l9_72=l9_120;
}
#endif
l9_70=l9_72.x;
}
#else
{
l9_70=1.0;
}
#endif
float l9_121=l9_70*l9_68.w;
vec4 l9_122;
float l9_123;
if (NODE_38_DROPLIST_ITEM==1)
{
l9_123=l9_121*tempGlobals.VertexColor.w;
l9_122=l9_68*tempGlobals.VertexColor;
}
else
{
l9_123=l9_121;
l9_122=l9_68;
}
vec3 l9_124;
#if (ENABLE_NORMALMAP)
{
vec2 l9_125=N7_getUV(NODE_181_DROPLIST_ITEM);
vec4 l9_126;
#if (normalTexLayout==2)
{
bool l9_127=(int(SC_USE_CLAMP_TO_BORDER_normalTex)!=0)&&(!(int(SC_USE_UV_MIN_MAX_normalTex)!=0));
float l9_128=l9_125.x;
sc_SoftwareWrapEarly(l9_128,ivec2(SC_SOFTWARE_WRAP_MODE_U_normalTex,SC_SOFTWARE_WRAP_MODE_V_normalTex).x);
float l9_129=l9_128;
float l9_130=l9_125.y;
sc_SoftwareWrapEarly(l9_130,ivec2(SC_SOFTWARE_WRAP_MODE_U_normalTex,SC_SOFTWARE_WRAP_MODE_V_normalTex).y);
float l9_131=l9_130;
vec2 l9_132;
float l9_133;
#if (SC_USE_UV_MIN_MAX_normalTex)
{
bool l9_134;
#if (SC_USE_CLAMP_TO_BORDER_normalTex)
{
l9_134=ivec2(SC_SOFTWARE_WRAP_MODE_U_normalTex,SC_SOFTWARE_WRAP_MODE_V_normalTex).x==3;
}
#else
{
l9_134=(int(SC_USE_CLAMP_TO_BORDER_normalTex)!=0);
}
#endif
float l9_135=l9_129;
float l9_136=1.0;
sc_ClampUV(l9_135,normalTexUvMinMax.x,normalTexUvMinMax.z,l9_134,l9_136);
float l9_137=l9_135;
float l9_138=l9_136;
bool l9_139;
#if (SC_USE_CLAMP_TO_BORDER_normalTex)
{
l9_139=ivec2(SC_SOFTWARE_WRAP_MODE_U_normalTex,SC_SOFTWARE_WRAP_MODE_V_normalTex).y==3;
}
#else
{
l9_139=(int(SC_USE_CLAMP_TO_BORDER_normalTex)!=0);
}
#endif
float l9_140=l9_131;
float l9_141=l9_138;
sc_ClampUV(l9_140,normalTexUvMinMax.y,normalTexUvMinMax.w,l9_139,l9_141);
l9_133=l9_141;
l9_132=vec2(l9_137,l9_140);
}
#else
{
l9_133=1.0;
l9_132=vec2(l9_129,l9_131);
}
#endif
vec2 l9_142=sc_TransformUV(l9_132,(int(SC_USE_UV_TRANSFORM_normalTex)!=0),normalTexTransform);
float l9_143=l9_142.x;
float l9_144=l9_133;
sc_SoftwareWrapLate(l9_143,ivec2(SC_SOFTWARE_WRAP_MODE_U_normalTex,SC_SOFTWARE_WRAP_MODE_V_normalTex).x,l9_127,l9_144);
float l9_145=l9_142.y;
float l9_146=l9_144;
sc_SoftwareWrapLate(l9_145,ivec2(SC_SOFTWARE_WRAP_MODE_U_normalTex,SC_SOFTWARE_WRAP_MODE_V_normalTex).y,l9_127,l9_146);
float l9_147=l9_146;
vec3 l9_148=sc_SamplingCoordsViewToGlobal(vec2(l9_143,l9_145),normalTexLayout,normalTexGetStereoViewIndex());
vec4 l9_149=texture(normalTexArrSC,l9_148,0.0);
vec4 l9_150;
#if (SC_USE_CLAMP_TO_BORDER_normalTex)
{
l9_150=mix(normalTexBorderColor,l9_149,vec4(l9_147));
}
#else
{
l9_150=l9_149;
}
#endif
l9_126=l9_150;
}
#else
{
bool l9_151=(int(SC_USE_CLAMP_TO_BORDER_normalTex)!=0)&&(!(int(SC_USE_UV_MIN_MAX_normalTex)!=0));
float l9_152=l9_125.x;
sc_SoftwareWrapEarly(l9_152,ivec2(SC_SOFTWARE_WRAP_MODE_U_normalTex,SC_SOFTWARE_WRAP_MODE_V_normalTex).x);
float l9_153=l9_152;
float l9_154=l9_125.y;
sc_SoftwareWrapEarly(l9_154,ivec2(SC_SOFTWARE_WRAP_MODE_U_normalTex,SC_SOFTWARE_WRAP_MODE_V_normalTex).y);
float l9_155=l9_154;
vec2 l9_156;
float l9_157;
#if (SC_USE_UV_MIN_MAX_normalTex)
{
bool l9_158;
#if (SC_USE_CLAMP_TO_BORDER_normalTex)
{
l9_158=ivec2(SC_SOFTWARE_WRAP_MODE_U_normalTex,SC_SOFTWARE_WRAP_MODE_V_normalTex).x==3;
}
#else
{
l9_158=(int(SC_USE_CLAMP_TO_BORDER_normalTex)!=0);
}
#endif
float l9_159=l9_153;
float l9_160=1.0;
sc_ClampUV(l9_159,normalTexUvMinMax.x,normalTexUvMinMax.z,l9_158,l9_160);
float l9_161=l9_159;
float l9_162=l9_160;
bool l9_163;
#if (SC_USE_CLAMP_TO_BORDER_normalTex)
{
l9_163=ivec2(SC_SOFTWARE_WRAP_MODE_U_normalTex,SC_SOFTWARE_WRAP_MODE_V_normalTex).y==3;
}
#else
{
l9_163=(int(SC_USE_CLAMP_TO_BORDER_normalTex)!=0);
}
#endif
float l9_164=l9_155;
float l9_165=l9_162;
sc_ClampUV(l9_164,normalTexUvMinMax.y,normalTexUvMinMax.w,l9_163,l9_165);
l9_157=l9_165;
l9_156=vec2(l9_161,l9_164);
}
#else
{
l9_157=1.0;
l9_156=vec2(l9_153,l9_155);
}
#endif
vec2 l9_166=sc_TransformUV(l9_156,(int(SC_USE_UV_TRANSFORM_normalTex)!=0),normalTexTransform);
float l9_167=l9_166.x;
float l9_168=l9_157;
sc_SoftwareWrapLate(l9_167,ivec2(SC_SOFTWARE_WRAP_MODE_U_normalTex,SC_SOFTWARE_WRAP_MODE_V_normalTex).x,l9_151,l9_168);
float l9_169=l9_166.y;
float l9_170=l9_168;
sc_SoftwareWrapLate(l9_169,ivec2(SC_SOFTWARE_WRAP_MODE_U_normalTex,SC_SOFTWARE_WRAP_MODE_V_normalTex).y,l9_151,l9_170);
float l9_171=l9_170;
vec3 l9_172=sc_SamplingCoordsViewToGlobal(vec2(l9_167,l9_169),normalTexLayout,normalTexGetStereoViewIndex());
vec4 l9_173=texture(normalTex,l9_172.xy,0.0);
vec4 l9_174;
#if (SC_USE_CLAMP_TO_BORDER_normalTex)
{
l9_174=mix(normalTexBorderColor,l9_173,vec4(l9_171));
}
#else
{
l9_174=l9_173;
}
#endif
l9_126=l9_174;
}
#endif
vec3 l9_175;
#if (ENABLE_DETAIL_NORMAL)
{
vec2 l9_176=N7_getUV(NODE_184_DROPLIST_ITEM);
vec4 l9_177;
#if (detailNormalTexLayout==2)
{
bool l9_178=(int(SC_USE_CLAMP_TO_BORDER_detailNormalTex)!=0)&&(!(int(SC_USE_UV_MIN_MAX_detailNormalTex)!=0));
float l9_179=l9_176.x;
sc_SoftwareWrapEarly(l9_179,ivec2(SC_SOFTWARE_WRAP_MODE_U_detailNormalTex,SC_SOFTWARE_WRAP_MODE_V_detailNormalTex).x);
float l9_180=l9_179;
float l9_181=l9_176.y;
sc_SoftwareWrapEarly(l9_181,ivec2(SC_SOFTWARE_WRAP_MODE_U_detailNormalTex,SC_SOFTWARE_WRAP_MODE_V_detailNormalTex).y);
float l9_182=l9_181;
vec2 l9_183;
float l9_184;
#if (SC_USE_UV_MIN_MAX_detailNormalTex)
{
bool l9_185;
#if (SC_USE_CLAMP_TO_BORDER_detailNormalTex)
{
l9_185=ivec2(SC_SOFTWARE_WRAP_MODE_U_detailNormalTex,SC_SOFTWARE_WRAP_MODE_V_detailNormalTex).x==3;
}
#else
{
l9_185=(int(SC_USE_CLAMP_TO_BORDER_detailNormalTex)!=0);
}
#endif
float l9_186=l9_180;
float l9_187=1.0;
sc_ClampUV(l9_186,detailNormalTexUvMinMax.x,detailNormalTexUvMinMax.z,l9_185,l9_187);
float l9_188=l9_186;
float l9_189=l9_187;
bool l9_190;
#if (SC_USE_CLAMP_TO_BORDER_detailNormalTex)
{
l9_190=ivec2(SC_SOFTWARE_WRAP_MODE_U_detailNormalTex,SC_SOFTWARE_WRAP_MODE_V_detailNormalTex).y==3;
}
#else
{
l9_190=(int(SC_USE_CLAMP_TO_BORDER_detailNormalTex)!=0);
}
#endif
float l9_191=l9_182;
float l9_192=l9_189;
sc_ClampUV(l9_191,detailNormalTexUvMinMax.y,detailNormalTexUvMinMax.w,l9_190,l9_192);
l9_184=l9_192;
l9_183=vec2(l9_188,l9_191);
}
#else
{
l9_184=1.0;
l9_183=vec2(l9_180,l9_182);
}
#endif
vec2 l9_193=sc_TransformUV(l9_183,(int(SC_USE_UV_TRANSFORM_detailNormalTex)!=0),detailNormalTexTransform);
float l9_194=l9_193.x;
float l9_195=l9_184;
sc_SoftwareWrapLate(l9_194,ivec2(SC_SOFTWARE_WRAP_MODE_U_detailNormalTex,SC_SOFTWARE_WRAP_MODE_V_detailNormalTex).x,l9_178,l9_195);
float l9_196=l9_193.y;
float l9_197=l9_195;
sc_SoftwareWrapLate(l9_196,ivec2(SC_SOFTWARE_WRAP_MODE_U_detailNormalTex,SC_SOFTWARE_WRAP_MODE_V_detailNormalTex).y,l9_178,l9_197);
float l9_198=l9_197;
vec3 l9_199=sc_SamplingCoordsViewToGlobal(vec2(l9_194,l9_196),detailNormalTexLayout,detailNormalTexGetStereoViewIndex());
vec4 l9_200=texture(detailNormalTexArrSC,l9_199,0.0);
vec4 l9_201;
#if (SC_USE_CLAMP_TO_BORDER_detailNormalTex)
{
l9_201=mix(detailNormalTexBorderColor,l9_200,vec4(l9_198));
}
#else
{
l9_201=l9_200;
}
#endif
l9_177=l9_201;
}
#else
{
bool l9_202=(int(SC_USE_CLAMP_TO_BORDER_detailNormalTex)!=0)&&(!(int(SC_USE_UV_MIN_MAX_detailNormalTex)!=0));
float l9_203=l9_176.x;
sc_SoftwareWrapEarly(l9_203,ivec2(SC_SOFTWARE_WRAP_MODE_U_detailNormalTex,SC_SOFTWARE_WRAP_MODE_V_detailNormalTex).x);
float l9_204=l9_203;
float l9_205=l9_176.y;
sc_SoftwareWrapEarly(l9_205,ivec2(SC_SOFTWARE_WRAP_MODE_U_detailNormalTex,SC_SOFTWARE_WRAP_MODE_V_detailNormalTex).y);
float l9_206=l9_205;
vec2 l9_207;
float l9_208;
#if (SC_USE_UV_MIN_MAX_detailNormalTex)
{
bool l9_209;
#if (SC_USE_CLAMP_TO_BORDER_detailNormalTex)
{
l9_209=ivec2(SC_SOFTWARE_WRAP_MODE_U_detailNormalTex,SC_SOFTWARE_WRAP_MODE_V_detailNormalTex).x==3;
}
#else
{
l9_209=(int(SC_USE_CLAMP_TO_BORDER_detailNormalTex)!=0);
}
#endif
float l9_210=l9_204;
float l9_211=1.0;
sc_ClampUV(l9_210,detailNormalTexUvMinMax.x,detailNormalTexUvMinMax.z,l9_209,l9_211);
float l9_212=l9_210;
float l9_213=l9_211;
bool l9_214;
#if (SC_USE_CLAMP_TO_BORDER_detailNormalTex)
{
l9_214=ivec2(SC_SOFTWARE_WRAP_MODE_U_detailNormalTex,SC_SOFTWARE_WRAP_MODE_V_detailNormalTex).y==3;
}
#else
{
l9_214=(int(SC_USE_CLAMP_TO_BORDER_detailNormalTex)!=0);
}
#endif
float l9_215=l9_206;
float l9_216=l9_213;
sc_ClampUV(l9_215,detailNormalTexUvMinMax.y,detailNormalTexUvMinMax.w,l9_214,l9_216);
l9_208=l9_216;
l9_207=vec2(l9_212,l9_215);
}
#else
{
l9_208=1.0;
l9_207=vec2(l9_204,l9_206);
}
#endif
vec2 l9_217=sc_TransformUV(l9_207,(int(SC_USE_UV_TRANSFORM_detailNormalTex)!=0),detailNormalTexTransform);
float l9_218=l9_217.x;
float l9_219=l9_208;
sc_SoftwareWrapLate(l9_218,ivec2(SC_SOFTWARE_WRAP_MODE_U_detailNormalTex,SC_SOFTWARE_WRAP_MODE_V_detailNormalTex).x,l9_202,l9_219);
float l9_220=l9_217.y;
float l9_221=l9_219;
sc_SoftwareWrapLate(l9_220,ivec2(SC_SOFTWARE_WRAP_MODE_U_detailNormalTex,SC_SOFTWARE_WRAP_MODE_V_detailNormalTex).y,l9_202,l9_221);
float l9_222=l9_221;
vec3 l9_223=sc_SamplingCoordsViewToGlobal(vec2(l9_218,l9_220),detailNormalTexLayout,detailNormalTexGetStereoViewIndex());
vec4 l9_224=texture(detailNormalTex,l9_223.xy,0.0);
vec4 l9_225;
#if (SC_USE_CLAMP_TO_BORDER_detailNormalTex)
{
l9_225=mix(detailNormalTexBorderColor,l9_224,vec4(l9_222));
}
#else
{
l9_225=l9_224;
}
#endif
l9_177=l9_225;
}
#endif
l9_175=(l9_177.xyz*1.9921875)-vec3(1.0);
}
#else
{
l9_175=vec3(0.0,0.0,1.0);
}
#endif
vec3 l9_226=((l9_126.xyz*1.9921875)-vec3(1.0))+vec3(0.0,0.0,1.0);
vec3 l9_227=l9_175*vec3(-1.0,-1.0,1.0);
l9_124=normalize(mat3(tempGlobals.VertexTangent_WorldSpace,tempGlobals.VertexBinormal_WorldSpace,tempGlobals.VertexNormal_WorldSpace)*normalize((l9_226*dot(l9_226,l9_227))-(l9_227*l9_226.z)));
}
#else
{
l9_124=normalize(tempGlobals.VertexNormal_WorldSpace);
}
#endif
vec3 l9_228;
#if (ENABLE_EMISSIVE)
{
vec2 l9_229=N7_getUV(NODE_76_DROPLIST_ITEM);
vec4 l9_230;
#if (emissiveTexLayout==2)
{
bool l9_231=(int(SC_USE_CLAMP_TO_BORDER_emissiveTex)!=0)&&(!(int(SC_USE_UV_MIN_MAX_emissiveTex)!=0));
float l9_232=l9_229.x;
sc_SoftwareWrapEarly(l9_232,ivec2(SC_SOFTWARE_WRAP_MODE_U_emissiveTex,SC_SOFTWARE_WRAP_MODE_V_emissiveTex).x);
float l9_233=l9_232;
float l9_234=l9_229.y;
sc_SoftwareWrapEarly(l9_234,ivec2(SC_SOFTWARE_WRAP_MODE_U_emissiveTex,SC_SOFTWARE_WRAP_MODE_V_emissiveTex).y);
float l9_235=l9_234;
vec2 l9_236;
float l9_237;
#if (SC_USE_UV_MIN_MAX_emissiveTex)
{
bool l9_238;
#if (SC_USE_CLAMP_TO_BORDER_emissiveTex)
{
l9_238=ivec2(SC_SOFTWARE_WRAP_MODE_U_emissiveTex,SC_SOFTWARE_WRAP_MODE_V_emissiveTex).x==3;
}
#else
{
l9_238=(int(SC_USE_CLAMP_TO_BORDER_emissiveTex)!=0);
}
#endif
float l9_239=l9_233;
float l9_240=1.0;
sc_ClampUV(l9_239,emissiveTexUvMinMax.x,emissiveTexUvMinMax.z,l9_238,l9_240);
float l9_241=l9_239;
float l9_242=l9_240;
bool l9_243;
#if (SC_USE_CLAMP_TO_BORDER_emissiveTex)
{
l9_243=ivec2(SC_SOFTWARE_WRAP_MODE_U_emissiveTex,SC_SOFTWARE_WRAP_MODE_V_emissiveTex).y==3;
}
#else
{
l9_243=(int(SC_USE_CLAMP_TO_BORDER_emissiveTex)!=0);
}
#endif
float l9_244=l9_235;
float l9_245=l9_242;
sc_ClampUV(l9_244,emissiveTexUvMinMax.y,emissiveTexUvMinMax.w,l9_243,l9_245);
l9_237=l9_245;
l9_236=vec2(l9_241,l9_244);
}
#else
{
l9_237=1.0;
l9_236=vec2(l9_233,l9_235);
}
#endif
vec2 l9_246=sc_TransformUV(l9_236,(int(SC_USE_UV_TRANSFORM_emissiveTex)!=0),emissiveTexTransform);
float l9_247=l9_246.x;
float l9_248=l9_237;
sc_SoftwareWrapLate(l9_247,ivec2(SC_SOFTWARE_WRAP_MODE_U_emissiveTex,SC_SOFTWARE_WRAP_MODE_V_emissiveTex).x,l9_231,l9_248);
float l9_249=l9_246.y;
float l9_250=l9_248;
sc_SoftwareWrapLate(l9_249,ivec2(SC_SOFTWARE_WRAP_MODE_U_emissiveTex,SC_SOFTWARE_WRAP_MODE_V_emissiveTex).y,l9_231,l9_250);
float l9_251=l9_250;
vec3 l9_252=sc_SamplingCoordsViewToGlobal(vec2(l9_247,l9_249),emissiveTexLayout,emissiveTexGetStereoViewIndex());
vec4 l9_253=texture(emissiveTexArrSC,l9_252,0.0);
vec4 l9_254;
#if (SC_USE_CLAMP_TO_BORDER_emissiveTex)
{
l9_254=mix(emissiveTexBorderColor,l9_253,vec4(l9_251));
}
#else
{
l9_254=l9_253;
}
#endif
l9_230=l9_254;
}
#else
{
bool l9_255=(int(SC_USE_CLAMP_TO_BORDER_emissiveTex)!=0)&&(!(int(SC_USE_UV_MIN_MAX_emissiveTex)!=0));
float l9_256=l9_229.x;
sc_SoftwareWrapEarly(l9_256,ivec2(SC_SOFTWARE_WRAP_MODE_U_emissiveTex,SC_SOFTWARE_WRAP_MODE_V_emissiveTex).x);
float l9_257=l9_256;
float l9_258=l9_229.y;
sc_SoftwareWrapEarly(l9_258,ivec2(SC_SOFTWARE_WRAP_MODE_U_emissiveTex,SC_SOFTWARE_WRAP_MODE_V_emissiveTex).y);
float l9_259=l9_258;
vec2 l9_260;
float l9_261;
#if (SC_USE_UV_MIN_MAX_emissiveTex)
{
bool l9_262;
#if (SC_USE_CLAMP_TO_BORDER_emissiveTex)
{
l9_262=ivec2(SC_SOFTWARE_WRAP_MODE_U_emissiveTex,SC_SOFTWARE_WRAP_MODE_V_emissiveTex).x==3;
}
#else
{
l9_262=(int(SC_USE_CLAMP_TO_BORDER_emissiveTex)!=0);
}
#endif
float l9_263=l9_257;
float l9_264=1.0;
sc_ClampUV(l9_263,emissiveTexUvMinMax.x,emissiveTexUvMinMax.z,l9_262,l9_264);
float l9_265=l9_263;
float l9_266=l9_264;
bool l9_267;
#if (SC_USE_CLAMP_TO_BORDER_emissiveTex)
{
l9_267=ivec2(SC_SOFTWARE_WRAP_MODE_U_emissiveTex,SC_SOFTWARE_WRAP_MODE_V_emissiveTex).y==3;
}
#else
{
l9_267=(int(SC_USE_CLAMP_TO_BORDER_emissiveTex)!=0);
}
#endif
float l9_268=l9_259;
float l9_269=l9_266;
sc_ClampUV(l9_268,emissiveTexUvMinMax.y,emissiveTexUvMinMax.w,l9_267,l9_269);
l9_261=l9_269;
l9_260=vec2(l9_265,l9_268);
}
#else
{
l9_261=1.0;
l9_260=vec2(l9_257,l9_259);
}
#endif
vec2 l9_270=sc_TransformUV(l9_260,(int(SC_USE_UV_TRANSFORM_emissiveTex)!=0),emissiveTexTransform);
float l9_271=l9_270.x;
float l9_272=l9_261;
sc_SoftwareWrapLate(l9_271,ivec2(SC_SOFTWARE_WRAP_MODE_U_emissiveTex,SC_SOFTWARE_WRAP_MODE_V_emissiveTex).x,l9_255,l9_272);
float l9_273=l9_270.y;
float l9_274=l9_272;
sc_SoftwareWrapLate(l9_273,ivec2(SC_SOFTWARE_WRAP_MODE_U_emissiveTex,SC_SOFTWARE_WRAP_MODE_V_emissiveTex).y,l9_255,l9_274);
float l9_275=l9_274;
vec3 l9_276=sc_SamplingCoordsViewToGlobal(vec2(l9_271,l9_273),emissiveTexLayout,emissiveTexGetStereoViewIndex());
vec4 l9_277=texture(emissiveTex,l9_276.xy,0.0);
vec4 l9_278;
#if (SC_USE_CLAMP_TO_BORDER_emissiveTex)
{
l9_278=mix(emissiveTexBorderColor,l9_277,vec4(l9_275));
}
#else
{
l9_278=l9_277;
}
#endif
l9_230=l9_278;
}
#endif
l9_228=l9_230.xyz;
}
#else
{
l9_228=vec3(0.0);
}
#endif
bool l9_279=NODE_38_DROPLIST_ITEM==2;
vec3 l9_280;
if (l9_279)
{
l9_280=l9_228+tempGlobals.VertexColor.xyz;
}
else
{
l9_280=l9_228;
}
vec3 l9_281;
if (l9_279||(int(ENABLE_EMISSIVE)!=0))
{
l9_281=ssPow((l9_280*emissiveColor)*vec3(emissiveIntensity),vec3(2.2));
}
else
{
l9_281=l9_280;
}
vec3 l9_282;
#if (ENABLE_SIMPLE_REFLECTION)
{
vec3 l9_283=tempGlobals.ViewDirWS;
vec3 l9_284=reflect(l9_283,l9_124);
float l9_285=l9_284.x;
float l9_286=l9_284.y;
float l9_287=(-l9_284.z)+1.0;
float l9_288=((l9_285*l9_285)+(l9_286*l9_286))+(l9_287*l9_287);
float l9_289;
if (l9_288<=0.0)
{
l9_289=0.0;
}
else
{
l9_289=sqrt(l9_288);
}
float l9_290=2.0*l9_289;
vec2 l9_291=vec2(1.0)-((l9_284.xy/vec2(l9_290))+vec2(0.5));
vec4 l9_292;
#if (reflectionTexLayout==2)
{
bool l9_293=(int(SC_USE_CLAMP_TO_BORDER_reflectionTex)!=0)&&(!(int(SC_USE_UV_MIN_MAX_reflectionTex)!=0));
float l9_294=l9_291.x;
sc_SoftwareWrapEarly(l9_294,ivec2(SC_SOFTWARE_WRAP_MODE_U_reflectionTex,SC_SOFTWARE_WRAP_MODE_V_reflectionTex).x);
float l9_295=l9_294;
float l9_296=l9_291.y;
sc_SoftwareWrapEarly(l9_296,ivec2(SC_SOFTWARE_WRAP_MODE_U_reflectionTex,SC_SOFTWARE_WRAP_MODE_V_reflectionTex).y);
float l9_297=l9_296;
vec2 l9_298;
float l9_299;
#if (SC_USE_UV_MIN_MAX_reflectionTex)
{
bool l9_300;
#if (SC_USE_CLAMP_TO_BORDER_reflectionTex)
{
l9_300=ivec2(SC_SOFTWARE_WRAP_MODE_U_reflectionTex,SC_SOFTWARE_WRAP_MODE_V_reflectionTex).x==3;
}
#else
{
l9_300=(int(SC_USE_CLAMP_TO_BORDER_reflectionTex)!=0);
}
#endif
float l9_301=l9_295;
float l9_302=1.0;
sc_ClampUV(l9_301,reflectionTexUvMinMax.x,reflectionTexUvMinMax.z,l9_300,l9_302);
float l9_303=l9_301;
float l9_304=l9_302;
bool l9_305;
#if (SC_USE_CLAMP_TO_BORDER_reflectionTex)
{
l9_305=ivec2(SC_SOFTWARE_WRAP_MODE_U_reflectionTex,SC_SOFTWARE_WRAP_MODE_V_reflectionTex).y==3;
}
#else
{
l9_305=(int(SC_USE_CLAMP_TO_BORDER_reflectionTex)!=0);
}
#endif
float l9_306=l9_297;
float l9_307=l9_304;
sc_ClampUV(l9_306,reflectionTexUvMinMax.y,reflectionTexUvMinMax.w,l9_305,l9_307);
l9_299=l9_307;
l9_298=vec2(l9_303,l9_306);
}
#else
{
l9_299=1.0;
l9_298=vec2(l9_295,l9_297);
}
#endif
vec2 l9_308=sc_TransformUV(l9_298,(int(SC_USE_UV_TRANSFORM_reflectionTex)!=0),reflectionTexTransform);
float l9_309=l9_308.x;
float l9_310=l9_299;
sc_SoftwareWrapLate(l9_309,ivec2(SC_SOFTWARE_WRAP_MODE_U_reflectionTex,SC_SOFTWARE_WRAP_MODE_V_reflectionTex).x,l9_293,l9_310);
float l9_311=l9_308.y;
float l9_312=l9_310;
sc_SoftwareWrapLate(l9_311,ivec2(SC_SOFTWARE_WRAP_MODE_U_reflectionTex,SC_SOFTWARE_WRAP_MODE_V_reflectionTex).y,l9_293,l9_312);
float l9_313=l9_312;
vec3 l9_314=sc_SamplingCoordsViewToGlobal(vec2(l9_309,l9_311),reflectionTexLayout,reflectionTexGetStereoViewIndex());
vec4 l9_315=texture(reflectionTexArrSC,l9_314,0.0);
vec4 l9_316;
#if (SC_USE_CLAMP_TO_BORDER_reflectionTex)
{
l9_316=mix(reflectionTexBorderColor,l9_315,vec4(l9_313));
}
#else
{
l9_316=l9_315;
}
#endif
l9_292=l9_316;
}
#else
{
bool l9_317=(int(SC_USE_CLAMP_TO_BORDER_reflectionTex)!=0)&&(!(int(SC_USE_UV_MIN_MAX_reflectionTex)!=0));
float l9_318=l9_291.x;
sc_SoftwareWrapEarly(l9_318,ivec2(SC_SOFTWARE_WRAP_MODE_U_reflectionTex,SC_SOFTWARE_WRAP_MODE_V_reflectionTex).x);
float l9_319=l9_318;
float l9_320=l9_291.y;
sc_SoftwareWrapEarly(l9_320,ivec2(SC_SOFTWARE_WRAP_MODE_U_reflectionTex,SC_SOFTWARE_WRAP_MODE_V_reflectionTex).y);
float l9_321=l9_320;
vec2 l9_322;
float l9_323;
#if (SC_USE_UV_MIN_MAX_reflectionTex)
{
bool l9_324;
#if (SC_USE_CLAMP_TO_BORDER_reflectionTex)
{
l9_324=ivec2(SC_SOFTWARE_WRAP_MODE_U_reflectionTex,SC_SOFTWARE_WRAP_MODE_V_reflectionTex).x==3;
}
#else
{
l9_324=(int(SC_USE_CLAMP_TO_BORDER_reflectionTex)!=0);
}
#endif
float l9_325=l9_319;
float l9_326=1.0;
sc_ClampUV(l9_325,reflectionTexUvMinMax.x,reflectionTexUvMinMax.z,l9_324,l9_326);
float l9_327=l9_325;
float l9_328=l9_326;
bool l9_329;
#if (SC_USE_CLAMP_TO_BORDER_reflectionTex)
{
l9_329=ivec2(SC_SOFTWARE_WRAP_MODE_U_reflectionTex,SC_SOFTWARE_WRAP_MODE_V_reflectionTex).y==3;
}
#else
{
l9_329=(int(SC_USE_CLAMP_TO_BORDER_reflectionTex)!=0);
}
#endif
float l9_330=l9_321;
float l9_331=l9_328;
sc_ClampUV(l9_330,reflectionTexUvMinMax.y,reflectionTexUvMinMax.w,l9_329,l9_331);
l9_323=l9_331;
l9_322=vec2(l9_327,l9_330);
}
#else
{
l9_323=1.0;
l9_322=vec2(l9_319,l9_321);
}
#endif
vec2 l9_332=sc_TransformUV(l9_322,(int(SC_USE_UV_TRANSFORM_reflectionTex)!=0),reflectionTexTransform);
float l9_333=l9_332.x;
float l9_334=l9_323;
sc_SoftwareWrapLate(l9_333,ivec2(SC_SOFTWARE_WRAP_MODE_U_reflectionTex,SC_SOFTWARE_WRAP_MODE_V_reflectionTex).x,l9_317,l9_334);
float l9_335=l9_332.y;
float l9_336=l9_334;
sc_SoftwareWrapLate(l9_335,ivec2(SC_SOFTWARE_WRAP_MODE_U_reflectionTex,SC_SOFTWARE_WRAP_MODE_V_reflectionTex).y,l9_317,l9_336);
float l9_337=l9_336;
vec3 l9_338=sc_SamplingCoordsViewToGlobal(vec2(l9_333,l9_335),reflectionTexLayout,reflectionTexGetStereoViewIndex());
vec4 l9_339=texture(reflectionTex,l9_338.xy,0.0);
vec4 l9_340;
#if (SC_USE_CLAMP_TO_BORDER_reflectionTex)
{
l9_340=mix(reflectionTexBorderColor,l9_339,vec4(l9_337));
}
#else
{
l9_340=l9_339;
}
#endif
l9_292=l9_340;
}
#endif
vec3 l9_341;
#if (Tweak_N177)
{
vec2 l9_342=N7_getUV(NODE_228_DROPLIST_ITEM);
vec4 l9_343;
#if (reflectionModulationTexLayout==2)
{
bool l9_344=(int(SC_USE_CLAMP_TO_BORDER_reflectionModulationTex)!=0)&&(!(int(SC_USE_UV_MIN_MAX_reflectionModulationTex)!=0));
float l9_345=l9_342.x;
sc_SoftwareWrapEarly(l9_345,ivec2(SC_SOFTWARE_WRAP_MODE_U_reflectionModulationTex,SC_SOFTWARE_WRAP_MODE_V_reflectionModulationTex).x);
float l9_346=l9_345;
float l9_347=l9_342.y;
sc_SoftwareWrapEarly(l9_347,ivec2(SC_SOFTWARE_WRAP_MODE_U_reflectionModulationTex,SC_SOFTWARE_WRAP_MODE_V_reflectionModulationTex).y);
float l9_348=l9_347;
vec2 l9_349;
float l9_350;
#if (SC_USE_UV_MIN_MAX_reflectionModulationTex)
{
bool l9_351;
#if (SC_USE_CLAMP_TO_BORDER_reflectionModulationTex)
{
l9_351=ivec2(SC_SOFTWARE_WRAP_MODE_U_reflectionModulationTex,SC_SOFTWARE_WRAP_MODE_V_reflectionModulationTex).x==3;
}
#else
{
l9_351=(int(SC_USE_CLAMP_TO_BORDER_reflectionModulationTex)!=0);
}
#endif
float l9_352=l9_346;
float l9_353=1.0;
sc_ClampUV(l9_352,reflectionModulationTexUvMinMax.x,reflectionModulationTexUvMinMax.z,l9_351,l9_353);
float l9_354=l9_352;
float l9_355=l9_353;
bool l9_356;
#if (SC_USE_CLAMP_TO_BORDER_reflectionModulationTex)
{
l9_356=ivec2(SC_SOFTWARE_WRAP_MODE_U_reflectionModulationTex,SC_SOFTWARE_WRAP_MODE_V_reflectionModulationTex).y==3;
}
#else
{
l9_356=(int(SC_USE_CLAMP_TO_BORDER_reflectionModulationTex)!=0);
}
#endif
float l9_357=l9_348;
float l9_358=l9_355;
sc_ClampUV(l9_357,reflectionModulationTexUvMinMax.y,reflectionModulationTexUvMinMax.w,l9_356,l9_358);
l9_350=l9_358;
l9_349=vec2(l9_354,l9_357);
}
#else
{
l9_350=1.0;
l9_349=vec2(l9_346,l9_348);
}
#endif
vec2 l9_359=sc_TransformUV(l9_349,(int(SC_USE_UV_TRANSFORM_reflectionModulationTex)!=0),reflectionModulationTexTransform);
float l9_360=l9_359.x;
float l9_361=l9_350;
sc_SoftwareWrapLate(l9_360,ivec2(SC_SOFTWARE_WRAP_MODE_U_reflectionModulationTex,SC_SOFTWARE_WRAP_MODE_V_reflectionModulationTex).x,l9_344,l9_361);
float l9_362=l9_359.y;
float l9_363=l9_361;
sc_SoftwareWrapLate(l9_362,ivec2(SC_SOFTWARE_WRAP_MODE_U_reflectionModulationTex,SC_SOFTWARE_WRAP_MODE_V_reflectionModulationTex).y,l9_344,l9_363);
float l9_364=l9_363;
vec3 l9_365=sc_SamplingCoordsViewToGlobal(vec2(l9_360,l9_362),reflectionModulationTexLayout,reflectionModulationTexGetStereoViewIndex());
vec4 l9_366=texture(reflectionModulationTexArrSC,l9_365,0.0);
vec4 l9_367;
#if (SC_USE_CLAMP_TO_BORDER_reflectionModulationTex)
{
l9_367=mix(reflectionModulationTexBorderColor,l9_366,vec4(l9_364));
}
#else
{
l9_367=l9_366;
}
#endif
l9_343=l9_367;
}
#else
{
bool l9_368=(int(SC_USE_CLAMP_TO_BORDER_reflectionModulationTex)!=0)&&(!(int(SC_USE_UV_MIN_MAX_reflectionModulationTex)!=0));
float l9_369=l9_342.x;
sc_SoftwareWrapEarly(l9_369,ivec2(SC_SOFTWARE_WRAP_MODE_U_reflectionModulationTex,SC_SOFTWARE_WRAP_MODE_V_reflectionModulationTex).x);
float l9_370=l9_369;
float l9_371=l9_342.y;
sc_SoftwareWrapEarly(l9_371,ivec2(SC_SOFTWARE_WRAP_MODE_U_reflectionModulationTex,SC_SOFTWARE_WRAP_MODE_V_reflectionModulationTex).y);
float l9_372=l9_371;
vec2 l9_373;
float l9_374;
#if (SC_USE_UV_MIN_MAX_reflectionModulationTex)
{
bool l9_375;
#if (SC_USE_CLAMP_TO_BORDER_reflectionModulationTex)
{
l9_375=ivec2(SC_SOFTWARE_WRAP_MODE_U_reflectionModulationTex,SC_SOFTWARE_WRAP_MODE_V_reflectionModulationTex).x==3;
}
#else
{
l9_375=(int(SC_USE_CLAMP_TO_BORDER_reflectionModulationTex)!=0);
}
#endif
float l9_376=l9_370;
float l9_377=1.0;
sc_ClampUV(l9_376,reflectionModulationTexUvMinMax.x,reflectionModulationTexUvMinMax.z,l9_375,l9_377);
float l9_378=l9_376;
float l9_379=l9_377;
bool l9_380;
#if (SC_USE_CLAMP_TO_BORDER_reflectionModulationTex)
{
l9_380=ivec2(SC_SOFTWARE_WRAP_MODE_U_reflectionModulationTex,SC_SOFTWARE_WRAP_MODE_V_reflectionModulationTex).y==3;
}
#else
{
l9_380=(int(SC_USE_CLAMP_TO_BORDER_reflectionModulationTex)!=0);
}
#endif
float l9_381=l9_372;
float l9_382=l9_379;
sc_ClampUV(l9_381,reflectionModulationTexUvMinMax.y,reflectionModulationTexUvMinMax.w,l9_380,l9_382);
l9_374=l9_382;
l9_373=vec2(l9_378,l9_381);
}
#else
{
l9_374=1.0;
l9_373=vec2(l9_370,l9_372);
}
#endif
vec2 l9_383=sc_TransformUV(l9_373,(int(SC_USE_UV_TRANSFORM_reflectionModulationTex)!=0),reflectionModulationTexTransform);
float l9_384=l9_383.x;
float l9_385=l9_374;
sc_SoftwareWrapLate(l9_384,ivec2(SC_SOFTWARE_WRAP_MODE_U_reflectionModulationTex,SC_SOFTWARE_WRAP_MODE_V_reflectionModulationTex).x,l9_368,l9_385);
float l9_386=l9_383.y;
float l9_387=l9_385;
sc_SoftwareWrapLate(l9_386,ivec2(SC_SOFTWARE_WRAP_MODE_U_reflectionModulationTex,SC_SOFTWARE_WRAP_MODE_V_reflectionModulationTex).y,l9_368,l9_387);
float l9_388=l9_387;
vec3 l9_389=sc_SamplingCoordsViewToGlobal(vec2(l9_384,l9_386),reflectionModulationTexLayout,reflectionModulationTexGetStereoViewIndex());
vec4 l9_390=texture(reflectionModulationTex,l9_389.xy,0.0);
vec4 l9_391;
#if (SC_USE_CLAMP_TO_BORDER_reflectionModulationTex)
{
l9_391=mix(reflectionModulationTexBorderColor,l9_390,vec4(l9_388));
}
#else
{
l9_391=l9_390;
}
#endif
l9_343=l9_391;
}
#endif
l9_341=l9_292.xyz*l9_343.xyz;
}
#else
{
l9_341=l9_292.xyz;
}
#endif
l9_282=ssSRGB_to_Linear(l9_341)*reflectionIntensity;
}
#else
{
l9_282=vec3(0.0);
}
#endif
vec3 l9_392;
#if (ENABLE_RIM_HIGHLIGHT)
{
vec3 l9_393=rimColor*rimIntensity;
vec3 l9_394;
#if (Tweak_N216)
{
vec2 l9_395=N7_getUV(NODE_315_DROPLIST_ITEM);
vec4 l9_396;
#if (rimColorTexLayout==2)
{
bool l9_397=(int(SC_USE_CLAMP_TO_BORDER_rimColorTex)!=0)&&(!(int(SC_USE_UV_MIN_MAX_rimColorTex)!=0));
float l9_398=l9_395.x;
sc_SoftwareWrapEarly(l9_398,ivec2(SC_SOFTWARE_WRAP_MODE_U_rimColorTex,SC_SOFTWARE_WRAP_MODE_V_rimColorTex).x);
float l9_399=l9_398;
float l9_400=l9_395.y;
sc_SoftwareWrapEarly(l9_400,ivec2(SC_SOFTWARE_WRAP_MODE_U_rimColorTex,SC_SOFTWARE_WRAP_MODE_V_rimColorTex).y);
float l9_401=l9_400;
vec2 l9_402;
float l9_403;
#if (SC_USE_UV_MIN_MAX_rimColorTex)
{
bool l9_404;
#if (SC_USE_CLAMP_TO_BORDER_rimColorTex)
{
l9_404=ivec2(SC_SOFTWARE_WRAP_MODE_U_rimColorTex,SC_SOFTWARE_WRAP_MODE_V_rimColorTex).x==3;
}
#else
{
l9_404=(int(SC_USE_CLAMP_TO_BORDER_rimColorTex)!=0);
}
#endif
float l9_405=l9_399;
float l9_406=1.0;
sc_ClampUV(l9_405,rimColorTexUvMinMax.x,rimColorTexUvMinMax.z,l9_404,l9_406);
float l9_407=l9_405;
float l9_408=l9_406;
bool l9_409;
#if (SC_USE_CLAMP_TO_BORDER_rimColorTex)
{
l9_409=ivec2(SC_SOFTWARE_WRAP_MODE_U_rimColorTex,SC_SOFTWARE_WRAP_MODE_V_rimColorTex).y==3;
}
#else
{
l9_409=(int(SC_USE_CLAMP_TO_BORDER_rimColorTex)!=0);
}
#endif
float l9_410=l9_401;
float l9_411=l9_408;
sc_ClampUV(l9_410,rimColorTexUvMinMax.y,rimColorTexUvMinMax.w,l9_409,l9_411);
l9_403=l9_411;
l9_402=vec2(l9_407,l9_410);
}
#else
{
l9_403=1.0;
l9_402=vec2(l9_399,l9_401);
}
#endif
vec2 l9_412=sc_TransformUV(l9_402,(int(SC_USE_UV_TRANSFORM_rimColorTex)!=0),rimColorTexTransform);
float l9_413=l9_412.x;
float l9_414=l9_403;
sc_SoftwareWrapLate(l9_413,ivec2(SC_SOFTWARE_WRAP_MODE_U_rimColorTex,SC_SOFTWARE_WRAP_MODE_V_rimColorTex).x,l9_397,l9_414);
float l9_415=l9_412.y;
float l9_416=l9_414;
sc_SoftwareWrapLate(l9_415,ivec2(SC_SOFTWARE_WRAP_MODE_U_rimColorTex,SC_SOFTWARE_WRAP_MODE_V_rimColorTex).y,l9_397,l9_416);
float l9_417=l9_416;
vec3 l9_418=sc_SamplingCoordsViewToGlobal(vec2(l9_413,l9_415),rimColorTexLayout,rimColorTexGetStereoViewIndex());
vec4 l9_419=texture(rimColorTexArrSC,l9_418,0.0);
vec4 l9_420;
#if (SC_USE_CLAMP_TO_BORDER_rimColorTex)
{
l9_420=mix(rimColorTexBorderColor,l9_419,vec4(l9_417));
}
#else
{
l9_420=l9_419;
}
#endif
l9_396=l9_420;
}
#else
{
bool l9_421=(int(SC_USE_CLAMP_TO_BORDER_rimColorTex)!=0)&&(!(int(SC_USE_UV_MIN_MAX_rimColorTex)!=0));
float l9_422=l9_395.x;
sc_SoftwareWrapEarly(l9_422,ivec2(SC_SOFTWARE_WRAP_MODE_U_rimColorTex,SC_SOFTWARE_WRAP_MODE_V_rimColorTex).x);
float l9_423=l9_422;
float l9_424=l9_395.y;
sc_SoftwareWrapEarly(l9_424,ivec2(SC_SOFTWARE_WRAP_MODE_U_rimColorTex,SC_SOFTWARE_WRAP_MODE_V_rimColorTex).y);
float l9_425=l9_424;
vec2 l9_426;
float l9_427;
#if (SC_USE_UV_MIN_MAX_rimColorTex)
{
bool l9_428;
#if (SC_USE_CLAMP_TO_BORDER_rimColorTex)
{
l9_428=ivec2(SC_SOFTWARE_WRAP_MODE_U_rimColorTex,SC_SOFTWARE_WRAP_MODE_V_rimColorTex).x==3;
}
#else
{
l9_428=(int(SC_USE_CLAMP_TO_BORDER_rimColorTex)!=0);
}
#endif
float l9_429=l9_423;
float l9_430=1.0;
sc_ClampUV(l9_429,rimColorTexUvMinMax.x,rimColorTexUvMinMax.z,l9_428,l9_430);
float l9_431=l9_429;
float l9_432=l9_430;
bool l9_433;
#if (SC_USE_CLAMP_TO_BORDER_rimColorTex)
{
l9_433=ivec2(SC_SOFTWARE_WRAP_MODE_U_rimColorTex,SC_SOFTWARE_WRAP_MODE_V_rimColorTex).y==3;
}
#else
{
l9_433=(int(SC_USE_CLAMP_TO_BORDER_rimColorTex)!=0);
}
#endif
float l9_434=l9_425;
float l9_435=l9_432;
sc_ClampUV(l9_434,rimColorTexUvMinMax.y,rimColorTexUvMinMax.w,l9_433,l9_435);
l9_427=l9_435;
l9_426=vec2(l9_431,l9_434);
}
#else
{
l9_427=1.0;
l9_426=vec2(l9_423,l9_425);
}
#endif
vec2 l9_436=sc_TransformUV(l9_426,(int(SC_USE_UV_TRANSFORM_rimColorTex)!=0),rimColorTexTransform);
float l9_437=l9_436.x;
float l9_438=l9_427;
sc_SoftwareWrapLate(l9_437,ivec2(SC_SOFTWARE_WRAP_MODE_U_rimColorTex,SC_SOFTWARE_WRAP_MODE_V_rimColorTex).x,l9_421,l9_438);
float l9_439=l9_436.y;
float l9_440=l9_438;
sc_SoftwareWrapLate(l9_439,ivec2(SC_SOFTWARE_WRAP_MODE_U_rimColorTex,SC_SOFTWARE_WRAP_MODE_V_rimColorTex).y,l9_421,l9_440);
float l9_441=l9_440;
vec3 l9_442=sc_SamplingCoordsViewToGlobal(vec2(l9_437,l9_439),rimColorTexLayout,rimColorTexGetStereoViewIndex());
vec4 l9_443=texture(rimColorTex,l9_442.xy,0.0);
vec4 l9_444;
#if (SC_USE_CLAMP_TO_BORDER_rimColorTex)
{
l9_444=mix(rimColorTexBorderColor,l9_443,vec4(l9_441));
}
#else
{
l9_444=l9_443;
}
#endif
l9_396=l9_444;
}
#endif
l9_394=l9_393*l9_396.xyz;
}
#else
{
l9_394=l9_393;
}
#endif
vec3 l9_445=tempGlobals.ViewDirWS;
float l9_446=dot(l9_124,l9_445);
float l9_447=abs(l9_446);
float l9_448;
if (!(int(ENABLE_RIM_INVERT)!=0))
{
l9_448=1.0-l9_447;
}
else
{
l9_448=l9_447;
}
float l9_449;
if (l9_448<=0.0)
{
l9_449=0.0;
}
else
{
l9_449=pow(l9_448,rimExponent);
}
l9_392=vec3(0.0)+(ssSRGB_to_Linear(l9_394)*l9_449);
}
#else
{
l9_392=vec3(0.0);
}
#endif
vec3 l9_450=ssPow((l9_281+l9_282)+l9_392,vec3(0.45454547));
vec3 l9_451;
if (NODE_38_DROPLIST_ITEM==3)
{
l9_451=tempGlobals.VertexColor.xyz;
}
else
{
l9_451=vec3(1.0);
}
float l9_452;
vec3 l9_453;
float l9_454;
#if (ENABLE_MATERIAL_PARAM_TEX)
{
vec2 l9_455=N7_getUV(NODE_221_DROPLIST_ITEM);
vec4 l9_456;
#if (materialParamsTexLayout==2)
{
bool l9_457=(int(SC_USE_CLAMP_TO_BORDER_materialParamsTex)!=0)&&(!(int(SC_USE_UV_MIN_MAX_materialParamsTex)!=0));
float l9_458=l9_455.x;
sc_SoftwareWrapEarly(l9_458,ivec2(SC_SOFTWARE_WRAP_MODE_U_materialParamsTex,SC_SOFTWARE_WRAP_MODE_V_materialParamsTex).x);
float l9_459=l9_458;
float l9_460=l9_455.y;
sc_SoftwareWrapEarly(l9_460,ivec2(SC_SOFTWARE_WRAP_MODE_U_materialParamsTex,SC_SOFTWARE_WRAP_MODE_V_materialParamsTex).y);
float l9_461=l9_460;
vec2 l9_462;
float l9_463;
#if (SC_USE_UV_MIN_MAX_materialParamsTex)
{
bool l9_464;
#if (SC_USE_CLAMP_TO_BORDER_materialParamsTex)
{
l9_464=ivec2(SC_SOFTWARE_WRAP_MODE_U_materialParamsTex,SC_SOFTWARE_WRAP_MODE_V_materialParamsTex).x==3;
}
#else
{
l9_464=(int(SC_USE_CLAMP_TO_BORDER_materialParamsTex)!=0);
}
#endif
float l9_465=l9_459;
float l9_466=1.0;
sc_ClampUV(l9_465,materialParamsTexUvMinMax.x,materialParamsTexUvMinMax.z,l9_464,l9_466);
float l9_467=l9_465;
float l9_468=l9_466;
bool l9_469;
#if (SC_USE_CLAMP_TO_BORDER_materialParamsTex)
{
l9_469=ivec2(SC_SOFTWARE_WRAP_MODE_U_materialParamsTex,SC_SOFTWARE_WRAP_MODE_V_materialParamsTex).y==3;
}
#else
{
l9_469=(int(SC_USE_CLAMP_TO_BORDER_materialParamsTex)!=0);
}
#endif
float l9_470=l9_461;
float l9_471=l9_468;
sc_ClampUV(l9_470,materialParamsTexUvMinMax.y,materialParamsTexUvMinMax.w,l9_469,l9_471);
l9_463=l9_471;
l9_462=vec2(l9_467,l9_470);
}
#else
{
l9_463=1.0;
l9_462=vec2(l9_459,l9_461);
}
#endif
vec2 l9_472=sc_TransformUV(l9_462,(int(SC_USE_UV_TRANSFORM_materialParamsTex)!=0),materialParamsTexTransform);
float l9_473=l9_472.x;
float l9_474=l9_463;
sc_SoftwareWrapLate(l9_473,ivec2(SC_SOFTWARE_WRAP_MODE_U_materialParamsTex,SC_SOFTWARE_WRAP_MODE_V_materialParamsTex).x,l9_457,l9_474);
float l9_475=l9_472.y;
float l9_476=l9_474;
sc_SoftwareWrapLate(l9_475,ivec2(SC_SOFTWARE_WRAP_MODE_U_materialParamsTex,SC_SOFTWARE_WRAP_MODE_V_materialParamsTex).y,l9_457,l9_476);
float l9_477=l9_476;
vec3 l9_478=sc_SamplingCoordsViewToGlobal(vec2(l9_473,l9_475),materialParamsTexLayout,materialParamsTexGetStereoViewIndex());
vec4 l9_479=texture(materialParamsTexArrSC,l9_478,0.0);
vec4 l9_480;
#if (SC_USE_CLAMP_TO_BORDER_materialParamsTex)
{
l9_480=mix(materialParamsTexBorderColor,l9_479,vec4(l9_477));
}
#else
{
l9_480=l9_479;
}
#endif
l9_456=l9_480;
}
#else
{
bool l9_481=(int(SC_USE_CLAMP_TO_BORDER_materialParamsTex)!=0)&&(!(int(SC_USE_UV_MIN_MAX_materialParamsTex)!=0));
float l9_482=l9_455.x;
sc_SoftwareWrapEarly(l9_482,ivec2(SC_SOFTWARE_WRAP_MODE_U_materialParamsTex,SC_SOFTWARE_WRAP_MODE_V_materialParamsTex).x);
float l9_483=l9_482;
float l9_484=l9_455.y;
sc_SoftwareWrapEarly(l9_484,ivec2(SC_SOFTWARE_WRAP_MODE_U_materialParamsTex,SC_SOFTWARE_WRAP_MODE_V_materialParamsTex).y);
float l9_485=l9_484;
vec2 l9_486;
float l9_487;
#if (SC_USE_UV_MIN_MAX_materialParamsTex)
{
bool l9_488;
#if (SC_USE_CLAMP_TO_BORDER_materialParamsTex)
{
l9_488=ivec2(SC_SOFTWARE_WRAP_MODE_U_materialParamsTex,SC_SOFTWARE_WRAP_MODE_V_materialParamsTex).x==3;
}
#else
{
l9_488=(int(SC_USE_CLAMP_TO_BORDER_materialParamsTex)!=0);
}
#endif
float l9_489=l9_483;
float l9_490=1.0;
sc_ClampUV(l9_489,materialParamsTexUvMinMax.x,materialParamsTexUvMinMax.z,l9_488,l9_490);
float l9_491=l9_489;
float l9_492=l9_490;
bool l9_493;
#if (SC_USE_CLAMP_TO_BORDER_materialParamsTex)
{
l9_493=ivec2(SC_SOFTWARE_WRAP_MODE_U_materialParamsTex,SC_SOFTWARE_WRAP_MODE_V_materialParamsTex).y==3;
}
#else
{
l9_493=(int(SC_USE_CLAMP_TO_BORDER_materialParamsTex)!=0);
}
#endif
float l9_494=l9_485;
float l9_495=l9_492;
sc_ClampUV(l9_494,materialParamsTexUvMinMax.y,materialParamsTexUvMinMax.w,l9_493,l9_495);
l9_487=l9_495;
l9_486=vec2(l9_491,l9_494);
}
#else
{
l9_487=1.0;
l9_486=vec2(l9_483,l9_485);
}
#endif
vec2 l9_496=sc_TransformUV(l9_486,(int(SC_USE_UV_TRANSFORM_materialParamsTex)!=0),materialParamsTexTransform);
float l9_497=l9_496.x;
float l9_498=l9_487;
sc_SoftwareWrapLate(l9_497,ivec2(SC_SOFTWARE_WRAP_MODE_U_materialParamsTex,SC_SOFTWARE_WRAP_MODE_V_materialParamsTex).x,l9_481,l9_498);
float l9_499=l9_496.y;
float l9_500=l9_498;
sc_SoftwareWrapLate(l9_499,ivec2(SC_SOFTWARE_WRAP_MODE_U_materialParamsTex,SC_SOFTWARE_WRAP_MODE_V_materialParamsTex).y,l9_481,l9_500);
float l9_501=l9_500;
vec3 l9_502=sc_SamplingCoordsViewToGlobal(vec2(l9_497,l9_499),materialParamsTexLayout,materialParamsTexGetStereoViewIndex());
vec4 l9_503=texture(materialParamsTex,l9_502.xy,0.0);
vec4 l9_504;
#if (SC_USE_CLAMP_TO_BORDER_materialParamsTex)
{
l9_504=mix(materialParamsTexBorderColor,l9_503,vec4(l9_501));
}
#else
{
l9_504=l9_503;
}
#endif
l9_456=l9_504;
}
#endif
l9_454=roughness*l9_456.y;
l9_453=l9_451*l9_456.z;
l9_452=metallic*l9_456.x;
}
#else
{
l9_454=roughness;
l9_453=l9_451;
l9_452=metallic;
}
#endif
vec3 l9_505;
#if (ENABLE_SPECULAR_AO)
{
vec3 l9_506=mix(vec3(0.039999999),l9_122.xyz*l9_452,vec3(l9_452));
l9_505=mix(vec3(1.0),mix((l9_506*(1.0-specularAoDarkening))*l9_506,vec3(1.0),vec3(l9_453.x)),vec3(specularAoIntensity));
}
#else
{
l9_505=vec3(1.0);
}
#endif
vec3 l9_507;
#if (ENABLE_SIMPLE_REFLECTION)
{
l9_507=vec3(0.0);
}
#else
{
l9_507=l9_505;
}
#endif
vec3 l9_508;
#if (!sc_ProjectiveShadowsCaster)
{
l9_508=l9_124;
}
#else
{
l9_508=vec3(0.0);
}
#endif
float l9_509=clamp(l9_123,0.0,1.0);
#if (sc_BlendMode_AlphaTest)
{
if (l9_509<alphaTestThreshold)
{
discard;
}
}
#endif
#if (ENABLE_STIPPLE_PATTERN_TEST)
{
if (l9_509<((mod(dot(floor(mod(gl_FragCoord.xy,vec2(4.0))),vec2(4.0,1.0))*9.0,16.0)+1.0)/17.0))
{
discard;
}
}
#endif
vec3 l9_510=max(l9_122.xyz,vec3(0.0));
vec4 l9_511;
#if (sc_ProjectiveShadowsCaster)
{
l9_511=vec4(l9_510,l9_509);
}
#else
{
l9_511=ngsCalculateLighting(l9_510,l9_509,l9_508,l9_7,l9_8,max(l9_450,vec3(0.0)),clamp(l9_452,0.0,1.0),clamp(l9_454,0.0,1.0),clamp(l9_453,vec3(0.0),vec3(1.0)),clamp(l9_507,vec3(0.0),vec3(1.0)));
}
#endif
vec4 l9_512=max(l9_511,vec4(0.0));
if (isProxyMode)
{
vec4 l9_513;
#if (sc_ProxyAlphaOne)
{
vec4 l9_514=l9_512;
l9_514.w=1.0;
l9_513=l9_514;
}
#else
{
l9_513=l9_512;
}
#endif
sc_writeFragData0Internal(max(l9_513,vec4(0.0)),sc_UniformConstants.x,sc_ShaderCacheConstant);
return;
}
vec4 l9_515;
#if (sc_ProjectiveShadowsCaster)
{
float l9_516;
#if (((sc_BlendMode_Normal||sc_BlendMode_AlphaToCoverage)||sc_BlendMode_PremultipliedAlphaHardware)||sc_BlendMode_PremultipliedAlphaAuto)
{
l9_516=l9_512.w;
}
#else
{
float l9_517;
#if (sc_BlendMode_PremultipliedAlpha)
{
l9_517=clamp(l9_512.w*2.0,0.0,1.0);
}
#else
{
float l9_518;
#if (sc_BlendMode_AddWithAlphaFactor)
{
l9_518=clamp(dot(l9_512.xyz,vec3(l9_512.w)),0.0,1.0);
}
#else
{
float l9_519;
#if (sc_BlendMode_AlphaTest)
{
l9_519=1.0;
}
#else
{
float l9_520;
#if (sc_BlendMode_Multiply)
{
l9_520=(1.0-dot(l9_512.xyz,vec3(0.33333001)))*l9_512.w;
}
#else
{
float l9_521;
#if (sc_BlendMode_MultiplyOriginal)
{
l9_521=(1.0-clamp(dot(l9_512.xyz,vec3(1.0)),0.0,1.0))*l9_512.w;
}
#else
{
float l9_522;
#if (sc_BlendMode_ColoredGlass)
{
l9_522=clamp(dot(l9_512.xyz,vec3(1.0)),0.0,1.0)*l9_512.w;
}
#else
{
float l9_523;
#if (sc_BlendMode_Add)
{
l9_523=clamp(dot(l9_512.xyz,vec3(1.0)),0.0,1.0);
}
#else
{
float l9_524;
#if (sc_BlendMode_AddWithAlphaFactor)
{
l9_524=clamp(dot(l9_512.xyz,vec3(1.0)),0.0,1.0)*l9_512.w;
}
#else
{
float l9_525;
#if (sc_BlendMode_Screen)
{
l9_525=dot(l9_512.xyz,vec3(0.33333001))*l9_512.w;
}
#else
{
float l9_526;
#if (sc_BlendMode_Min)
{
l9_526=1.0-clamp(dot(l9_512.xyz,vec3(1.0)),0.0,1.0);
}
#else
{
float l9_527;
#if (sc_BlendMode_Max)
{
l9_527=clamp(dot(l9_512.xyz,vec3(1.0)),0.0,1.0);
}
#else
{
l9_527=1.0;
}
#endif
l9_526=l9_527;
}
#endif
l9_525=l9_526;
}
#endif
l9_524=l9_525;
}
#endif
l9_523=l9_524;
}
#endif
l9_522=l9_523;
}
#endif
l9_521=l9_522;
}
#endif
l9_520=l9_521;
}
#endif
l9_519=l9_520;
}
#endif
l9_518=l9_519;
}
#endif
l9_517=l9_518;
}
#endif
l9_516=l9_517;
}
#endif
l9_515=vec4(mix(sc_ShadowColor.xyz,sc_ShadowColor.xyz*l9_512.xyz,vec3(sc_ShadowColor.w)),sc_ShadowDensity*l9_516);
}
#else
{
vec4 l9_528;
#if (sc_RenderAlphaToColor)
{
l9_528=vec4(l9_512.w);
}
#else
{
vec4 l9_529;
#if (sc_BlendMode_Custom)
{
vec3 l9_530=sc_GetFramebufferColor().xyz;
vec3 l9_531=mix(l9_530,definedBlend(l9_530,l9_512.xyz).xyz,vec3(l9_512.w));
vec4 l9_532=vec4(l9_531.x,l9_531.y,l9_531.z,vec4(0.0).w);
l9_532.w=1.0;
l9_529=l9_532;
}
#else
{
vec4 l9_533;
#if (sc_BlendMode_MultiplyOriginal)
{
float l9_534=l9_512.w;
l9_533=vec4(mix(vec3(1.0),l9_512.xyz,vec3(l9_534)),l9_534);
}
#else
{
vec4 l9_535;
#if (sc_BlendMode_Screen||sc_BlendMode_PremultipliedAlphaAuto)
{
float l9_536=l9_512.w;
float l9_537;
#if (sc_BlendMode_PremultipliedAlphaAuto)
{
l9_537=clamp(l9_536,0.0,1.0);
}
#else
{
l9_537=l9_536;
}
#endif
l9_535=vec4(l9_512.xyz*l9_537,l9_537);
}
#else
{
l9_535=l9_512;
}
#endif
l9_533=l9_535;
}
#endif
l9_529=l9_533;
}
#endif
l9_528=l9_529;
}
#endif
l9_515=l9_528;
}
#endif
vec4 l9_538;
if (PreviewEnabled==1)
{
vec4 l9_539;
if (((PreviewVertexSaved*1.0)!=0.0) ? true : false)
{
l9_539=PreviewVertexColor;
}
else
{
l9_539=vec4(0.0);
}
l9_538=l9_539;
}
else
{
l9_538=l9_515;
}
vec4 l9_540;
#if (sc_ShaderComplexityAnalyzer)
{
l9_540=vec4(shaderComplexityValue/255.0,0.0,0.0,1.0);
}
#else
{
l9_540=vec4(0.0);
}
#endif
vec4 l9_541;
if (l9_540.w>0.0)
{
l9_541=l9_540;
}
else
{
l9_541=l9_538;
}
vec4 l9_542=outputMotionVectorsIfNeeded(varPos,max(l9_541,vec4(0.0)));
vec4 l9_543=clamp(l9_542,vec4(0.0),vec4(1.0));
#if (sc_OITDepthBoundsPass)
{
#if (sc_OITDepthBoundsPass)
{
float l9_544=clamp(viewSpaceDepth()/1000.0,0.0,1.0);
sc_writeFragData0Internal(vec4(max(0.0,1.0-(l9_544-0.0039215689)),min(1.0,l9_544+0.0039215689),0.0,0.0),sc_UniformConstants.x,sc_ShaderCacheConstant);
}
#endif
}
#else
{
#if (sc_OITDepthPrepass)
{
sc_writeFragData0Internal(vec4(1.0),sc_UniformConstants.x,sc_ShaderCacheConstant);
}
#else
{
#if (sc_OITDepthGatherPass)
{
#if (sc_OITDepthGatherPass)
{
vec2 l9_545=sc_ScreenCoordsGlobalToView(gl_FragCoord.xy*sc_CurrentRenderTargetDims.zw);
#if (sc_OITMaxLayers4Plus1)
{
if ((gl_FragCoord.z-texture(sc_OITFrontDepthTexture,l9_545).x)<=getFrontLayerZTestEpsilon())
{
discard;
}
}
#endif
int l9_546=encodeDepth(viewSpaceDepth(),texture(sc_OITFilteredDepthBoundsTexture,l9_545).xy);
float l9_547=packValue(l9_546);
int l9_554=int(l9_543.w*255.0);
float l9_555=packValue(l9_554);
sc_writeFragData0Internal(vec4(packValue(l9_546),packValue(l9_546),packValue(l9_546),packValue(l9_546)),sc_UniformConstants.x,sc_ShaderCacheConstant);
sc_writeFragData1(vec4(l9_547,packValue(l9_546),packValue(l9_546),packValue(l9_546)));
sc_writeFragData2(vec4(l9_555,packValue(l9_554),packValue(l9_554),packValue(l9_554)));
#if (sc_OITMaxLayersVisualizeLayerCount)
{
sc_writeFragData2(vec4(0.0039215689,0.0,0.0,0.0));
}
#endif
}
#endif
}
#else
{
#if (sc_OITCompositingPass)
{
#if (sc_OITCompositingPass)
{
vec2 l9_558=sc_ScreenCoordsGlobalToView(gl_FragCoord.xy*sc_CurrentRenderTargetDims.zw);
#if (sc_OITMaxLayers4Plus1)
{
if ((gl_FragCoord.z-texture(sc_OITFrontDepthTexture,l9_558).x)<=getFrontLayerZTestEpsilon())
{
discard;
}
}
#endif
int l9_559[8];
int l9_560[8];
int l9_561=0;
for (int snapLoopIndex=0; snapLoopIndex==0; snapLoopIndex+=0)
{
if (l9_561<8)
{
l9_559[l9_561]=0;
l9_560[l9_561]=0;
l9_561++;
continue;
}
else
{
break;
}
}
int l9_562;
#if (sc_OITMaxLayers8)
{
l9_562=2;
}
#else
{
l9_562=1;
}
#endif
int l9_563=0;
for (int snapLoopIndex=0; snapLoopIndex==0; snapLoopIndex+=0)
{
if (l9_563<l9_562)
{
vec4 l9_564;
vec4 l9_565;
vec4 l9_566;
if (l9_563==0)
{
l9_566=texture(sc_OITAlpha0,l9_558);
l9_565=texture(sc_OITDepthLow0,l9_558);
l9_564=texture(sc_OITDepthHigh0,l9_558);
}
else
{
l9_566=vec4(0.0);
l9_565=vec4(0.0);
l9_564=vec4(0.0);
}
vec4 l9_567;
vec4 l9_568;
vec4 l9_569;
if (l9_563==1)
{
l9_569=texture(sc_OITAlpha1,l9_558);
l9_568=texture(sc_OITDepthLow1,l9_558);
l9_567=texture(sc_OITDepthHigh1,l9_558);
}
else
{
l9_569=l9_566;
l9_568=l9_565;
l9_567=l9_564;
}
if (any(notEqual(l9_567,vec4(0.0)))||any(notEqual(l9_568,vec4(0.0))))
{
int l9_570[8]=l9_559;
unpackValues(l9_567.w,l9_563,l9_570);
unpackValues(l9_567.z,l9_563,l9_570);
unpackValues(l9_567.y,l9_563,l9_570);
unpackValues(l9_567.x,l9_563,l9_570);
unpackValues(l9_568.w,l9_563,l9_570);
unpackValues(l9_568.z,l9_563,l9_570);
unpackValues(l9_568.y,l9_563,l9_570);
unpackValues(l9_568.x,l9_563,l9_570);
int l9_579[8]=l9_560;
unpackValues(l9_569.w,l9_563,l9_579);
unpackValues(l9_569.z,l9_563,l9_579);
unpackValues(l9_569.y,l9_563,l9_579);
unpackValues(l9_569.x,l9_563,l9_579);
}
l9_563++;
continue;
}
else
{
break;
}
}
vec4 l9_584=texture(sc_OITFilteredDepthBoundsTexture,l9_558);
vec2 l9_585=l9_584.xy;
int l9_586;
#if (sc_SkinBonesCount>0)
{
l9_586=encodeDepth(((1.0-l9_584.x)*1000.0)+getDepthOrderingEpsilon(),l9_585);
}
#else
{
l9_586=0;
}
#endif
int l9_587=encodeDepth(viewSpaceDepth(),l9_585);
vec4 l9_588;
l9_588=l9_543*l9_543.w;
vec4 l9_589;
int l9_590=0;
for (int snapLoopIndex=0; snapLoopIndex==0; snapLoopIndex+=0)
{
if (l9_590<8)
{
int l9_591=l9_559[l9_590];
int l9_592=l9_587-l9_586;
bool l9_593=l9_591<l9_592;
bool l9_594;
if (l9_593)
{
l9_594=l9_559[l9_590]>0;
}
else
{
l9_594=l9_593;
}
if (l9_594)
{
vec3 l9_595=l9_588.xyz*(1.0-(float(l9_560[l9_590])/255.0));
l9_589=vec4(l9_595.x,l9_595.y,l9_595.z,l9_588.w);
}
else
{
l9_589=l9_588;
}
l9_588=l9_589;
l9_590++;
continue;
}
else
{
break;
}
}
sc_writeFragData0Internal(l9_588,sc_UniformConstants.x,sc_ShaderCacheConstant);
#if (sc_OITMaxLayersVisualizeLayerCount)
{
discard;
}
#endif
}
#endif
}
#else
{
#if (sc_OITFrontLayerPass)
{
#if (sc_OITFrontLayerPass)
{
if (abs(gl_FragCoord.z-texture(sc_OITFrontDepthTexture,sc_ScreenCoordsGlobalToView(gl_FragCoord.xy*sc_CurrentRenderTargetDims.zw)).x)>getFrontLayerZTestEpsilon())
{
discard;
}
sc_writeFragData0Internal(l9_543,sc_UniformConstants.x,sc_ShaderCacheConstant);
}
#endif
}
#else
{
sc_writeFragData0Internal(l9_542,sc_UniformConstants.x,sc_ShaderCacheConstant);
}
#endif
}
#endif
}
#endif
}
#endif
}
#endif
}
#endif // #if SC_RT_RECEIVER_MODE
#endif // #elif defined FRAGMENT_SHADER // #if defined VERTEX_SHADER
