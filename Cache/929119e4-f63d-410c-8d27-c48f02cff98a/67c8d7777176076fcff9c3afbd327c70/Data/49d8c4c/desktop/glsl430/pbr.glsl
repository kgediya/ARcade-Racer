#version 430
//#include <required.glsl> // [HACK 4/6/2023] See SCC shader_merger.cpp
// SCC_BACKEND_SHADER_FLAGS_BEGIN__
// NGS_FLAG_IS_NORMAL_MAP normalTex
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
//sampler sampler baseTexSmpSC 0:27
//sampler sampler intensityTextureSmpSC 0:28
//sampler sampler materialParamsTexSmpSC 0:29
//sampler sampler normalTexSmpSC 0:30
//sampler sampler sc_EnvmapDiffuseSmpSC 0:31
//sampler sampler sc_EnvmapSpecularSmpSC 0:32
//sampler sampler sc_OITCommonSampler 0:33
//sampler sampler sc_RayTracedAoTextureSmpSC 0:34
//sampler sampler sc_RayTracedDiffIndTextureSmpSC 0:35
//sampler sampler sc_RayTracedReflectionTextureSmpSC 0:36
//sampler sampler sc_RayTracedShadowTextureSmpSC 0:37
//sampler sampler sc_SSAOTextureSmpSC 0:38
//sampler sampler sc_ScreenTextureSmpSC 0:39
//sampler sampler sc_ShadowTextureSmpSC 0:40
//sampler sampler z_hitIdAndBarycentricSmp 0:42
//sampler sampler z_rayDirectionsSmpSC 0:43
//texture texture2D baseTex 0:3:0:27
//texture texture2D intensityTexture 0:4:0:28
//texture texture2D materialParamsTex 0:5:0:29
//texture texture2D normalTex 0:6:0:30
//texture texture2D sc_EnvmapDiffuse 0:7:0:31
//texture texture2D sc_EnvmapSpecular 0:8:0:32
//texture texture2D sc_OITAlpha0 0:9:0:33
//texture texture2D sc_OITAlpha1 0:10:0:33
//texture texture2D sc_OITDepthHigh0 0:11:0:33
//texture texture2D sc_OITDepthHigh1 0:12:0:33
//texture texture2D sc_OITDepthLow0 0:13:0:33
//texture texture2D sc_OITDepthLow1 0:14:0:33
//texture texture2D sc_OITFilteredDepthBoundsTexture 0:15:0:33
//texture texture2D sc_OITFrontDepthTexture 0:16:0:33
//texture texture2D sc_RayTracedAoTexture 0:17:0:34
//texture texture2D sc_RayTracedDiffIndTexture 0:18:0:35
//texture texture2D sc_RayTracedReflectionTexture 0:19:0:36
//texture texture2D sc_RayTracedShadowTexture 0:20:0:37
//texture texture2D sc_SSAOTexture 0:21:0:38
//texture texture2D sc_ScreenTexture 0:22:0:39
//texture texture2D sc_ShadowTexture 0:23:0:40
//texture utexture2D z_hitIdAndBarycentric 0:25:0:42
//texture texture2D z_rayDirections 0:26:0:43
//texture texture2DArray baseTexArrSC 0:44:0:27
//texture texture2DArray intensityTextureArrSC 0:45:0:28
//texture texture2DArray materialParamsTexArrSC 0:46:0:29
//texture texture2DArray normalTexArrSC 0:47:0:30
//texture texture2DArray sc_EnvmapDiffuseArrSC 0:48:0:31
//texture texture2DArray sc_EnvmapSpecularArrSC 0:49:0:32
//texture texture2DArray sc_RayTracedAoTextureArrSC 0:50:0:34
//texture texture2DArray sc_RayTracedDiffIndTextureArrSC 0:51:0:35
//texture texture2DArray sc_RayTracedReflectionTextureArrSC 0:52:0:36
//texture texture2DArray sc_RayTracedShadowTextureArrSC 0:53:0:37
//texture texture2DArray sc_ScreenTextureArrSC 0:54:0:39
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
//spec_const bool ENABLE_STIPPLE_PATTERN_TEST 30 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_baseTex 31 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_intensityTexture 32 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_materialParamsTex 33 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_normalTex 34 0
//spec_const bool SC_USE_UV_MIN_MAX_baseTex 35 0
//spec_const bool SC_USE_UV_MIN_MAX_intensityTexture 36 0
//spec_const bool SC_USE_UV_MIN_MAX_materialParamsTex 37 0
//spec_const bool SC_USE_UV_MIN_MAX_normalTex 38 0
//spec_const bool SC_USE_UV_TRANSFORM_baseTex 39 0
//spec_const bool SC_USE_UV_TRANSFORM_intensityTexture 40 0
//spec_const bool SC_USE_UV_TRANSFORM_materialParamsTex 41 0
//spec_const bool SC_USE_UV_TRANSFORM_normalTex 42 0
//spec_const bool UseViewSpaceDepthVariant 43 1
//spec_const bool baseTexHasSwappedViews 44 0
//spec_const bool intensityTextureHasSwappedViews 45 0
//spec_const bool materialParamsTexHasSwappedViews 46 0
//spec_const bool normalTexHasSwappedViews 47 0
//spec_const bool sc_BlendMode_Add 48 0
//spec_const bool sc_BlendMode_AddWithAlphaFactor 49 0
//spec_const bool sc_BlendMode_AlphaTest 50 0
//spec_const bool sc_BlendMode_AlphaToCoverage 51 0
//spec_const bool sc_BlendMode_ColoredGlass 52 0
//spec_const bool sc_BlendMode_Custom 53 0
//spec_const bool sc_BlendMode_Max 54 0
//spec_const bool sc_BlendMode_Min 55 0
//spec_const bool sc_BlendMode_Multiply 56 0
//spec_const bool sc_BlendMode_MultiplyOriginal 57 0
//spec_const bool sc_BlendMode_Normal 58 0
//spec_const bool sc_BlendMode_PremultipliedAlpha 59 0
//spec_const bool sc_BlendMode_PremultipliedAlphaAuto 60 0
//spec_const bool sc_BlendMode_PremultipliedAlphaHardware 61 0
//spec_const bool sc_BlendMode_Screen 62 0
//spec_const bool sc_BlendMode_Software 63 0
//spec_const bool sc_DepthOnly 64 0
//spec_const bool sc_EnvmapDiffuseHasSwappedViews 65 0
//spec_const bool sc_EnvmapSpecularHasSwappedViews 66 0
//spec_const bool sc_FramebufferFetch 67 0
//spec_const bool sc_GetFramebufferColorInvalidUsageMarker 68 0
//spec_const bool sc_HasDiffuseEnvmap 69 0
//spec_const bool sc_IsEditor 70 0
//spec_const bool sc_LightEstimation 71 0
//spec_const bool sc_MotionVectorsPass 72 0
//spec_const bool sc_OITCompositingPass 73 0
//spec_const bool sc_OITDepthBoundsPass 74 0
//spec_const bool sc_OITDepthGatherPass 75 0
//spec_const bool sc_OITDepthPrepass 76 0
//spec_const bool sc_OITFrontLayerPass 77 0
//spec_const bool sc_OITMaxLayers4Plus1 78 0
//spec_const bool sc_OITMaxLayers8 79 0
//spec_const bool sc_OITMaxLayersVisualizeLayerCount 80 0
//spec_const bool sc_ProjectiveShadowsCaster 81 0
//spec_const bool sc_ProjectiveShadowsReceiver 82 0
//spec_const bool sc_ProxyAlphaOne 83 0
//spec_const bool sc_RayTracedAoTextureHasSwappedViews 84 0
//spec_const bool sc_RayTracedDiffIndTextureHasSwappedViews 85 0
//spec_const bool sc_RayTracedReflectionTextureHasSwappedViews 86 0
//spec_const bool sc_RayTracedShadowTextureHasSwappedViews 87 0
//spec_const bool sc_RenderAlphaToColor 88 0
//spec_const bool sc_SSAOEnabled 89 0
//spec_const bool sc_ScreenTextureHasSwappedViews 90 0
//spec_const bool sc_ShaderComplexityAnalyzer 91 0
//spec_const bool sc_TAAEnabled 92 0
//spec_const bool sc_UseFramebufferFetchMarker 93 0
//spec_const bool sc_VertexBlending 94 0
//spec_const bool sc_VertexBlendingUseNormals 95 0
//spec_const int SC_DEVICE_CLASS 96 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_baseTex 97 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_intensityTexture 98 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_materialParamsTex 99 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_normalTex 100 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_baseTex 101 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_intensityTexture 102 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_materialParamsTex 103 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_normalTex 104 -1
//spec_const int baseTexLayout 105 0
//spec_const int intensityTextureLayout 106 0
//spec_const int materialParamsTexLayout 107 0
//spec_const int normalTexLayout 108 0
//spec_const int sc_AmbientLightMode0 109 0
//spec_const int sc_AmbientLightMode1 110 0
//spec_const int sc_AmbientLightMode2 111 0
//spec_const int sc_AmbientLightMode_Constant 112 0
//spec_const int sc_AmbientLightMode_EnvironmentMap 113 0
//spec_const int sc_AmbientLightMode_FromCamera 114 0
//spec_const int sc_AmbientLightMode_SphericalHarmonics 115 0
//spec_const int sc_AmbientLightsCount 116 0
//spec_const int sc_DepthBufferMode 117 0
//spec_const int sc_DirectionalLightsCount 118 0
//spec_const int sc_EnvLightMode 119 0
//spec_const int sc_EnvmapDiffuseLayout 120 0
//spec_const int sc_EnvmapSpecularLayout 121 0
//spec_const int sc_LightEstimationSGCount 122 0
//spec_const int sc_MaxTextureImageUnits 123 0
//spec_const int sc_PointLightsCount 124 0
//spec_const int sc_RayTracedAoTextureLayout 125 0
//spec_const int sc_RayTracedDiffIndTextureLayout 126 0
//spec_const int sc_RayTracedReflectionTextureLayout 127 0
//spec_const int sc_RayTracedShadowTextureLayout 128 0
//spec_const int sc_RenderingSpace 129 -1
//spec_const int sc_ScreenTextureLayout 130 0
//spec_const int sc_ShaderCacheConstant 131 0
//spec_const int sc_SkinBonesCount 132 0
//spec_const int sc_StereoRenderingMode 133 0
//spec_const int sc_StereoRendering_IsClipDistanceEnabled 134 0
//spec_const int sc_StereoViewID 135 0
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
#ifndef normalTexHasSwappedViews
#define normalTexHasSwappedViews 0
#elif normalTexHasSwappedViews==1
#undef normalTexHasSwappedViews
#define normalTexHasSwappedViews 1
#endif
#ifndef normalTexLayout
#define normalTexLayout 0
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
uniform sc_Camera_t sc_Camera;
uniform vec3 OriginNormalizationOffset;
uniform vec3 OriginNormalizationScale;
uniform float receiver_mask;
uniform int receiverId;
uniform float alphaTestThreshold;
uniform float uvScale;
uniform mat3 normalTexTransform;
uniform vec4 normalTexUvMinMax;
uniform vec4 normalTexBorderColor;
uniform vec2 Port_Center_N016;
uniform mat3 baseTexTransform;
uniform vec4 baseTexUvMinMax;
uniform vec4 baseTexBorderColor;
uniform mat3 materialParamsTexTransform;
uniform vec4 materialParamsTexUvMinMax;
uniform vec4 materialParamsTexBorderColor;
uniform sampler2DArray baseTexArrSC;
uniform sampler2D baseTex;
uniform sampler2DArray normalTexArrSC;
uniform sampler2D normalTex;
uniform sampler2DArray materialParamsTexArrSC;
uniform sampler2D materialParamsTex;
flat in int varStereoViewID;
in vec2 varShadowTex;
in float varClipDistance;
layout(location=0) out uvec4 position_and_mask;
layout(location=1) out uvec4 normal_and_more;
in vec3 varPos;
in vec4 varTangent;
in vec3 varNormal;
in vec4 varPackedTex;
in vec4 varScreenPos;
in vec2 varScreenTexturePos;
in float varViewSpaceDepth;
in vec4 varColor;
in vec4 PreviewVertexColor;
in float PreviewVertexSaved;
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
#if (sc_DepthOnly)
{
return;
}
#endif
vec3 l9_0=normalize(varTangent.xyz);
vec3 l9_1=normalize(varNormal);
vec2 l9_2=((varPackedTex.xy-Port_Center_N016)*vec2(uvScale))+Port_Center_N016;
vec4 l9_3;
#if (baseTexLayout==2)
{
bool l9_4=(int(SC_USE_CLAMP_TO_BORDER_baseTex)!=0)&&(!(int(SC_USE_UV_MIN_MAX_baseTex)!=0));
float l9_5=l9_2.x;
sc_SoftwareWrapEarly(l9_5,ivec2(SC_SOFTWARE_WRAP_MODE_U_baseTex,SC_SOFTWARE_WRAP_MODE_V_baseTex).x);
float l9_6=l9_5;
float l9_7=l9_2.y;
sc_SoftwareWrapEarly(l9_7,ivec2(SC_SOFTWARE_WRAP_MODE_U_baseTex,SC_SOFTWARE_WRAP_MODE_V_baseTex).y);
float l9_8=l9_7;
vec2 l9_9;
float l9_10;
#if (SC_USE_UV_MIN_MAX_baseTex)
{
bool l9_11;
#if (SC_USE_CLAMP_TO_BORDER_baseTex)
{
l9_11=ivec2(SC_SOFTWARE_WRAP_MODE_U_baseTex,SC_SOFTWARE_WRAP_MODE_V_baseTex).x==3;
}
#else
{
l9_11=(int(SC_USE_CLAMP_TO_BORDER_baseTex)!=0);
}
#endif
float l9_12=l9_6;
float l9_13=1.0;
sc_ClampUV(l9_12,baseTexUvMinMax.x,baseTexUvMinMax.z,l9_11,l9_13);
float l9_14=l9_12;
float l9_15=l9_13;
bool l9_16;
#if (SC_USE_CLAMP_TO_BORDER_baseTex)
{
l9_16=ivec2(SC_SOFTWARE_WRAP_MODE_U_baseTex,SC_SOFTWARE_WRAP_MODE_V_baseTex).y==3;
}
#else
{
l9_16=(int(SC_USE_CLAMP_TO_BORDER_baseTex)!=0);
}
#endif
float l9_17=l9_8;
float l9_18=l9_15;
sc_ClampUV(l9_17,baseTexUvMinMax.y,baseTexUvMinMax.w,l9_16,l9_18);
l9_10=l9_18;
l9_9=vec2(l9_14,l9_17);
}
#else
{
l9_10=1.0;
l9_9=vec2(l9_6,l9_8);
}
#endif
vec2 l9_19=sc_TransformUV(l9_9,(int(SC_USE_UV_TRANSFORM_baseTex)!=0),baseTexTransform);
float l9_20=l9_19.x;
float l9_21=l9_10;
sc_SoftwareWrapLate(l9_20,ivec2(SC_SOFTWARE_WRAP_MODE_U_baseTex,SC_SOFTWARE_WRAP_MODE_V_baseTex).x,l9_4,l9_21);
float l9_22=l9_19.y;
float l9_23=l9_21;
sc_SoftwareWrapLate(l9_22,ivec2(SC_SOFTWARE_WRAP_MODE_U_baseTex,SC_SOFTWARE_WRAP_MODE_V_baseTex).y,l9_4,l9_23);
float l9_24=l9_23;
vec3 l9_25=sc_SamplingCoordsViewToGlobal(vec2(l9_20,l9_22),baseTexLayout,baseTexGetStereoViewIndex());
vec4 l9_26=texture(baseTexArrSC,l9_25,0.0);
vec4 l9_27;
#if (SC_USE_CLAMP_TO_BORDER_baseTex)
{
l9_27=mix(baseTexBorderColor,l9_26,vec4(l9_24));
}
#else
{
l9_27=l9_26;
}
#endif
l9_3=l9_27;
}
#else
{
bool l9_28=(int(SC_USE_CLAMP_TO_BORDER_baseTex)!=0)&&(!(int(SC_USE_UV_MIN_MAX_baseTex)!=0));
float l9_29=l9_2.x;
sc_SoftwareWrapEarly(l9_29,ivec2(SC_SOFTWARE_WRAP_MODE_U_baseTex,SC_SOFTWARE_WRAP_MODE_V_baseTex).x);
float l9_30=l9_29;
float l9_31=l9_2.y;
sc_SoftwareWrapEarly(l9_31,ivec2(SC_SOFTWARE_WRAP_MODE_U_baseTex,SC_SOFTWARE_WRAP_MODE_V_baseTex).y);
float l9_32=l9_31;
vec2 l9_33;
float l9_34;
#if (SC_USE_UV_MIN_MAX_baseTex)
{
bool l9_35;
#if (SC_USE_CLAMP_TO_BORDER_baseTex)
{
l9_35=ivec2(SC_SOFTWARE_WRAP_MODE_U_baseTex,SC_SOFTWARE_WRAP_MODE_V_baseTex).x==3;
}
#else
{
l9_35=(int(SC_USE_CLAMP_TO_BORDER_baseTex)!=0);
}
#endif
float l9_36=l9_30;
float l9_37=1.0;
sc_ClampUV(l9_36,baseTexUvMinMax.x,baseTexUvMinMax.z,l9_35,l9_37);
float l9_38=l9_36;
float l9_39=l9_37;
bool l9_40;
#if (SC_USE_CLAMP_TO_BORDER_baseTex)
{
l9_40=ivec2(SC_SOFTWARE_WRAP_MODE_U_baseTex,SC_SOFTWARE_WRAP_MODE_V_baseTex).y==3;
}
#else
{
l9_40=(int(SC_USE_CLAMP_TO_BORDER_baseTex)!=0);
}
#endif
float l9_41=l9_32;
float l9_42=l9_39;
sc_ClampUV(l9_41,baseTexUvMinMax.y,baseTexUvMinMax.w,l9_40,l9_42);
l9_34=l9_42;
l9_33=vec2(l9_38,l9_41);
}
#else
{
l9_34=1.0;
l9_33=vec2(l9_30,l9_32);
}
#endif
vec2 l9_43=sc_TransformUV(l9_33,(int(SC_USE_UV_TRANSFORM_baseTex)!=0),baseTexTransform);
float l9_44=l9_43.x;
float l9_45=l9_34;
sc_SoftwareWrapLate(l9_44,ivec2(SC_SOFTWARE_WRAP_MODE_U_baseTex,SC_SOFTWARE_WRAP_MODE_V_baseTex).x,l9_28,l9_45);
float l9_46=l9_43.y;
float l9_47=l9_45;
sc_SoftwareWrapLate(l9_46,ivec2(SC_SOFTWARE_WRAP_MODE_U_baseTex,SC_SOFTWARE_WRAP_MODE_V_baseTex).y,l9_28,l9_47);
float l9_48=l9_47;
vec3 l9_49=sc_SamplingCoordsViewToGlobal(vec2(l9_44,l9_46),baseTexLayout,baseTexGetStereoViewIndex());
vec4 l9_50=texture(baseTex,l9_49.xy,0.0);
vec4 l9_51;
#if (SC_USE_CLAMP_TO_BORDER_baseTex)
{
l9_51=mix(baseTexBorderColor,l9_50,vec4(l9_48));
}
#else
{
l9_51=l9_50;
}
#endif
l9_3=l9_51;
}
#endif
vec4 l9_52;
#if (normalTexLayout==2)
{
bool l9_53=(int(SC_USE_CLAMP_TO_BORDER_normalTex)!=0)&&(!(int(SC_USE_UV_MIN_MAX_normalTex)!=0));
float l9_54=l9_2.x;
sc_SoftwareWrapEarly(l9_54,ivec2(SC_SOFTWARE_WRAP_MODE_U_normalTex,SC_SOFTWARE_WRAP_MODE_V_normalTex).x);
float l9_55=l9_54;
float l9_56=l9_2.y;
sc_SoftwareWrapEarly(l9_56,ivec2(SC_SOFTWARE_WRAP_MODE_U_normalTex,SC_SOFTWARE_WRAP_MODE_V_normalTex).y);
float l9_57=l9_56;
vec2 l9_58;
float l9_59;
#if (SC_USE_UV_MIN_MAX_normalTex)
{
bool l9_60;
#if (SC_USE_CLAMP_TO_BORDER_normalTex)
{
l9_60=ivec2(SC_SOFTWARE_WRAP_MODE_U_normalTex,SC_SOFTWARE_WRAP_MODE_V_normalTex).x==3;
}
#else
{
l9_60=(int(SC_USE_CLAMP_TO_BORDER_normalTex)!=0);
}
#endif
float l9_61=l9_55;
float l9_62=1.0;
sc_ClampUV(l9_61,normalTexUvMinMax.x,normalTexUvMinMax.z,l9_60,l9_62);
float l9_63=l9_61;
float l9_64=l9_62;
bool l9_65;
#if (SC_USE_CLAMP_TO_BORDER_normalTex)
{
l9_65=ivec2(SC_SOFTWARE_WRAP_MODE_U_normalTex,SC_SOFTWARE_WRAP_MODE_V_normalTex).y==3;
}
#else
{
l9_65=(int(SC_USE_CLAMP_TO_BORDER_normalTex)!=0);
}
#endif
float l9_66=l9_57;
float l9_67=l9_64;
sc_ClampUV(l9_66,normalTexUvMinMax.y,normalTexUvMinMax.w,l9_65,l9_67);
l9_59=l9_67;
l9_58=vec2(l9_63,l9_66);
}
#else
{
l9_59=1.0;
l9_58=vec2(l9_55,l9_57);
}
#endif
vec2 l9_68=sc_TransformUV(l9_58,(int(SC_USE_UV_TRANSFORM_normalTex)!=0),normalTexTransform);
float l9_69=l9_68.x;
float l9_70=l9_59;
sc_SoftwareWrapLate(l9_69,ivec2(SC_SOFTWARE_WRAP_MODE_U_normalTex,SC_SOFTWARE_WRAP_MODE_V_normalTex).x,l9_53,l9_70);
float l9_71=l9_68.y;
float l9_72=l9_70;
sc_SoftwareWrapLate(l9_71,ivec2(SC_SOFTWARE_WRAP_MODE_U_normalTex,SC_SOFTWARE_WRAP_MODE_V_normalTex).y,l9_53,l9_72);
float l9_73=l9_72;
vec3 l9_74=sc_SamplingCoordsViewToGlobal(vec2(l9_69,l9_71),normalTexLayout,normalTexGetStereoViewIndex());
vec4 l9_75=texture(normalTexArrSC,l9_74,0.0);
vec4 l9_76;
#if (SC_USE_CLAMP_TO_BORDER_normalTex)
{
l9_76=mix(normalTexBorderColor,l9_75,vec4(l9_73));
}
#else
{
l9_76=l9_75;
}
#endif
l9_52=l9_76;
}
#else
{
bool l9_77=(int(SC_USE_CLAMP_TO_BORDER_normalTex)!=0)&&(!(int(SC_USE_UV_MIN_MAX_normalTex)!=0));
float l9_78=l9_2.x;
sc_SoftwareWrapEarly(l9_78,ivec2(SC_SOFTWARE_WRAP_MODE_U_normalTex,SC_SOFTWARE_WRAP_MODE_V_normalTex).x);
float l9_79=l9_78;
float l9_80=l9_2.y;
sc_SoftwareWrapEarly(l9_80,ivec2(SC_SOFTWARE_WRAP_MODE_U_normalTex,SC_SOFTWARE_WRAP_MODE_V_normalTex).y);
float l9_81=l9_80;
vec2 l9_82;
float l9_83;
#if (SC_USE_UV_MIN_MAX_normalTex)
{
bool l9_84;
#if (SC_USE_CLAMP_TO_BORDER_normalTex)
{
l9_84=ivec2(SC_SOFTWARE_WRAP_MODE_U_normalTex,SC_SOFTWARE_WRAP_MODE_V_normalTex).x==3;
}
#else
{
l9_84=(int(SC_USE_CLAMP_TO_BORDER_normalTex)!=0);
}
#endif
float l9_85=l9_79;
float l9_86=1.0;
sc_ClampUV(l9_85,normalTexUvMinMax.x,normalTexUvMinMax.z,l9_84,l9_86);
float l9_87=l9_85;
float l9_88=l9_86;
bool l9_89;
#if (SC_USE_CLAMP_TO_BORDER_normalTex)
{
l9_89=ivec2(SC_SOFTWARE_WRAP_MODE_U_normalTex,SC_SOFTWARE_WRAP_MODE_V_normalTex).y==3;
}
#else
{
l9_89=(int(SC_USE_CLAMP_TO_BORDER_normalTex)!=0);
}
#endif
float l9_90=l9_81;
float l9_91=l9_88;
sc_ClampUV(l9_90,normalTexUvMinMax.y,normalTexUvMinMax.w,l9_89,l9_91);
l9_83=l9_91;
l9_82=vec2(l9_87,l9_90);
}
#else
{
l9_83=1.0;
l9_82=vec2(l9_79,l9_81);
}
#endif
vec2 l9_92=sc_TransformUV(l9_82,(int(SC_USE_UV_TRANSFORM_normalTex)!=0),normalTexTransform);
float l9_93=l9_92.x;
float l9_94=l9_83;
sc_SoftwareWrapLate(l9_93,ivec2(SC_SOFTWARE_WRAP_MODE_U_normalTex,SC_SOFTWARE_WRAP_MODE_V_normalTex).x,l9_77,l9_94);
float l9_95=l9_92.y;
float l9_96=l9_94;
sc_SoftwareWrapLate(l9_95,ivec2(SC_SOFTWARE_WRAP_MODE_U_normalTex,SC_SOFTWARE_WRAP_MODE_V_normalTex).y,l9_77,l9_96);
float l9_97=l9_96;
vec3 l9_98=sc_SamplingCoordsViewToGlobal(vec2(l9_93,l9_95),normalTexLayout,normalTexGetStereoViewIndex());
vec4 l9_99=texture(normalTex,l9_98.xy,0.0);
vec4 l9_100;
#if (SC_USE_CLAMP_TO_BORDER_normalTex)
{
l9_100=mix(normalTexBorderColor,l9_99,vec4(l9_97));
}
#else
{
l9_100=l9_99;
}
#endif
l9_52=l9_100;
}
#endif
vec4 l9_101;
#if (materialParamsTexLayout==2)
{
bool l9_102=(int(SC_USE_CLAMP_TO_BORDER_materialParamsTex)!=0)&&(!(int(SC_USE_UV_MIN_MAX_materialParamsTex)!=0));
float l9_103=l9_2.x;
sc_SoftwareWrapEarly(l9_103,ivec2(SC_SOFTWARE_WRAP_MODE_U_materialParamsTex,SC_SOFTWARE_WRAP_MODE_V_materialParamsTex).x);
float l9_104=l9_103;
float l9_105=l9_2.y;
sc_SoftwareWrapEarly(l9_105,ivec2(SC_SOFTWARE_WRAP_MODE_U_materialParamsTex,SC_SOFTWARE_WRAP_MODE_V_materialParamsTex).y);
float l9_106=l9_105;
vec2 l9_107;
float l9_108;
#if (SC_USE_UV_MIN_MAX_materialParamsTex)
{
bool l9_109;
#if (SC_USE_CLAMP_TO_BORDER_materialParamsTex)
{
l9_109=ivec2(SC_SOFTWARE_WRAP_MODE_U_materialParamsTex,SC_SOFTWARE_WRAP_MODE_V_materialParamsTex).x==3;
}
#else
{
l9_109=(int(SC_USE_CLAMP_TO_BORDER_materialParamsTex)!=0);
}
#endif
float l9_110=l9_104;
float l9_111=1.0;
sc_ClampUV(l9_110,materialParamsTexUvMinMax.x,materialParamsTexUvMinMax.z,l9_109,l9_111);
float l9_112=l9_110;
float l9_113=l9_111;
bool l9_114;
#if (SC_USE_CLAMP_TO_BORDER_materialParamsTex)
{
l9_114=ivec2(SC_SOFTWARE_WRAP_MODE_U_materialParamsTex,SC_SOFTWARE_WRAP_MODE_V_materialParamsTex).y==3;
}
#else
{
l9_114=(int(SC_USE_CLAMP_TO_BORDER_materialParamsTex)!=0);
}
#endif
float l9_115=l9_106;
float l9_116=l9_113;
sc_ClampUV(l9_115,materialParamsTexUvMinMax.y,materialParamsTexUvMinMax.w,l9_114,l9_116);
l9_108=l9_116;
l9_107=vec2(l9_112,l9_115);
}
#else
{
l9_108=1.0;
l9_107=vec2(l9_104,l9_106);
}
#endif
vec2 l9_117=sc_TransformUV(l9_107,(int(SC_USE_UV_TRANSFORM_materialParamsTex)!=0),materialParamsTexTransform);
float l9_118=l9_117.x;
float l9_119=l9_108;
sc_SoftwareWrapLate(l9_118,ivec2(SC_SOFTWARE_WRAP_MODE_U_materialParamsTex,SC_SOFTWARE_WRAP_MODE_V_materialParamsTex).x,l9_102,l9_119);
float l9_120=l9_117.y;
float l9_121=l9_119;
sc_SoftwareWrapLate(l9_120,ivec2(SC_SOFTWARE_WRAP_MODE_U_materialParamsTex,SC_SOFTWARE_WRAP_MODE_V_materialParamsTex).y,l9_102,l9_121);
float l9_122=l9_121;
vec3 l9_123=sc_SamplingCoordsViewToGlobal(vec2(l9_118,l9_120),materialParamsTexLayout,materialParamsTexGetStereoViewIndex());
vec4 l9_124=texture(materialParamsTexArrSC,l9_123,0.0);
vec4 l9_125;
#if (SC_USE_CLAMP_TO_BORDER_materialParamsTex)
{
l9_125=mix(materialParamsTexBorderColor,l9_124,vec4(l9_122));
}
#else
{
l9_125=l9_124;
}
#endif
l9_101=l9_125;
}
#else
{
bool l9_126=(int(SC_USE_CLAMP_TO_BORDER_materialParamsTex)!=0)&&(!(int(SC_USE_UV_MIN_MAX_materialParamsTex)!=0));
float l9_127=l9_2.x;
sc_SoftwareWrapEarly(l9_127,ivec2(SC_SOFTWARE_WRAP_MODE_U_materialParamsTex,SC_SOFTWARE_WRAP_MODE_V_materialParamsTex).x);
float l9_128=l9_127;
float l9_129=l9_2.y;
sc_SoftwareWrapEarly(l9_129,ivec2(SC_SOFTWARE_WRAP_MODE_U_materialParamsTex,SC_SOFTWARE_WRAP_MODE_V_materialParamsTex).y);
float l9_130=l9_129;
vec2 l9_131;
float l9_132;
#if (SC_USE_UV_MIN_MAX_materialParamsTex)
{
bool l9_133;
#if (SC_USE_CLAMP_TO_BORDER_materialParamsTex)
{
l9_133=ivec2(SC_SOFTWARE_WRAP_MODE_U_materialParamsTex,SC_SOFTWARE_WRAP_MODE_V_materialParamsTex).x==3;
}
#else
{
l9_133=(int(SC_USE_CLAMP_TO_BORDER_materialParamsTex)!=0);
}
#endif
float l9_134=l9_128;
float l9_135=1.0;
sc_ClampUV(l9_134,materialParamsTexUvMinMax.x,materialParamsTexUvMinMax.z,l9_133,l9_135);
float l9_136=l9_134;
float l9_137=l9_135;
bool l9_138;
#if (SC_USE_CLAMP_TO_BORDER_materialParamsTex)
{
l9_138=ivec2(SC_SOFTWARE_WRAP_MODE_U_materialParamsTex,SC_SOFTWARE_WRAP_MODE_V_materialParamsTex).y==3;
}
#else
{
l9_138=(int(SC_USE_CLAMP_TO_BORDER_materialParamsTex)!=0);
}
#endif
float l9_139=l9_130;
float l9_140=l9_137;
sc_ClampUV(l9_139,materialParamsTexUvMinMax.y,materialParamsTexUvMinMax.w,l9_138,l9_140);
l9_132=l9_140;
l9_131=vec2(l9_136,l9_139);
}
#else
{
l9_132=1.0;
l9_131=vec2(l9_128,l9_130);
}
#endif
vec2 l9_141=sc_TransformUV(l9_131,(int(SC_USE_UV_TRANSFORM_materialParamsTex)!=0),materialParamsTexTransform);
float l9_142=l9_141.x;
float l9_143=l9_132;
sc_SoftwareWrapLate(l9_142,ivec2(SC_SOFTWARE_WRAP_MODE_U_materialParamsTex,SC_SOFTWARE_WRAP_MODE_V_materialParamsTex).x,l9_126,l9_143);
float l9_144=l9_141.y;
float l9_145=l9_143;
sc_SoftwareWrapLate(l9_144,ivec2(SC_SOFTWARE_WRAP_MODE_U_materialParamsTex,SC_SOFTWARE_WRAP_MODE_V_materialParamsTex).y,l9_126,l9_145);
float l9_146=l9_145;
vec3 l9_147=sc_SamplingCoordsViewToGlobal(vec2(l9_142,l9_144),materialParamsTexLayout,materialParamsTexGetStereoViewIndex());
vec4 l9_148=texture(materialParamsTex,l9_147.xy,0.0);
vec4 l9_149;
#if (SC_USE_CLAMP_TO_BORDER_materialParamsTex)
{
l9_149=mix(materialParamsTexBorderColor,l9_148,vec4(l9_146));
}
#else
{
l9_149=l9_148;
}
#endif
l9_101=l9_149;
}
#endif
vec3 l9_150;
#if (!sc_ProjectiveShadowsCaster)
{
l9_150=mat3(l9_0,cross(l9_1,l9_0)*varTangent.w,l9_1)*((l9_52.xyz*1.9921875)-vec3(1.0)).xyz;
}
#else
{
l9_150=vec3(0.0);
}
#endif
float l9_151=clamp(l9_3.w,0.0,1.0);
#if (sc_BlendMode_AlphaTest)
{
if (l9_151<alphaTestThreshold)
{
discard;
}
}
#endif
#if (ENABLE_STIPPLE_PATTERN_TEST)
{
if (l9_151<((mod(dot(floor(mod(gl_FragCoord.xy,vec2(4.0))),vec2(4.0,1.0))*9.0,16.0)+1.0)/17.0))
{
discard;
}
}
#endif
if (dot(normalize(sc_Camera.position-varPos),l9_150)>=(-0.050000001))
{
uvec3 l9_152=uvec3(round((varPos-OriginNormalizationOffset)*OriginNormalizationScale));
position_and_mask=uvec4(l9_152.x,l9_152.y,l9_152.z,position_and_mask.w);
position_and_mask.w=uint(receiver_mask);
vec3 l9_153=abs(l9_150);
vec3 l9_154=l9_150/vec3(dot(l9_153,vec3(1.0)));
float l9_155=clamp(-l9_154.z,0.0,1.0);
float l9_156=l9_154.x;
float l9_157;
if (l9_156>=0.0)
{
l9_157=l9_155;
}
else
{
l9_157=-l9_155;
}
float l9_158=l9_156+l9_157;
float l9_159=l9_154.y;
float l9_160;
if (l9_159>=0.0)
{
l9_160=l9_155;
}
else
{
l9_160=-l9_155;
}
uvec2 l9_161=uvec2(packHalf2x16(vec2(l9_158,0.0)),packHalf2x16(vec2(l9_159+l9_160,0.0)));
normal_and_more=uvec4(l9_161.x,l9_161.y,normal_and_more.z,normal_and_more.w);
normal_and_more.z=packHalf2x16(vec2(0.0));
uint l9_162;
if (l9_101.y<0.0)
{
l9_162=1023u;
}
else
{
l9_162=uint(clamp(l9_101.y,0.0,1.0)*1000.0);
}
normal_and_more.w=l9_162|uint((receiverId%32)<<int(10u));
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
#ifndef normalTexHasSwappedViews
#define normalTexHasSwappedViews 0
#elif normalTexHasSwappedViews==1
#undef normalTexHasSwappedViews
#define normalTexHasSwappedViews 1
#endif
#ifndef normalTexLayout
#define normalTexLayout 0
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
uniform float uvScale;
uniform mat3 normalTexTransform;
uniform vec4 normalTexUvMinMax;
uniform vec4 normalTexBorderColor;
uniform sc_Camera_t sc_Camera;
uniform vec2 Port_Center_N016;
uniform mat3 baseTexTransform;
uniform vec4 baseTexUvMinMax;
uniform vec4 baseTexBorderColor;
uniform mat3 materialParamsTexTransform;
uniform vec4 materialParamsTexUvMinMax;
uniform vec4 materialParamsTexBorderColor;
uniform vec3 Port_Emissive_N006;
uniform vec3 Port_SpecularAO_N006;
uniform int PreviewEnabled;
uniform usampler2D z_hitIdAndBarycentric;
uniform sampler2D z_rayDirections;
uniform sampler2D baseTex;
uniform sampler2DArray baseTexArrSC;
uniform sampler2D normalTex;
uniform sampler2DArray normalTexArrSC;
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
in vec4 varTangent;
in vec3 varNormal;
in vec4 varPackedTex;
in vec4 varScreenPos;
in vec2 varScreenTexturePos;
in vec4 varColor;
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
float Dggx(float NdotH,float roughness)
{
float l9_0=roughness;
float l9_1=roughness;
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
vec3 getSpecularDominantDir(vec3 N,vec3 R,float roughness)
{
#if (SC_DEVICE_CLASS>=2)
{
return normalize(mix(R,N,vec3((roughness*roughness)*roughness)));
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
vec4 ngsCalculateLighting(vec3 albedo,float opacity,vec3 normal,vec3 position,vec3 viewDir,vec3 emissive,float metallic,float roughness,vec3 ao,vec3 specularAO)
{
float l9_0=opacity;
vec3 l9_1=ssSRGB_to_Linear(albedo);
vec3 l9_2=normal;
vec3 l9_3=normalize(l9_2);
vec3 l9_4=position;
vec3 l9_5=viewDir;
vec3 l9_6=ssSRGB_to_Linear(emissive);
float l9_7=metallic;
float l9_8=roughness;
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
vec3 l9_1;
vec3 l9_2;
vec3 l9_3;
vec3 l9_4;
vec3 l9_5;
if (isProxyMode)
{
RayHitPayload l9_6=GetHitData(ivec2(gl_FragCoord.xy));
vec3 l9_7=l9_6.normalWS;
vec4 l9_8=l9_6.tangentWS;
if (noEarlyZ)
{
if (l9_6.id.x!=uint(instance_id))
{
return;
}
}
vec3 l9_9=l9_8.xyz;
l9_5=l9_6.viewDirWS;
l9_4=l9_6.positionWS;
l9_3=l9_9;
l9_2=l9_7;
l9_1=cross(l9_7,l9_9)*l9_8.w;
l9_0=l9_6.uv0;
}
else
{
vec3 l9_10=normalize(varTangent.xyz);
vec3 l9_11=normalize(varNormal);
l9_5=normalize(sc_Camera.position-varPos);
l9_4=varPos;
l9_3=l9_10;
l9_2=l9_11;
l9_1=cross(l9_11,l9_10)*varTangent.w;
l9_0=varPackedTex.xy;
}
vec2 l9_12=l9_0-Port_Center_N016;
vec2 l9_13=(l9_12*vec2(uvScale))+Port_Center_N016;
vec4 l9_14;
#if (baseTexLayout==2)
{
bool l9_15=(int(SC_USE_CLAMP_TO_BORDER_baseTex)!=0)&&(!(int(SC_USE_UV_MIN_MAX_baseTex)!=0));
float l9_16=l9_13.x;
sc_SoftwareWrapEarly(l9_16,ivec2(SC_SOFTWARE_WRAP_MODE_U_baseTex,SC_SOFTWARE_WRAP_MODE_V_baseTex).x);
float l9_17=l9_16;
float l9_18=l9_13.y;
sc_SoftwareWrapEarly(l9_18,ivec2(SC_SOFTWARE_WRAP_MODE_U_baseTex,SC_SOFTWARE_WRAP_MODE_V_baseTex).y);
float l9_19=l9_18;
vec2 l9_20;
float l9_21;
#if (SC_USE_UV_MIN_MAX_baseTex)
{
bool l9_22;
#if (SC_USE_CLAMP_TO_BORDER_baseTex)
{
l9_22=ivec2(SC_SOFTWARE_WRAP_MODE_U_baseTex,SC_SOFTWARE_WRAP_MODE_V_baseTex).x==3;
}
#else
{
l9_22=(int(SC_USE_CLAMP_TO_BORDER_baseTex)!=0);
}
#endif
float l9_23=l9_17;
float l9_24=1.0;
sc_ClampUV(l9_23,baseTexUvMinMax.x,baseTexUvMinMax.z,l9_22,l9_24);
float l9_25=l9_23;
float l9_26=l9_24;
bool l9_27;
#if (SC_USE_CLAMP_TO_BORDER_baseTex)
{
l9_27=ivec2(SC_SOFTWARE_WRAP_MODE_U_baseTex,SC_SOFTWARE_WRAP_MODE_V_baseTex).y==3;
}
#else
{
l9_27=(int(SC_USE_CLAMP_TO_BORDER_baseTex)!=0);
}
#endif
float l9_28=l9_19;
float l9_29=l9_26;
sc_ClampUV(l9_28,baseTexUvMinMax.y,baseTexUvMinMax.w,l9_27,l9_29);
l9_21=l9_29;
l9_20=vec2(l9_25,l9_28);
}
#else
{
l9_21=1.0;
l9_20=vec2(l9_17,l9_19);
}
#endif
vec2 l9_30=sc_TransformUV(l9_20,(int(SC_USE_UV_TRANSFORM_baseTex)!=0),baseTexTransform);
float l9_31=l9_30.x;
float l9_32=l9_21;
sc_SoftwareWrapLate(l9_31,ivec2(SC_SOFTWARE_WRAP_MODE_U_baseTex,SC_SOFTWARE_WRAP_MODE_V_baseTex).x,l9_15,l9_32);
float l9_33=l9_30.y;
float l9_34=l9_32;
sc_SoftwareWrapLate(l9_33,ivec2(SC_SOFTWARE_WRAP_MODE_U_baseTex,SC_SOFTWARE_WRAP_MODE_V_baseTex).y,l9_15,l9_34);
float l9_35=l9_34;
vec3 l9_36=sc_SamplingCoordsViewToGlobal(vec2(l9_31,l9_33),baseTexLayout,baseTexGetStereoViewIndex());
vec4 l9_37=texture(baseTexArrSC,l9_36,0.0);
vec4 l9_38;
#if (SC_USE_CLAMP_TO_BORDER_baseTex)
{
l9_38=mix(baseTexBorderColor,l9_37,vec4(l9_35));
}
#else
{
l9_38=l9_37;
}
#endif
l9_14=l9_38;
}
#else
{
bool l9_39=(int(SC_USE_CLAMP_TO_BORDER_baseTex)!=0)&&(!(int(SC_USE_UV_MIN_MAX_baseTex)!=0));
float l9_40=l9_13.x;
sc_SoftwareWrapEarly(l9_40,ivec2(SC_SOFTWARE_WRAP_MODE_U_baseTex,SC_SOFTWARE_WRAP_MODE_V_baseTex).x);
float l9_41=l9_40;
float l9_42=l9_13.y;
sc_SoftwareWrapEarly(l9_42,ivec2(SC_SOFTWARE_WRAP_MODE_U_baseTex,SC_SOFTWARE_WRAP_MODE_V_baseTex).y);
float l9_43=l9_42;
vec2 l9_44;
float l9_45;
#if (SC_USE_UV_MIN_MAX_baseTex)
{
bool l9_46;
#if (SC_USE_CLAMP_TO_BORDER_baseTex)
{
l9_46=ivec2(SC_SOFTWARE_WRAP_MODE_U_baseTex,SC_SOFTWARE_WRAP_MODE_V_baseTex).x==3;
}
#else
{
l9_46=(int(SC_USE_CLAMP_TO_BORDER_baseTex)!=0);
}
#endif
float l9_47=l9_41;
float l9_48=1.0;
sc_ClampUV(l9_47,baseTexUvMinMax.x,baseTexUvMinMax.z,l9_46,l9_48);
float l9_49=l9_47;
float l9_50=l9_48;
bool l9_51;
#if (SC_USE_CLAMP_TO_BORDER_baseTex)
{
l9_51=ivec2(SC_SOFTWARE_WRAP_MODE_U_baseTex,SC_SOFTWARE_WRAP_MODE_V_baseTex).y==3;
}
#else
{
l9_51=(int(SC_USE_CLAMP_TO_BORDER_baseTex)!=0);
}
#endif
float l9_52=l9_43;
float l9_53=l9_50;
sc_ClampUV(l9_52,baseTexUvMinMax.y,baseTexUvMinMax.w,l9_51,l9_53);
l9_45=l9_53;
l9_44=vec2(l9_49,l9_52);
}
#else
{
l9_45=1.0;
l9_44=vec2(l9_41,l9_43);
}
#endif
vec2 l9_54=sc_TransformUV(l9_44,(int(SC_USE_UV_TRANSFORM_baseTex)!=0),baseTexTransform);
float l9_55=l9_54.x;
float l9_56=l9_45;
sc_SoftwareWrapLate(l9_55,ivec2(SC_SOFTWARE_WRAP_MODE_U_baseTex,SC_SOFTWARE_WRAP_MODE_V_baseTex).x,l9_39,l9_56);
float l9_57=l9_54.y;
float l9_58=l9_56;
sc_SoftwareWrapLate(l9_57,ivec2(SC_SOFTWARE_WRAP_MODE_U_baseTex,SC_SOFTWARE_WRAP_MODE_V_baseTex).y,l9_39,l9_58);
float l9_59=l9_58;
vec3 l9_60=sc_SamplingCoordsViewToGlobal(vec2(l9_55,l9_57),baseTexLayout,baseTexGetStereoViewIndex());
vec4 l9_61=texture(baseTex,l9_60.xy,0.0);
vec4 l9_62;
#if (SC_USE_CLAMP_TO_BORDER_baseTex)
{
l9_62=mix(baseTexBorderColor,l9_61,vec4(l9_59));
}
#else
{
l9_62=l9_61;
}
#endif
l9_14=l9_62;
}
#endif
vec4 l9_63;
#if (normalTexLayout==2)
{
bool l9_64=(int(SC_USE_CLAMP_TO_BORDER_normalTex)!=0)&&(!(int(SC_USE_UV_MIN_MAX_normalTex)!=0));
float l9_65=l9_13.x;
sc_SoftwareWrapEarly(l9_65,ivec2(SC_SOFTWARE_WRAP_MODE_U_normalTex,SC_SOFTWARE_WRAP_MODE_V_normalTex).x);
float l9_66=l9_65;
float l9_67=l9_13.y;
sc_SoftwareWrapEarly(l9_67,ivec2(SC_SOFTWARE_WRAP_MODE_U_normalTex,SC_SOFTWARE_WRAP_MODE_V_normalTex).y);
float l9_68=l9_67;
vec2 l9_69;
float l9_70;
#if (SC_USE_UV_MIN_MAX_normalTex)
{
bool l9_71;
#if (SC_USE_CLAMP_TO_BORDER_normalTex)
{
l9_71=ivec2(SC_SOFTWARE_WRAP_MODE_U_normalTex,SC_SOFTWARE_WRAP_MODE_V_normalTex).x==3;
}
#else
{
l9_71=(int(SC_USE_CLAMP_TO_BORDER_normalTex)!=0);
}
#endif
float l9_72=l9_66;
float l9_73=1.0;
sc_ClampUV(l9_72,normalTexUvMinMax.x,normalTexUvMinMax.z,l9_71,l9_73);
float l9_74=l9_72;
float l9_75=l9_73;
bool l9_76;
#if (SC_USE_CLAMP_TO_BORDER_normalTex)
{
l9_76=ivec2(SC_SOFTWARE_WRAP_MODE_U_normalTex,SC_SOFTWARE_WRAP_MODE_V_normalTex).y==3;
}
#else
{
l9_76=(int(SC_USE_CLAMP_TO_BORDER_normalTex)!=0);
}
#endif
float l9_77=l9_68;
float l9_78=l9_75;
sc_ClampUV(l9_77,normalTexUvMinMax.y,normalTexUvMinMax.w,l9_76,l9_78);
l9_70=l9_78;
l9_69=vec2(l9_74,l9_77);
}
#else
{
l9_70=1.0;
l9_69=vec2(l9_66,l9_68);
}
#endif
vec2 l9_79=sc_TransformUV(l9_69,(int(SC_USE_UV_TRANSFORM_normalTex)!=0),normalTexTransform);
float l9_80=l9_79.x;
float l9_81=l9_70;
sc_SoftwareWrapLate(l9_80,ivec2(SC_SOFTWARE_WRAP_MODE_U_normalTex,SC_SOFTWARE_WRAP_MODE_V_normalTex).x,l9_64,l9_81);
float l9_82=l9_79.y;
float l9_83=l9_81;
sc_SoftwareWrapLate(l9_82,ivec2(SC_SOFTWARE_WRAP_MODE_U_normalTex,SC_SOFTWARE_WRAP_MODE_V_normalTex).y,l9_64,l9_83);
float l9_84=l9_83;
vec3 l9_85=sc_SamplingCoordsViewToGlobal(vec2(l9_80,l9_82),normalTexLayout,normalTexGetStereoViewIndex());
vec4 l9_86=texture(normalTexArrSC,l9_85,0.0);
vec4 l9_87;
#if (SC_USE_CLAMP_TO_BORDER_normalTex)
{
l9_87=mix(normalTexBorderColor,l9_86,vec4(l9_84));
}
#else
{
l9_87=l9_86;
}
#endif
l9_63=l9_87;
}
#else
{
bool l9_88=(int(SC_USE_CLAMP_TO_BORDER_normalTex)!=0)&&(!(int(SC_USE_UV_MIN_MAX_normalTex)!=0));
float l9_89=l9_13.x;
sc_SoftwareWrapEarly(l9_89,ivec2(SC_SOFTWARE_WRAP_MODE_U_normalTex,SC_SOFTWARE_WRAP_MODE_V_normalTex).x);
float l9_90=l9_89;
float l9_91=l9_13.y;
sc_SoftwareWrapEarly(l9_91,ivec2(SC_SOFTWARE_WRAP_MODE_U_normalTex,SC_SOFTWARE_WRAP_MODE_V_normalTex).y);
float l9_92=l9_91;
vec2 l9_93;
float l9_94;
#if (SC_USE_UV_MIN_MAX_normalTex)
{
bool l9_95;
#if (SC_USE_CLAMP_TO_BORDER_normalTex)
{
l9_95=ivec2(SC_SOFTWARE_WRAP_MODE_U_normalTex,SC_SOFTWARE_WRAP_MODE_V_normalTex).x==3;
}
#else
{
l9_95=(int(SC_USE_CLAMP_TO_BORDER_normalTex)!=0);
}
#endif
float l9_96=l9_90;
float l9_97=1.0;
sc_ClampUV(l9_96,normalTexUvMinMax.x,normalTexUvMinMax.z,l9_95,l9_97);
float l9_98=l9_96;
float l9_99=l9_97;
bool l9_100;
#if (SC_USE_CLAMP_TO_BORDER_normalTex)
{
l9_100=ivec2(SC_SOFTWARE_WRAP_MODE_U_normalTex,SC_SOFTWARE_WRAP_MODE_V_normalTex).y==3;
}
#else
{
l9_100=(int(SC_USE_CLAMP_TO_BORDER_normalTex)!=0);
}
#endif
float l9_101=l9_92;
float l9_102=l9_99;
sc_ClampUV(l9_101,normalTexUvMinMax.y,normalTexUvMinMax.w,l9_100,l9_102);
l9_94=l9_102;
l9_93=vec2(l9_98,l9_101);
}
#else
{
l9_94=1.0;
l9_93=vec2(l9_90,l9_92);
}
#endif
vec2 l9_103=sc_TransformUV(l9_93,(int(SC_USE_UV_TRANSFORM_normalTex)!=0),normalTexTransform);
float l9_104=l9_103.x;
float l9_105=l9_94;
sc_SoftwareWrapLate(l9_104,ivec2(SC_SOFTWARE_WRAP_MODE_U_normalTex,SC_SOFTWARE_WRAP_MODE_V_normalTex).x,l9_88,l9_105);
float l9_106=l9_103.y;
float l9_107=l9_105;
sc_SoftwareWrapLate(l9_106,ivec2(SC_SOFTWARE_WRAP_MODE_U_normalTex,SC_SOFTWARE_WRAP_MODE_V_normalTex).y,l9_88,l9_107);
float l9_108=l9_107;
vec3 l9_109=sc_SamplingCoordsViewToGlobal(vec2(l9_104,l9_106),normalTexLayout,normalTexGetStereoViewIndex());
vec4 l9_110=texture(normalTex,l9_109.xy,0.0);
vec4 l9_111;
#if (SC_USE_CLAMP_TO_BORDER_normalTex)
{
l9_111=mix(normalTexBorderColor,l9_110,vec4(l9_108));
}
#else
{
l9_111=l9_110;
}
#endif
l9_63=l9_111;
}
#endif
vec4 l9_112;
#if (materialParamsTexLayout==2)
{
bool l9_113=(int(SC_USE_CLAMP_TO_BORDER_materialParamsTex)!=0)&&(!(int(SC_USE_UV_MIN_MAX_materialParamsTex)!=0));
float l9_114=l9_13.x;
sc_SoftwareWrapEarly(l9_114,ivec2(SC_SOFTWARE_WRAP_MODE_U_materialParamsTex,SC_SOFTWARE_WRAP_MODE_V_materialParamsTex).x);
float l9_115=l9_114;
float l9_116=l9_13.y;
sc_SoftwareWrapEarly(l9_116,ivec2(SC_SOFTWARE_WRAP_MODE_U_materialParamsTex,SC_SOFTWARE_WRAP_MODE_V_materialParamsTex).y);
float l9_117=l9_116;
vec2 l9_118;
float l9_119;
#if (SC_USE_UV_MIN_MAX_materialParamsTex)
{
bool l9_120;
#if (SC_USE_CLAMP_TO_BORDER_materialParamsTex)
{
l9_120=ivec2(SC_SOFTWARE_WRAP_MODE_U_materialParamsTex,SC_SOFTWARE_WRAP_MODE_V_materialParamsTex).x==3;
}
#else
{
l9_120=(int(SC_USE_CLAMP_TO_BORDER_materialParamsTex)!=0);
}
#endif
float l9_121=l9_115;
float l9_122=1.0;
sc_ClampUV(l9_121,materialParamsTexUvMinMax.x,materialParamsTexUvMinMax.z,l9_120,l9_122);
float l9_123=l9_121;
float l9_124=l9_122;
bool l9_125;
#if (SC_USE_CLAMP_TO_BORDER_materialParamsTex)
{
l9_125=ivec2(SC_SOFTWARE_WRAP_MODE_U_materialParamsTex,SC_SOFTWARE_WRAP_MODE_V_materialParamsTex).y==3;
}
#else
{
l9_125=(int(SC_USE_CLAMP_TO_BORDER_materialParamsTex)!=0);
}
#endif
float l9_126=l9_117;
float l9_127=l9_124;
sc_ClampUV(l9_126,materialParamsTexUvMinMax.y,materialParamsTexUvMinMax.w,l9_125,l9_127);
l9_119=l9_127;
l9_118=vec2(l9_123,l9_126);
}
#else
{
l9_119=1.0;
l9_118=vec2(l9_115,l9_117);
}
#endif
vec2 l9_128=sc_TransformUV(l9_118,(int(SC_USE_UV_TRANSFORM_materialParamsTex)!=0),materialParamsTexTransform);
float l9_129=l9_128.x;
float l9_130=l9_119;
sc_SoftwareWrapLate(l9_129,ivec2(SC_SOFTWARE_WRAP_MODE_U_materialParamsTex,SC_SOFTWARE_WRAP_MODE_V_materialParamsTex).x,l9_113,l9_130);
float l9_131=l9_128.y;
float l9_132=l9_130;
sc_SoftwareWrapLate(l9_131,ivec2(SC_SOFTWARE_WRAP_MODE_U_materialParamsTex,SC_SOFTWARE_WRAP_MODE_V_materialParamsTex).y,l9_113,l9_132);
float l9_133=l9_132;
vec3 l9_134=sc_SamplingCoordsViewToGlobal(vec2(l9_129,l9_131),materialParamsTexLayout,materialParamsTexGetStereoViewIndex());
vec4 l9_135=texture(materialParamsTexArrSC,l9_134,0.0);
vec4 l9_136;
#if (SC_USE_CLAMP_TO_BORDER_materialParamsTex)
{
l9_136=mix(materialParamsTexBorderColor,l9_135,vec4(l9_133));
}
#else
{
l9_136=l9_135;
}
#endif
l9_112=l9_136;
}
#else
{
bool l9_137=(int(SC_USE_CLAMP_TO_BORDER_materialParamsTex)!=0)&&(!(int(SC_USE_UV_MIN_MAX_materialParamsTex)!=0));
float l9_138=l9_13.x;
sc_SoftwareWrapEarly(l9_138,ivec2(SC_SOFTWARE_WRAP_MODE_U_materialParamsTex,SC_SOFTWARE_WRAP_MODE_V_materialParamsTex).x);
float l9_139=l9_138;
float l9_140=l9_13.y;
sc_SoftwareWrapEarly(l9_140,ivec2(SC_SOFTWARE_WRAP_MODE_U_materialParamsTex,SC_SOFTWARE_WRAP_MODE_V_materialParamsTex).y);
float l9_141=l9_140;
vec2 l9_142;
float l9_143;
#if (SC_USE_UV_MIN_MAX_materialParamsTex)
{
bool l9_144;
#if (SC_USE_CLAMP_TO_BORDER_materialParamsTex)
{
l9_144=ivec2(SC_SOFTWARE_WRAP_MODE_U_materialParamsTex,SC_SOFTWARE_WRAP_MODE_V_materialParamsTex).x==3;
}
#else
{
l9_144=(int(SC_USE_CLAMP_TO_BORDER_materialParamsTex)!=0);
}
#endif
float l9_145=l9_139;
float l9_146=1.0;
sc_ClampUV(l9_145,materialParamsTexUvMinMax.x,materialParamsTexUvMinMax.z,l9_144,l9_146);
float l9_147=l9_145;
float l9_148=l9_146;
bool l9_149;
#if (SC_USE_CLAMP_TO_BORDER_materialParamsTex)
{
l9_149=ivec2(SC_SOFTWARE_WRAP_MODE_U_materialParamsTex,SC_SOFTWARE_WRAP_MODE_V_materialParamsTex).y==3;
}
#else
{
l9_149=(int(SC_USE_CLAMP_TO_BORDER_materialParamsTex)!=0);
}
#endif
float l9_150=l9_141;
float l9_151=l9_148;
sc_ClampUV(l9_150,materialParamsTexUvMinMax.y,materialParamsTexUvMinMax.w,l9_149,l9_151);
l9_143=l9_151;
l9_142=vec2(l9_147,l9_150);
}
#else
{
l9_143=1.0;
l9_142=vec2(l9_139,l9_141);
}
#endif
vec2 l9_152=sc_TransformUV(l9_142,(int(SC_USE_UV_TRANSFORM_materialParamsTex)!=0),materialParamsTexTransform);
float l9_153=l9_152.x;
float l9_154=l9_143;
sc_SoftwareWrapLate(l9_153,ivec2(SC_SOFTWARE_WRAP_MODE_U_materialParamsTex,SC_SOFTWARE_WRAP_MODE_V_materialParamsTex).x,l9_137,l9_154);
float l9_155=l9_152.y;
float l9_156=l9_154;
sc_SoftwareWrapLate(l9_155,ivec2(SC_SOFTWARE_WRAP_MODE_U_materialParamsTex,SC_SOFTWARE_WRAP_MODE_V_materialParamsTex).y,l9_137,l9_156);
float l9_157=l9_156;
vec3 l9_158=sc_SamplingCoordsViewToGlobal(vec2(l9_153,l9_155),materialParamsTexLayout,materialParamsTexGetStereoViewIndex());
vec4 l9_159=texture(materialParamsTex,l9_158.xy,0.0);
vec4 l9_160;
#if (SC_USE_CLAMP_TO_BORDER_materialParamsTex)
{
l9_160=mix(materialParamsTexBorderColor,l9_159,vec4(l9_157));
}
#else
{
l9_160=l9_159;
}
#endif
l9_112=l9_160;
}
#endif
vec3 l9_161;
#if (!sc_ProjectiveShadowsCaster)
{
l9_161=mat3(l9_3,l9_1,l9_2)*((l9_63.xyz*1.9921875)-vec3(1.0)).xyz;
}
#else
{
l9_161=vec3(0.0);
}
#endif
float l9_162=clamp(l9_14.w,0.0,1.0);
#if (sc_BlendMode_AlphaTest)
{
if (l9_162<alphaTestThreshold)
{
discard;
}
}
#endif
#if (ENABLE_STIPPLE_PATTERN_TEST)
{
if (l9_162<((mod(dot(floor(mod(gl_FragCoord.xy,vec2(4.0))),vec2(4.0,1.0))*9.0,16.0)+1.0)/17.0))
{
discard;
}
}
#endif
vec3 l9_163=max(l9_14.xyz,vec3(0.0));
vec4 l9_164;
#if (sc_ProjectiveShadowsCaster)
{
l9_164=vec4(l9_163,l9_162);
}
#else
{
l9_164=ngsCalculateLighting(l9_163,l9_162,l9_161,l9_4,l9_5,Port_Emissive_N006,clamp(l9_112.x,0.0,1.0),clamp(l9_112.y,0.0,1.0),clamp(vec3(l9_112.z),vec3(0.0),vec3(1.0)),Port_SpecularAO_N006);
}
#endif
vec4 l9_165=max(l9_164,vec4(0.0));
if (isProxyMode)
{
vec4 l9_166;
#if (sc_ProxyAlphaOne)
{
vec4 l9_167=l9_165;
l9_167.w=1.0;
l9_166=l9_167;
}
#else
{
l9_166=l9_165;
}
#endif
sc_writeFragData0Internal(max(l9_166,vec4(0.0)),sc_UniformConstants.x,sc_ShaderCacheConstant);
return;
}
vec4 l9_168;
#if (sc_ProjectiveShadowsCaster)
{
float l9_169;
#if (((sc_BlendMode_Normal||sc_BlendMode_AlphaToCoverage)||sc_BlendMode_PremultipliedAlphaHardware)||sc_BlendMode_PremultipliedAlphaAuto)
{
l9_169=l9_165.w;
}
#else
{
float l9_170;
#if (sc_BlendMode_PremultipliedAlpha)
{
l9_170=clamp(l9_165.w*2.0,0.0,1.0);
}
#else
{
float l9_171;
#if (sc_BlendMode_AddWithAlphaFactor)
{
l9_171=clamp(dot(l9_165.xyz,vec3(l9_165.w)),0.0,1.0);
}
#else
{
float l9_172;
#if (sc_BlendMode_AlphaTest)
{
l9_172=1.0;
}
#else
{
float l9_173;
#if (sc_BlendMode_Multiply)
{
l9_173=(1.0-dot(l9_165.xyz,vec3(0.33333001)))*l9_165.w;
}
#else
{
float l9_174;
#if (sc_BlendMode_MultiplyOriginal)
{
l9_174=(1.0-clamp(dot(l9_165.xyz,vec3(1.0)),0.0,1.0))*l9_165.w;
}
#else
{
float l9_175;
#if (sc_BlendMode_ColoredGlass)
{
l9_175=clamp(dot(l9_165.xyz,vec3(1.0)),0.0,1.0)*l9_165.w;
}
#else
{
float l9_176;
#if (sc_BlendMode_Add)
{
l9_176=clamp(dot(l9_165.xyz,vec3(1.0)),0.0,1.0);
}
#else
{
float l9_177;
#if (sc_BlendMode_AddWithAlphaFactor)
{
l9_177=clamp(dot(l9_165.xyz,vec3(1.0)),0.0,1.0)*l9_165.w;
}
#else
{
float l9_178;
#if (sc_BlendMode_Screen)
{
l9_178=dot(l9_165.xyz,vec3(0.33333001))*l9_165.w;
}
#else
{
float l9_179;
#if (sc_BlendMode_Min)
{
l9_179=1.0-clamp(dot(l9_165.xyz,vec3(1.0)),0.0,1.0);
}
#else
{
float l9_180;
#if (sc_BlendMode_Max)
{
l9_180=clamp(dot(l9_165.xyz,vec3(1.0)),0.0,1.0);
}
#else
{
l9_180=1.0;
}
#endif
l9_179=l9_180;
}
#endif
l9_178=l9_179;
}
#endif
l9_177=l9_178;
}
#endif
l9_176=l9_177;
}
#endif
l9_175=l9_176;
}
#endif
l9_174=l9_175;
}
#endif
l9_173=l9_174;
}
#endif
l9_172=l9_173;
}
#endif
l9_171=l9_172;
}
#endif
l9_170=l9_171;
}
#endif
l9_169=l9_170;
}
#endif
l9_168=vec4(mix(sc_ShadowColor.xyz,sc_ShadowColor.xyz*l9_165.xyz,vec3(sc_ShadowColor.w)),sc_ShadowDensity*l9_169);
}
#else
{
vec4 l9_181;
#if (sc_RenderAlphaToColor)
{
l9_181=vec4(l9_165.w);
}
#else
{
vec4 l9_182;
#if (sc_BlendMode_Custom)
{
vec3 l9_183=sc_GetFramebufferColor().xyz;
vec3 l9_184=mix(l9_183,definedBlend(l9_183,l9_165.xyz).xyz,vec3(l9_165.w));
vec4 l9_185=vec4(l9_184.x,l9_184.y,l9_184.z,vec4(0.0).w);
l9_185.w=1.0;
l9_182=l9_185;
}
#else
{
vec4 l9_186;
#if (sc_BlendMode_MultiplyOriginal)
{
float l9_187=l9_165.w;
l9_186=vec4(mix(vec3(1.0),l9_165.xyz,vec3(l9_187)),l9_187);
}
#else
{
vec4 l9_188;
#if (sc_BlendMode_Screen||sc_BlendMode_PremultipliedAlphaAuto)
{
float l9_189=l9_165.w;
float l9_190;
#if (sc_BlendMode_PremultipliedAlphaAuto)
{
l9_190=clamp(l9_189,0.0,1.0);
}
#else
{
l9_190=l9_189;
}
#endif
l9_188=vec4(l9_165.xyz*l9_190,l9_190);
}
#else
{
l9_188=l9_165;
}
#endif
l9_186=l9_188;
}
#endif
l9_182=l9_186;
}
#endif
l9_181=l9_182;
}
#endif
l9_168=l9_181;
}
#endif
vec4 l9_191;
if (PreviewEnabled==1)
{
vec4 l9_192;
if (((PreviewVertexSaved*1.0)!=0.0) ? true : false)
{
l9_192=PreviewVertexColor;
}
else
{
l9_192=vec4(0.0);
}
l9_191=l9_192;
}
else
{
l9_191=l9_168;
}
vec4 l9_193;
#if (sc_ShaderComplexityAnalyzer)
{
l9_193=vec4(shaderComplexityValue/255.0,0.0,0.0,1.0);
}
#else
{
l9_193=vec4(0.0);
}
#endif
vec4 l9_194;
if (l9_193.w>0.0)
{
l9_194=l9_193;
}
else
{
l9_194=l9_191;
}
vec4 l9_195=outputMotionVectorsIfNeeded(varPos,max(l9_194,vec4(0.0)));
vec4 l9_196=clamp(l9_195,vec4(0.0),vec4(1.0));
#if (sc_OITDepthBoundsPass)
{
#if (sc_OITDepthBoundsPass)
{
float l9_197=clamp(viewSpaceDepth()/1000.0,0.0,1.0);
sc_writeFragData0Internal(vec4(max(0.0,1.0-(l9_197-0.0039215689)),min(1.0,l9_197+0.0039215689),0.0,0.0),sc_UniformConstants.x,sc_ShaderCacheConstant);
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
vec2 l9_198=sc_ScreenCoordsGlobalToView(gl_FragCoord.xy*sc_CurrentRenderTargetDims.zw);
#if (sc_OITMaxLayers4Plus1)
{
if ((gl_FragCoord.z-texture(sc_OITFrontDepthTexture,l9_198).x)<=getFrontLayerZTestEpsilon())
{
discard;
}
}
#endif
int l9_199=encodeDepth(viewSpaceDepth(),texture(sc_OITFilteredDepthBoundsTexture,l9_198).xy);
float l9_200=packValue(l9_199);
int l9_207=int(l9_196.w*255.0);
float l9_208=packValue(l9_207);
sc_writeFragData0Internal(vec4(packValue(l9_199),packValue(l9_199),packValue(l9_199),packValue(l9_199)),sc_UniformConstants.x,sc_ShaderCacheConstant);
sc_writeFragData1(vec4(l9_200,packValue(l9_199),packValue(l9_199),packValue(l9_199)));
sc_writeFragData2(vec4(l9_208,packValue(l9_207),packValue(l9_207),packValue(l9_207)));
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
vec2 l9_211=sc_ScreenCoordsGlobalToView(gl_FragCoord.xy*sc_CurrentRenderTargetDims.zw);
#if (sc_OITMaxLayers4Plus1)
{
if ((gl_FragCoord.z-texture(sc_OITFrontDepthTexture,l9_211).x)<=getFrontLayerZTestEpsilon())
{
discard;
}
}
#endif
int l9_212[8];
int l9_213[8];
int l9_214=0;
for (int snapLoopIndex=0; snapLoopIndex==0; snapLoopIndex+=0)
{
if (l9_214<8)
{
l9_212[l9_214]=0;
l9_213[l9_214]=0;
l9_214++;
continue;
}
else
{
break;
}
}
int l9_215;
#if (sc_OITMaxLayers8)
{
l9_215=2;
}
#else
{
l9_215=1;
}
#endif
int l9_216=0;
for (int snapLoopIndex=0; snapLoopIndex==0; snapLoopIndex+=0)
{
if (l9_216<l9_215)
{
vec4 l9_217;
vec4 l9_218;
vec4 l9_219;
if (l9_216==0)
{
l9_219=texture(sc_OITAlpha0,l9_211);
l9_218=texture(sc_OITDepthLow0,l9_211);
l9_217=texture(sc_OITDepthHigh0,l9_211);
}
else
{
l9_219=vec4(0.0);
l9_218=vec4(0.0);
l9_217=vec4(0.0);
}
vec4 l9_220;
vec4 l9_221;
vec4 l9_222;
if (l9_216==1)
{
l9_222=texture(sc_OITAlpha1,l9_211);
l9_221=texture(sc_OITDepthLow1,l9_211);
l9_220=texture(sc_OITDepthHigh1,l9_211);
}
else
{
l9_222=l9_219;
l9_221=l9_218;
l9_220=l9_217;
}
if (any(notEqual(l9_220,vec4(0.0)))||any(notEqual(l9_221,vec4(0.0))))
{
int l9_223[8]=l9_212;
unpackValues(l9_220.w,l9_216,l9_223);
unpackValues(l9_220.z,l9_216,l9_223);
unpackValues(l9_220.y,l9_216,l9_223);
unpackValues(l9_220.x,l9_216,l9_223);
unpackValues(l9_221.w,l9_216,l9_223);
unpackValues(l9_221.z,l9_216,l9_223);
unpackValues(l9_221.y,l9_216,l9_223);
unpackValues(l9_221.x,l9_216,l9_223);
int l9_232[8]=l9_213;
unpackValues(l9_222.w,l9_216,l9_232);
unpackValues(l9_222.z,l9_216,l9_232);
unpackValues(l9_222.y,l9_216,l9_232);
unpackValues(l9_222.x,l9_216,l9_232);
}
l9_216++;
continue;
}
else
{
break;
}
}
vec4 l9_237=texture(sc_OITFilteredDepthBoundsTexture,l9_211);
vec2 l9_238=l9_237.xy;
int l9_239;
#if (sc_SkinBonesCount>0)
{
l9_239=encodeDepth(((1.0-l9_237.x)*1000.0)+getDepthOrderingEpsilon(),l9_238);
}
#else
{
l9_239=0;
}
#endif
int l9_240=encodeDepth(viewSpaceDepth(),l9_238);
vec4 l9_241;
l9_241=l9_196*l9_196.w;
vec4 l9_242;
int l9_243=0;
for (int snapLoopIndex=0; snapLoopIndex==0; snapLoopIndex+=0)
{
if (l9_243<8)
{
int l9_244=l9_212[l9_243];
int l9_245=l9_240-l9_239;
bool l9_246=l9_244<l9_245;
bool l9_247;
if (l9_246)
{
l9_247=l9_212[l9_243]>0;
}
else
{
l9_247=l9_246;
}
if (l9_247)
{
vec3 l9_248=l9_241.xyz*(1.0-(float(l9_213[l9_243])/255.0));
l9_242=vec4(l9_248.x,l9_248.y,l9_248.z,l9_241.w);
}
else
{
l9_242=l9_241;
}
l9_241=l9_242;
l9_243++;
continue;
}
else
{
break;
}
}
sc_writeFragData0Internal(l9_241,sc_UniformConstants.x,sc_ShaderCacheConstant);
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
sc_writeFragData0Internal(l9_196,sc_UniformConstants.x,sc_ShaderCacheConstant);
}
#endif
}
#else
{
sc_writeFragData0Internal(l9_195,sc_UniformConstants.x,sc_ShaderCacheConstant);
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
