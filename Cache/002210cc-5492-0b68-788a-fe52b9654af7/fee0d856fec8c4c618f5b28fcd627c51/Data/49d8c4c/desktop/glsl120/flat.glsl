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
//sampler sampler baseTexSmpSC 0:17
//sampler sampler intensityTextureSmpSC 0:18
//sampler sampler opacityTexSmpSC 0:19
//sampler sampler sc_OITCommonSampler 0:22
//sampler sampler sc_ScreenTextureSmpSC 0:24
//texture texture2D baseTex 0:0:0:17
//texture texture2D intensityTexture 0:1:0:18
//texture texture2D opacityTex 0:2:0:19
//texture texture2D sc_OITAlpha0 0:5:0:22
//texture texture2D sc_OITAlpha1 0:6:0:22
//texture texture2D sc_OITDepthHigh0 0:7:0:22
//texture texture2D sc_OITDepthHigh1 0:8:0:22
//texture texture2D sc_OITDepthLow0 0:9:0:22
//texture texture2D sc_OITDepthLow1 0:10:0:22
//texture texture2D sc_OITFilteredDepthBoundsTexture 0:11:0:22
//texture texture2D sc_OITFrontDepthTexture 0:12:0:22
//texture texture2D sc_ScreenTexture 0:14:0:24
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
//spec_const bool ENABLE_OPACITY_TEX 31 0
//spec_const bool ENABLE_STIPPLE_PATTERN_TEST 32 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_baseTex 33 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_intensityTexture 34 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_opacityTex 35 0
//spec_const bool SC_USE_UV_MIN_MAX_baseTex 36 0
//spec_const bool SC_USE_UV_MIN_MAX_intensityTexture 37 0
//spec_const bool SC_USE_UV_MIN_MAX_opacityTex 38 0
//spec_const bool SC_USE_UV_TRANSFORM_baseTex 39 0
//spec_const bool SC_USE_UV_TRANSFORM_intensityTexture 40 0
//spec_const bool SC_USE_UV_TRANSFORM_opacityTex 41 0
//spec_const bool Tweak_N11 42 0
//spec_const bool Tweak_N67 43 0
//spec_const bool UseViewSpaceDepthVariant 44 1
//spec_const bool baseTexHasSwappedViews 45 0
//spec_const bool intensityTextureHasSwappedViews 46 0
//spec_const bool opacityTexHasSwappedViews 47 0
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
//spec_const bool sc_FramebufferFetch 65 0
//spec_const bool sc_GetFramebufferColorInvalidUsageMarker 66 0
//spec_const bool sc_IsEditor 67 0
//spec_const bool sc_MotionVectorsPass 68 0
//spec_const bool sc_OITCompositingPass 69 0
//spec_const bool sc_OITDepthBoundsPass 70 0
//spec_const bool sc_OITDepthGatherPass 71 0
//spec_const bool sc_OITDepthPrepass 72 0
//spec_const bool sc_OITFrontLayerPass 73 0
//spec_const bool sc_OITMaxLayers4Plus1 74 0
//spec_const bool sc_OITMaxLayers8 75 0
//spec_const bool sc_OITMaxLayersVisualizeLayerCount 76 0
//spec_const bool sc_ProjectiveShadowsCaster 77 0
//spec_const bool sc_ProjectiveShadowsReceiver 78 0
//spec_const bool sc_RenderAlphaToColor 79 0
//spec_const bool sc_ScreenTextureHasSwappedViews 80 0
//spec_const bool sc_ShaderComplexityAnalyzer 81 0
//spec_const bool sc_TAAEnabled 82 0
//spec_const bool sc_UseFramebufferFetchMarker 83 0
//spec_const bool sc_VertexBlending 84 0
//spec_const bool sc_VertexBlendingUseNormals 85 0
//spec_const bool uv2EnableAnimation 86 0
//spec_const bool uv3EnableAnimation 87 0
//spec_const int NODE_13_DROPLIST_ITEM 88 0
//spec_const int NODE_27_DROPLIST_ITEM 89 0
//spec_const int NODE_49_DROPLIST_ITEM 90 0
//spec_const int NODE_69_DROPLIST_ITEM 91 0
//spec_const int SC_SOFTWARE_WRAP_MODE_U_baseTex 92 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_intensityTexture 93 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_opacityTex 94 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_baseTex 95 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_intensityTexture 96 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_opacityTex 97 -1
//spec_const int baseTexLayout 98 0
//spec_const int intensityTextureLayout 99 0
//spec_const int opacityTexLayout 100 0
//spec_const int sc_DepthBufferMode 101 0
//spec_const int sc_RenderingSpace 102 -1
//spec_const int sc_ScreenTextureLayout 103 0
//spec_const int sc_ShaderCacheConstant 104 0
//spec_const int sc_SkinBonesCount 105 0
//spec_const int sc_StereoRenderingMode 106 0
//spec_const int sc_StereoRendering_IsClipDistanceEnabled 107 0
//spec_const int sc_StereoViewID 108 0
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
uniform mat4 sc_ModelMatrix;
uniform mat4 sc_ProjectorMatrix;
uniform vec2 sc_TAAJitterOffset;
uniform vec4 sc_StereoClipPlanes[sc_NumStereoViews];
uniform vec4 sc_UniformConstants;
uniform vec4 sc_BoneMatrices[((sc_SkinBonesCount*3)+1)];
uniform mat3 sc_SkinBonesNormalMatrices[(sc_SkinBonesCount+1)];
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
varying float varClipDistance;
varying float varStereoViewID;
attribute vec4 boneData;
attribute vec3 blendShape0Pos;
attribute vec3 blendShape0Normal;
attribute vec3 blendShape1Pos;
attribute vec3 blendShape1Normal;
attribute vec3 blendShape2Pos;
attribute vec3 blendShape2Normal;
attribute vec3 blendShape3Pos;
attribute vec3 blendShape4Pos;
attribute vec3 blendShape5Pos;
attribute vec4 position;
attribute vec3 normal;
attribute vec4 tangent;
attribute vec2 texture0;
attribute vec2 texture1;
varying vec3 varPos;
varying vec3 varNormal;
varying vec4 varTangent;
varying vec4 varPackedTex;
varying vec4 varScreenPos;
varying vec2 varScreenTexturePos;
varying vec2 varShadowTex;
varying float varViewSpaceDepth;
varying vec4 varColor;
attribute vec4 color;
varying vec4 PreviewVertexColor;
varying float PreviewVertexSaved;
attribute vec3 positionNext;
attribute vec3 positionPrevious;
attribute vec4 strandProperties;
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
void sc_SetClipDistancePlatform(float dstClipDistance)
{
    #if sc_StereoRenderingMode==sc_StereoRendering_InstancedClipped&&sc_StereoRendering_IsClipDistanceEnabled
        gl_ClipDistance[0]=dstClipDistance;
    #endif
}
void main()
{
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
vec4 l9_48;
#if (sc_ShaderCacheConstant!=0)
{
vec4 l9_49=l9_46;
l9_49.x=l9_46.x+(sc_UniformConstants.x*float(sc_ShaderCacheConstant));
l9_48=l9_49;
}
#else
{
l9_48=l9_46;
}
#endif
#if (sc_StereoRenderingMode>0)
{
varStereoViewID=float(sc_StereoViewID);
}
#endif
#if (sc_StereoRenderingMode==1)
{
float l9_50=dot(l9_48,sc_StereoClipPlanes[sc_StereoViewID]);
#if (sc_StereoRendering_IsClipDistanceEnabled==1)
{
sc_SetClipDistancePlatform(l9_50);
}
#else
{
varClipDistance=l9_50;
}
#endif
}
#endif
gl_Position=l9_48;
}
#elif defined FRAGMENT_SHADER // #if defined VERTEX_SHADER
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
struct ssGlobals
{
float gTimeElapsed;
float gTimeDelta;
float gTimeElapsedShifted;
vec2 Surface_UVCoord0;
vec2 Surface_UVCoord1;
vec2 gScreenCoord;
};
#ifndef sc_StereoRenderingMode
#define sc_StereoRenderingMode 0
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
#ifndef ENABLE_BASE_TEX
#define ENABLE_BASE_TEX 0
#elif ENABLE_BASE_TEX==1
#undef ENABLE_BASE_TEX
#define ENABLE_BASE_TEX 1
#endif
#ifndef uv2EnableAnimation
#define uv2EnableAnimation 0
#elif uv2EnableAnimation==1
#undef uv2EnableAnimation
#define uv2EnableAnimation 1
#endif
#ifndef NODE_13_DROPLIST_ITEM
#define NODE_13_DROPLIST_ITEM 0
#endif
#ifndef Tweak_N67
#define Tweak_N67 0
#elif Tweak_N67==1
#undef Tweak_N67
#define Tweak_N67 1
#endif
#ifndef uv3EnableAnimation
#define uv3EnableAnimation 0
#elif uv3EnableAnimation==1
#undef uv3EnableAnimation
#define uv3EnableAnimation 1
#endif
#ifndef NODE_49_DROPLIST_ITEM
#define NODE_49_DROPLIST_ITEM 0
#endif
#ifndef Tweak_N11
#define Tweak_N11 0
#elif Tweak_N11==1
#undef Tweak_N11
#define Tweak_N11 1
#endif
#ifndef NODE_27_DROPLIST_ITEM
#define NODE_27_DROPLIST_ITEM 0
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
#ifndef ENABLE_OPACITY_TEX
#define ENABLE_OPACITY_TEX 0
#elif ENABLE_OPACITY_TEX==1
#undef ENABLE_OPACITY_TEX
#define ENABLE_OPACITY_TEX 1
#endif
#ifndef NODE_69_DROPLIST_ITEM
#define NODE_69_DROPLIST_ITEM 0
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
#ifndef sc_DepthOnly
#define sc_DepthOnly 0
#elif sc_DepthOnly==1
#undef sc_DepthOnly
#define sc_DepthOnly 1
#endif
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
uniform float correctedIntensity;
uniform mat3 intensityTextureTransform;
uniform vec4 intensityTextureUvMinMax;
uniform vec4 intensityTextureBorderColor;
uniform float alphaTestThreshold;
uniform vec4 baseColor;
uniform vec2 uv2Scale;
uniform vec2 uv2Offset;
uniform float Port_Speed_N022;
uniform vec2 uv3Scale;
uniform vec2 uv3Offset;
uniform float Port_Speed_N063;
uniform mat3 baseTexTransform;
uniform vec4 baseTexUvMinMax;
uniform vec4 baseTexBorderColor;
uniform float opacityMul;
uniform mat3 opacityTexTransform;
uniform vec4 opacityTexUvMinMax;
uniform vec4 opacityTexBorderColor;
uniform vec4 sc_Time;
uniform vec4 Port_Default_N369;
uniform float Port_Default_N204;
uniform int PreviewEnabled;
uniform sampler2D baseTex;
uniform sampler2D opacityTex;
uniform sampler2D sc_ScreenTexture;
uniform sampler2D intensityTexture;
uniform sampler2D sc_OITFrontDepthTexture;
uniform sampler2D sc_OITDepthHigh0;
uniform sampler2D sc_OITDepthLow0;
uniform sampler2D sc_OITAlpha0;
uniform sampler2D sc_OITDepthHigh1;
uniform sampler2D sc_OITDepthLow1;
uniform sampler2D sc_OITAlpha1;
uniform sampler2D sc_OITFilteredDepthBoundsTexture;
varying float varStereoViewID;
varying vec2 varShadowTex;
varying float varClipDistance;
varying float varViewSpaceDepth;
varying vec4 PreviewVertexColor;
varying float PreviewVertexSaved;
varying vec4 varPackedTex;
varying vec3 varPos;
varying vec3 varNormal;
varying vec4 varTangent;
varying vec4 varScreenPos;
varying vec2 varScreenTexturePos;
varying vec4 varColor;
int sc_GetStereoViewIndex()
{
int l9_0;
#if (sc_StereoRenderingMode==0)
{
l9_0=0;
}
#else
{
l9_0=int(varStereoViewID);
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
void Node17_Switch(float Switch,vec2 Value0,vec2 Value1,vec2 Value2,vec2 Default,out vec2 Result,ssGlobals Globals)
{
#if (NODE_13_DROPLIST_ITEM==0)
{
Value0=Globals.Surface_UVCoord0;
Result=Value0;
}
#else
{
#if (NODE_13_DROPLIST_ITEM==1)
{
Value1=Globals.Surface_UVCoord1;
Result=Value1;
}
#else
{
#if (NODE_13_DROPLIST_ITEM==2)
{
Value2=Globals.gScreenCoord;
Result=Value2;
}
#else
{
Default=Globals.Surface_UVCoord0;
Result=Default;
}
#endif
}
#endif
}
#endif
}
void Node122_If_else(float Bool1,vec2 Value1,vec2 Default,out vec2 Result,ssGlobals Globals)
{
#if (uv2EnableAnimation)
{
vec2 param_5;
Node17_Switch(0.0,vec2(0.0),vec2(0.0),vec2(0.0),vec2(0.0),param_5,Globals);
Value1=((param_5*uv2Scale)+uv2Offset)+(uv2Offset*(Globals.gTimeElapsed*Port_Speed_N022));
Result=Value1;
}
#else
{
vec2 param_12;
Node17_Switch(0.0,vec2(0.0),vec2(0.0),vec2(0.0),vec2(0.0),param_12,Globals);
Default=(param_12*uv2Scale)+uv2Offset;
Result=Default;
}
#endif
}
void Node67_Bool_Parameter(out float Output,ssGlobals Globals)
{
#if (Tweak_N67)
{
Output=1.001;
}
#else
{
Output=0.001;
}
#endif
Output-=0.001;
}
void Node59_Switch(float Switch,vec2 Value0,vec2 Value1,vec2 Value2,vec2 Value3,vec2 Default,out vec2 Result,ssGlobals Globals)
{
#if (NODE_49_DROPLIST_ITEM==0)
{
Value0=Globals.Surface_UVCoord0;
Result=Value0;
}
#else
{
#if (NODE_49_DROPLIST_ITEM==1)
{
Value1=Globals.Surface_UVCoord1;
Result=Value1;
}
#else
{
#if (NODE_49_DROPLIST_ITEM==2)
{
Value2=Globals.gScreenCoord;
Result=Value2;
}
#else
{
#if (NODE_49_DROPLIST_ITEM==3)
{
vec2 param_3;
Node122_If_else(0.0,vec2(0.0),vec2(0.0),param_3,Globals);
float param_5;
Node67_Bool_Parameter(param_5,Globals);
Value3=mix(Globals.Surface_UVCoord0,param_3,vec2(param_5));
Result=Value3;
}
#else
{
Default=Globals.Surface_UVCoord0;
Result=Default;
}
#endif
}
#endif
}
#endif
}
#endif
}
void Node64_If_else(float Bool1,vec2 Value1,vec2 Default,out vec2 Result,ssGlobals Globals)
{
#if (uv3EnableAnimation)
{
vec2 param_6;
Node59_Switch(0.0,vec2(0.0),vec2(0.0),vec2(0.0),vec2(0.0),vec2(0.0),param_6,Globals);
Value1=((param_6*uv3Scale)+uv3Offset)+(uv3Offset*(Globals.gTimeElapsed*Port_Speed_N063));
Result=Value1;
}
#else
{
vec2 param_14;
Node59_Switch(0.0,vec2(0.0),vec2(0.0),vec2(0.0),vec2(0.0),vec2(0.0),param_14,Globals);
Default=(param_14*uv3Scale)+uv3Offset;
Result=Default;
}
#endif
}
void Node11_Bool_Parameter(out float Output,ssGlobals Globals)
{
#if (Tweak_N11)
{
Output=1.001;
}
#else
{
Output=0.001;
}
#endif
Output-=0.001;
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
vec4 sc_readFragData0_Platform()
{
    return getFragData()[0];
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
int l9_48;
#if (intensityTextureHasSwappedViews)
{
l9_48=1-sc_GetStereoViewIndex();
}
#else
{
l9_48=sc_GetStereoViewIndex();
}
#endif
bool l9_49=(int(SC_USE_CLAMP_TO_BORDER_intensityTexture)!=0)&&(!(int(SC_USE_UV_MIN_MAX_intensityTexture)!=0));
float l9_50=pow(l9_47,1.0/correctedIntensity);
sc_SoftwareWrapEarly(l9_50,ivec2(SC_SOFTWARE_WRAP_MODE_U_intensityTexture,SC_SOFTWARE_WRAP_MODE_V_intensityTexture).x);
float l9_51=l9_50;
float l9_52=0.5;
sc_SoftwareWrapEarly(l9_52,ivec2(SC_SOFTWARE_WRAP_MODE_U_intensityTexture,SC_SOFTWARE_WRAP_MODE_V_intensityTexture).y);
float l9_53=l9_52;
vec2 l9_54;
float l9_55;
#if (SC_USE_UV_MIN_MAX_intensityTexture)
{
bool l9_56;
#if (SC_USE_CLAMP_TO_BORDER_intensityTexture)
{
l9_56=ivec2(SC_SOFTWARE_WRAP_MODE_U_intensityTexture,SC_SOFTWARE_WRAP_MODE_V_intensityTexture).x==3;
}
#else
{
l9_56=(int(SC_USE_CLAMP_TO_BORDER_intensityTexture)!=0);
}
#endif
float l9_57=l9_51;
float l9_58=1.0;
sc_ClampUV(l9_57,intensityTextureUvMinMax.x,intensityTextureUvMinMax.z,l9_56,l9_58);
float l9_59=l9_57;
float l9_60=l9_58;
bool l9_61;
#if (SC_USE_CLAMP_TO_BORDER_intensityTexture)
{
l9_61=ivec2(SC_SOFTWARE_WRAP_MODE_U_intensityTexture,SC_SOFTWARE_WRAP_MODE_V_intensityTexture).y==3;
}
#else
{
l9_61=(int(SC_USE_CLAMP_TO_BORDER_intensityTexture)!=0);
}
#endif
float l9_62=l9_53;
float l9_63=l9_60;
sc_ClampUV(l9_62,intensityTextureUvMinMax.y,intensityTextureUvMinMax.w,l9_61,l9_63);
l9_55=l9_63;
l9_54=vec2(l9_59,l9_62);
}
#else
{
l9_55=1.0;
l9_54=vec2(l9_51,l9_53);
}
#endif
vec2 l9_64=sc_TransformUV(l9_54,(int(SC_USE_UV_TRANSFORM_intensityTexture)!=0),intensityTextureTransform);
float l9_65=l9_64.x;
float l9_66=l9_55;
sc_SoftwareWrapLate(l9_65,ivec2(SC_SOFTWARE_WRAP_MODE_U_intensityTexture,SC_SOFTWARE_WRAP_MODE_V_intensityTexture).x,l9_49,l9_66);
float l9_67=l9_64.y;
float l9_68=l9_66;
sc_SoftwareWrapLate(l9_67,ivec2(SC_SOFTWARE_WRAP_MODE_U_intensityTexture,SC_SOFTWARE_WRAP_MODE_V_intensityTexture).y,l9_49,l9_68);
float l9_69=l9_68;
vec3 l9_70=sc_SamplingCoordsViewToGlobal(vec2(l9_65,l9_67),intensityTextureLayout,l9_48);
vec4 l9_71=texture2D(intensityTexture,l9_70.xy,0.0);
vec4 l9_72;
#if (SC_USE_CLAMP_TO_BORDER_intensityTexture)
{
l9_72=mix(intensityTextureBorderColor,l9_71,vec4(l9_69));
}
#else
{
l9_72=l9_71;
}
#endif
float l9_73=((((l9_72.x*256.0)+l9_72.y)+(l9_72.z/256.0))/257.00391)*16.0;
float l9_74;
#if (BLEND_MODE_FORGRAY)
{
l9_74=max(l9_73,1.0);
}
#else
{
l9_74=l9_73;
}
#endif
float l9_75;
#if (BLEND_MODE_NOTBRIGHT)
{
l9_75=min(l9_74,1.0);
}
#else
{
l9_75=l9_74;
}
#endif
return transformColor(l9_47,l9_45,l9_46,1.0,l9_75);
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
void sc_writeFragData0Internal(vec4 col,float zero,int cacheConst)
{
    col.x+=zero*float(cacheConst);
    sc_FragData0=col;
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
vec2 l9_0=gl_FragCoord.xy*sc_CurrentRenderTargetDims.zw;
vec2 l9_1=sc_ScreenCoordsGlobalToView(l9_0);
ssGlobals l9_2=ssGlobals(sc_Time.x,sc_Time.y,0.0,varPackedTex.xy,varPackedTex.zw,l9_1);
vec4 l9_3;
#if (ENABLE_BASE_TEX)
{
vec2 l9_4;
#if (NODE_27_DROPLIST_ITEM==0)
{
l9_4=varPackedTex.xy;
}
#else
{
vec2 l9_5;
#if (NODE_27_DROPLIST_ITEM==1)
{
l9_5=varPackedTex.zw;
}
#else
{
vec2 l9_6;
#if (NODE_27_DROPLIST_ITEM==2)
{
vec2 l9_7;
Node122_If_else(0.0,vec2(0.0),vec2(0.0),l9_7,l9_2);
float l9_8;
Node67_Bool_Parameter(l9_8,l9_2);
l9_6=mix(varPackedTex.xy,l9_7,vec2(l9_8));
}
#else
{
vec2 l9_9;
#if (NODE_27_DROPLIST_ITEM==3)
{
vec2 l9_10;
Node64_If_else(0.0,vec2(0.0),vec2(0.0),l9_10,l9_2);
float l9_11;
Node11_Bool_Parameter(l9_11,l9_2);
l9_9=mix(varPackedTex.xy,l9_10,vec2(l9_11));
}
#else
{
l9_9=varPackedTex.xy;
}
#endif
l9_6=l9_9;
}
#endif
l9_5=l9_6;
}
#endif
l9_4=l9_5;
}
#endif
int l9_12;
#if (baseTexHasSwappedViews)
{
l9_12=1-sc_GetStereoViewIndex();
}
#else
{
l9_12=sc_GetStereoViewIndex();
}
#endif
bool l9_13=(int(SC_USE_CLAMP_TO_BORDER_baseTex)!=0)&&(!(int(SC_USE_UV_MIN_MAX_baseTex)!=0));
float l9_14=l9_4.x;
sc_SoftwareWrapEarly(l9_14,ivec2(SC_SOFTWARE_WRAP_MODE_U_baseTex,SC_SOFTWARE_WRAP_MODE_V_baseTex).x);
float l9_15=l9_14;
float l9_16=l9_4.y;
sc_SoftwareWrapEarly(l9_16,ivec2(SC_SOFTWARE_WRAP_MODE_U_baseTex,SC_SOFTWARE_WRAP_MODE_V_baseTex).y);
float l9_17=l9_16;
vec2 l9_18;
float l9_19;
#if (SC_USE_UV_MIN_MAX_baseTex)
{
bool l9_20;
#if (SC_USE_CLAMP_TO_BORDER_baseTex)
{
l9_20=ivec2(SC_SOFTWARE_WRAP_MODE_U_baseTex,SC_SOFTWARE_WRAP_MODE_V_baseTex).x==3;
}
#else
{
l9_20=(int(SC_USE_CLAMP_TO_BORDER_baseTex)!=0);
}
#endif
float l9_21=l9_15;
float l9_22=1.0;
sc_ClampUV(l9_21,baseTexUvMinMax.x,baseTexUvMinMax.z,l9_20,l9_22);
float l9_23=l9_21;
float l9_24=l9_22;
bool l9_25;
#if (SC_USE_CLAMP_TO_BORDER_baseTex)
{
l9_25=ivec2(SC_SOFTWARE_WRAP_MODE_U_baseTex,SC_SOFTWARE_WRAP_MODE_V_baseTex).y==3;
}
#else
{
l9_25=(int(SC_USE_CLAMP_TO_BORDER_baseTex)!=0);
}
#endif
float l9_26=l9_17;
float l9_27=l9_24;
sc_ClampUV(l9_26,baseTexUvMinMax.y,baseTexUvMinMax.w,l9_25,l9_27);
l9_19=l9_27;
l9_18=vec2(l9_23,l9_26);
}
#else
{
l9_19=1.0;
l9_18=vec2(l9_15,l9_17);
}
#endif
vec2 l9_28=sc_TransformUV(l9_18,(int(SC_USE_UV_TRANSFORM_baseTex)!=0),baseTexTransform);
float l9_29=l9_28.x;
float l9_30=l9_19;
sc_SoftwareWrapLate(l9_29,ivec2(SC_SOFTWARE_WRAP_MODE_U_baseTex,SC_SOFTWARE_WRAP_MODE_V_baseTex).x,l9_13,l9_30);
float l9_31=l9_28.y;
float l9_32=l9_30;
sc_SoftwareWrapLate(l9_31,ivec2(SC_SOFTWARE_WRAP_MODE_U_baseTex,SC_SOFTWARE_WRAP_MODE_V_baseTex).y,l9_13,l9_32);
float l9_33=l9_32;
vec3 l9_34=sc_SamplingCoordsViewToGlobal(vec2(l9_29,l9_31),baseTexLayout,l9_12);
vec4 l9_35=texture2D(baseTex,l9_34.xy,0.0);
vec4 l9_36;
#if (SC_USE_CLAMP_TO_BORDER_baseTex)
{
l9_36=mix(baseTexBorderColor,l9_35,vec4(l9_33));
}
#else
{
l9_36=l9_35;
}
#endif
l9_3=l9_36;
}
#else
{
l9_3=Port_Default_N369;
}
#endif
vec4 l9_37=baseColor*l9_3;
float l9_38;
#if (ENABLE_OPACITY_TEX)
{
vec2 l9_39;
#if (NODE_69_DROPLIST_ITEM==0)
{
l9_39=varPackedTex.xy;
}
#else
{
vec2 l9_40;
#if (NODE_69_DROPLIST_ITEM==1)
{
l9_40=varPackedTex.zw;
}
#else
{
vec2 l9_41;
#if (NODE_69_DROPLIST_ITEM==2)
{
vec2 l9_42;
Node122_If_else(0.0,vec2(0.0),vec2(0.0),l9_42,l9_2);
float l9_43;
Node67_Bool_Parameter(l9_43,l9_2);
l9_41=mix(varPackedTex.xy,l9_42,vec2(l9_43));
}
#else
{
vec2 l9_44;
#if (NODE_69_DROPLIST_ITEM==3)
{
vec2 l9_45;
Node64_If_else(0.0,vec2(0.0),vec2(0.0),l9_45,l9_2);
float l9_46;
Node11_Bool_Parameter(l9_46,l9_2);
l9_44=mix(varPackedTex.xy,l9_45,vec2(l9_46));
}
#else
{
l9_44=varPackedTex.xy;
}
#endif
l9_41=l9_44;
}
#endif
l9_40=l9_41;
}
#endif
l9_39=l9_40;
}
#endif
int l9_47;
#if (opacityTexHasSwappedViews)
{
l9_47=1-sc_GetStereoViewIndex();
}
#else
{
l9_47=sc_GetStereoViewIndex();
}
#endif
bool l9_48=(int(SC_USE_CLAMP_TO_BORDER_opacityTex)!=0)&&(!(int(SC_USE_UV_MIN_MAX_opacityTex)!=0));
float l9_49=l9_39.x;
sc_SoftwareWrapEarly(l9_49,ivec2(SC_SOFTWARE_WRAP_MODE_U_opacityTex,SC_SOFTWARE_WRAP_MODE_V_opacityTex).x);
float l9_50=l9_49;
float l9_51=l9_39.y;
sc_SoftwareWrapEarly(l9_51,ivec2(SC_SOFTWARE_WRAP_MODE_U_opacityTex,SC_SOFTWARE_WRAP_MODE_V_opacityTex).y);
float l9_52=l9_51;
vec2 l9_53;
float l9_54;
#if (SC_USE_UV_MIN_MAX_opacityTex)
{
bool l9_55;
#if (SC_USE_CLAMP_TO_BORDER_opacityTex)
{
l9_55=ivec2(SC_SOFTWARE_WRAP_MODE_U_opacityTex,SC_SOFTWARE_WRAP_MODE_V_opacityTex).x==3;
}
#else
{
l9_55=(int(SC_USE_CLAMP_TO_BORDER_opacityTex)!=0);
}
#endif
float l9_56=l9_50;
float l9_57=1.0;
sc_ClampUV(l9_56,opacityTexUvMinMax.x,opacityTexUvMinMax.z,l9_55,l9_57);
float l9_58=l9_56;
float l9_59=l9_57;
bool l9_60;
#if (SC_USE_CLAMP_TO_BORDER_opacityTex)
{
l9_60=ivec2(SC_SOFTWARE_WRAP_MODE_U_opacityTex,SC_SOFTWARE_WRAP_MODE_V_opacityTex).y==3;
}
#else
{
l9_60=(int(SC_USE_CLAMP_TO_BORDER_opacityTex)!=0);
}
#endif
float l9_61=l9_52;
float l9_62=l9_59;
sc_ClampUV(l9_61,opacityTexUvMinMax.y,opacityTexUvMinMax.w,l9_60,l9_62);
l9_54=l9_62;
l9_53=vec2(l9_58,l9_61);
}
#else
{
l9_54=1.0;
l9_53=vec2(l9_50,l9_52);
}
#endif
vec2 l9_63=sc_TransformUV(l9_53,(int(SC_USE_UV_TRANSFORM_opacityTex)!=0),opacityTexTransform);
float l9_64=l9_63.x;
float l9_65=l9_54;
sc_SoftwareWrapLate(l9_64,ivec2(SC_SOFTWARE_WRAP_MODE_U_opacityTex,SC_SOFTWARE_WRAP_MODE_V_opacityTex).x,l9_48,l9_65);
float l9_66=l9_63.y;
float l9_67=l9_65;
sc_SoftwareWrapLate(l9_66,ivec2(SC_SOFTWARE_WRAP_MODE_U_opacityTex,SC_SOFTWARE_WRAP_MODE_V_opacityTex).y,l9_48,l9_67);
float l9_68=l9_67;
vec3 l9_69=sc_SamplingCoordsViewToGlobal(vec2(l9_64,l9_66),opacityTexLayout,l9_47);
vec4 l9_70=texture2D(opacityTex,l9_69.xy,0.0);
vec4 l9_71;
#if (SC_USE_CLAMP_TO_BORDER_opacityTex)
{
l9_71=mix(opacityTexBorderColor,l9_70,vec4(l9_68));
}
#else
{
l9_71=l9_70;
}
#endif
l9_38=l9_71.x*opacityMul;
}
#else
{
l9_38=Port_Default_N204;
}
#endif
float l9_72=l9_37.w*l9_38;
vec4 l9_73=vec4(l9_37.x,l9_37.y,l9_37.z,vec4(0.0).w);
l9_73.w=l9_72;
#if (sc_BlendMode_AlphaTest)
{
if (l9_72<alphaTestThreshold)
{
discard;
}
}
#endif
#if (ENABLE_STIPPLE_PATTERN_TEST)
{
if (l9_72<((mod(dot(floor(mod(gl_FragCoord.xy,vec2(4.0))),vec2(4.0,1.0))*9.0,16.0)+1.0)/17.0))
{
discard;
}
}
#endif
vec4 l9_74;
#if (sc_ProjectiveShadowsCaster)
{
float l9_75;
#if (((sc_BlendMode_Normal||sc_BlendMode_AlphaToCoverage)||sc_BlendMode_PremultipliedAlphaHardware)||sc_BlendMode_PremultipliedAlphaAuto)
{
l9_75=l9_72;
}
#else
{
float l9_76;
#if (sc_BlendMode_PremultipliedAlpha)
{
l9_76=clamp(l9_72*2.0,0.0,1.0);
}
#else
{
float l9_77;
#if (sc_BlendMode_AddWithAlphaFactor)
{
l9_77=clamp(dot(l9_73.xyz,vec3(l9_72)),0.0,1.0);
}
#else
{
float l9_78;
#if (sc_BlendMode_AlphaTest)
{
l9_78=1.0;
}
#else
{
float l9_79;
#if (sc_BlendMode_Multiply)
{
l9_79=(1.0-dot(l9_73.xyz,vec3(0.33333001)))*l9_72;
}
#else
{
float l9_80;
#if (sc_BlendMode_MultiplyOriginal)
{
l9_80=(1.0-clamp(dot(l9_73.xyz,vec3(1.0)),0.0,1.0))*l9_72;
}
#else
{
float l9_81;
#if (sc_BlendMode_ColoredGlass)
{
l9_81=clamp(dot(l9_73.xyz,vec3(1.0)),0.0,1.0)*l9_72;
}
#else
{
float l9_82;
#if (sc_BlendMode_Add)
{
l9_82=clamp(dot(l9_73.xyz,vec3(1.0)),0.0,1.0);
}
#else
{
float l9_83;
#if (sc_BlendMode_AddWithAlphaFactor)
{
l9_83=clamp(dot(l9_73.xyz,vec3(1.0)),0.0,1.0)*l9_72;
}
#else
{
float l9_84;
#if (sc_BlendMode_Screen)
{
l9_84=dot(l9_73.xyz,vec3(0.33333001))*l9_72;
}
#else
{
float l9_85;
#if (sc_BlendMode_Min)
{
l9_85=1.0-clamp(dot(l9_73.xyz,vec3(1.0)),0.0,1.0);
}
#else
{
float l9_86;
#if (sc_BlendMode_Max)
{
l9_86=clamp(dot(l9_73.xyz,vec3(1.0)),0.0,1.0);
}
#else
{
l9_86=1.0;
}
#endif
l9_85=l9_86;
}
#endif
l9_84=l9_85;
}
#endif
l9_83=l9_84;
}
#endif
l9_82=l9_83;
}
#endif
l9_81=l9_82;
}
#endif
l9_80=l9_81;
}
#endif
l9_79=l9_80;
}
#endif
l9_78=l9_79;
}
#endif
l9_77=l9_78;
}
#endif
l9_76=l9_77;
}
#endif
l9_75=l9_76;
}
#endif
l9_74=vec4(mix(sc_ShadowColor.xyz,sc_ShadowColor.xyz*l9_73.xyz,vec3(sc_ShadowColor.w)),sc_ShadowDensity*l9_75);
}
#else
{
vec4 l9_87;
#if (sc_RenderAlphaToColor)
{
l9_87=vec4(l9_72);
}
#else
{
vec4 l9_88;
#if (sc_BlendMode_Custom)
{
vec4 l9_89;
#if (sc_FramebufferFetch)
{
vec4 l9_90=sc_readFragData0_Platform();
vec4 l9_91;
#if (sc_UseFramebufferFetchMarker)
{
vec4 l9_92=l9_90;
l9_92.x=l9_90.x+_sc_framebufferFetchMarker;
l9_91=l9_92;
}
#else
{
l9_91=l9_90;
}
#endif
l9_89=l9_91;
}
#else
{
vec2 l9_93=sc_ScreenCoordsGlobalToView(l9_0);
int l9_94;
#if (sc_ScreenTextureHasSwappedViews)
{
l9_94=1-sc_GetStereoViewIndex();
}
#else
{
l9_94=sc_GetStereoViewIndex();
}
#endif
l9_89=texture2D(sc_ScreenTexture,sc_SamplingCoordsViewToGlobal(l9_93,sc_ScreenTextureLayout,l9_94).xy,0.0);
}
#endif
vec4 l9_95;
#if (((sc_IsEditor&&sc_GetFramebufferColorInvalidUsageMarker)&&(!sc_BlendMode_Software))&&(!sc_BlendMode_ColoredGlass))
{
vec4 l9_96=l9_89;
l9_96.x=l9_89.x+_sc_GetFramebufferColorInvalidUsageMarker;
l9_95=l9_96;
}
#else
{
l9_95=l9_89;
}
#endif
vec3 l9_97=mix(l9_95.xyz,definedBlend(l9_95.xyz,l9_73.xyz).xyz,vec3(l9_72));
vec4 l9_98=vec4(l9_97.x,l9_97.y,l9_97.z,vec4(0.0).w);
l9_98.w=1.0;
l9_88=l9_98;
}
#else
{
vec4 l9_99;
#if (sc_BlendMode_MultiplyOriginal)
{
l9_99=vec4(mix(vec3(1.0),l9_73.xyz,vec3(l9_72)),l9_72);
}
#else
{
vec4 l9_100;
#if (sc_BlendMode_Screen||sc_BlendMode_PremultipliedAlphaAuto)
{
float l9_101;
#if (sc_BlendMode_PremultipliedAlphaAuto)
{
l9_101=clamp(l9_72,0.0,1.0);
}
#else
{
l9_101=l9_72;
}
#endif
l9_100=vec4(l9_73.xyz*l9_101,l9_101);
}
#else
{
l9_100=l9_73;
}
#endif
l9_99=l9_100;
}
#endif
l9_88=l9_99;
}
#endif
l9_87=l9_88;
}
#endif
l9_74=l9_87;
}
#endif
vec4 l9_102;
if (PreviewEnabled==1)
{
vec4 l9_103;
if (((PreviewVertexSaved*1.0)!=0.0) ? true : false)
{
l9_103=PreviewVertexColor;
}
else
{
l9_103=vec4(0.0);
}
l9_102=l9_103;
}
else
{
l9_102=l9_74;
}
vec4 l9_104;
#if (sc_ShaderComplexityAnalyzer)
{
l9_104=vec4(shaderComplexityValue/255.0,0.0,0.0,1.0);
}
#else
{
l9_104=vec4(0.0);
}
#endif
vec4 l9_105;
if (l9_104.w>0.0)
{
l9_105=l9_104;
}
else
{
l9_105=l9_102;
}
vec4 l9_106=outputMotionVectorsIfNeeded(varPos,max(l9_105,vec4(0.0)));
vec4 l9_107=clamp(l9_106,vec4(0.0),vec4(1.0));
#if (sc_OITDepthBoundsPass)
{
#if (sc_OITDepthBoundsPass)
{
float l9_108=clamp(viewSpaceDepth()/1000.0,0.0,1.0);
sc_writeFragData0Internal(vec4(max(0.0,1.0-(l9_108-0.0039215689)),min(1.0,l9_108+0.0039215689),0.0,0.0),sc_UniformConstants.x,sc_ShaderCacheConstant);
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
vec2 l9_109=sc_ScreenCoordsGlobalToView(l9_0);
#if (sc_OITMaxLayers4Plus1)
{
if ((gl_FragCoord.z-texture2D(sc_OITFrontDepthTexture,l9_109).x)<=getFrontLayerZTestEpsilon())
{
discard;
}
}
#endif
int l9_110=encodeDepth(viewSpaceDepth(),texture2D(sc_OITFilteredDepthBoundsTexture,l9_109).xy);
float l9_111=packValue(l9_110);
int l9_118=int(l9_107.w*255.0);
float l9_119=packValue(l9_118);
sc_writeFragData0Internal(vec4(packValue(l9_110),packValue(l9_110),packValue(l9_110),packValue(l9_110)),sc_UniformConstants.x,sc_ShaderCacheConstant);
sc_writeFragData1(vec4(l9_111,packValue(l9_110),packValue(l9_110),packValue(l9_110)));
sc_writeFragData2(vec4(l9_119,packValue(l9_118),packValue(l9_118),packValue(l9_118)));
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
vec2 l9_122=sc_ScreenCoordsGlobalToView(l9_0);
#if (sc_OITMaxLayers4Plus1)
{
if ((gl_FragCoord.z-texture2D(sc_OITFrontDepthTexture,l9_122).x)<=getFrontLayerZTestEpsilon())
{
discard;
}
}
#endif
int l9_123[8];
int l9_124[8];
int l9_125=0;
for (int snapLoopIndex=0; snapLoopIndex==0; snapLoopIndex+=0)
{
if (l9_125<8)
{
l9_123[l9_125]=0;
l9_124[l9_125]=0;
l9_125++;
continue;
}
else
{
break;
}
}
int l9_126;
#if (sc_OITMaxLayers8)
{
l9_126=2;
}
#else
{
l9_126=1;
}
#endif
int l9_127=0;
for (int snapLoopIndex=0; snapLoopIndex==0; snapLoopIndex+=0)
{
if (l9_127<l9_126)
{
vec4 l9_128;
vec4 l9_129;
vec4 l9_130;
if (l9_127==0)
{
l9_130=texture2D(sc_OITAlpha0,l9_122);
l9_129=texture2D(sc_OITDepthLow0,l9_122);
l9_128=texture2D(sc_OITDepthHigh0,l9_122);
}
else
{
l9_130=vec4(0.0);
l9_129=vec4(0.0);
l9_128=vec4(0.0);
}
vec4 l9_131;
vec4 l9_132;
vec4 l9_133;
if (l9_127==1)
{
l9_133=texture2D(sc_OITAlpha1,l9_122);
l9_132=texture2D(sc_OITDepthLow1,l9_122);
l9_131=texture2D(sc_OITDepthHigh1,l9_122);
}
else
{
l9_133=l9_130;
l9_132=l9_129;
l9_131=l9_128;
}
if (any(notEqual(l9_131,vec4(0.0)))||any(notEqual(l9_132,vec4(0.0))))
{
int l9_134[8]=l9_123;
unpackValues(l9_131.w,l9_127,l9_134);
unpackValues(l9_131.z,l9_127,l9_134);
unpackValues(l9_131.y,l9_127,l9_134);
unpackValues(l9_131.x,l9_127,l9_134);
unpackValues(l9_132.w,l9_127,l9_134);
unpackValues(l9_132.z,l9_127,l9_134);
unpackValues(l9_132.y,l9_127,l9_134);
unpackValues(l9_132.x,l9_127,l9_134);
int l9_143[8]=l9_124;
unpackValues(l9_133.w,l9_127,l9_143);
unpackValues(l9_133.z,l9_127,l9_143);
unpackValues(l9_133.y,l9_127,l9_143);
unpackValues(l9_133.x,l9_127,l9_143);
}
l9_127++;
continue;
}
else
{
break;
}
}
vec4 l9_148=texture2D(sc_OITFilteredDepthBoundsTexture,l9_122);
vec2 l9_149=l9_148.xy;
int l9_150;
#if (sc_SkinBonesCount>0)
{
l9_150=encodeDepth(((1.0-l9_148.x)*1000.0)+getDepthOrderingEpsilon(),l9_149);
}
#else
{
l9_150=0;
}
#endif
int l9_151=encodeDepth(viewSpaceDepth(),l9_149);
vec4 l9_152;
l9_152=l9_107*l9_107.w;
vec4 l9_153;
int l9_154=0;
for (int snapLoopIndex=0; snapLoopIndex==0; snapLoopIndex+=0)
{
if (l9_154<8)
{
int l9_155=l9_123[l9_154];
int l9_156=l9_151-l9_150;
bool l9_157=l9_155<l9_156;
bool l9_158;
if (l9_157)
{
l9_158=l9_123[l9_154]>0;
}
else
{
l9_158=l9_157;
}
if (l9_158)
{
vec3 l9_159=l9_152.xyz*(1.0-(float(l9_124[l9_154])/255.0));
l9_153=vec4(l9_159.x,l9_159.y,l9_159.z,l9_152.w);
}
else
{
l9_153=l9_152;
}
l9_152=l9_153;
l9_154++;
continue;
}
else
{
break;
}
}
sc_writeFragData0Internal(l9_152,sc_UniformConstants.x,sc_ShaderCacheConstant);
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
if (abs(gl_FragCoord.z-texture2D(sc_OITFrontDepthTexture,sc_ScreenCoordsGlobalToView(l9_0)).x)>getFrontLayerZTestEpsilon())
{
discard;
}
sc_writeFragData0Internal(l9_107,sc_UniformConstants.x,sc_ShaderCacheConstant);
}
#endif
}
#else
{
sc_writeFragData0Internal(l9_106,sc_UniformConstants.x,sc_ShaderCacheConstant);
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
#endif // #elif defined FRAGMENT_SHADER // #if defined VERTEX_SHADER
