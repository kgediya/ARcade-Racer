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
//sampler sampler baseColorTextureSmpSC 0:35
//sampler sampler clearcoatNormalTextureSmpSC 0:36
//sampler sampler clearcoatRoughnessTextureSmpSC 0:37
//sampler sampler clearcoatTextureSmpSC 0:38
//sampler sampler emissiveTextureSmpSC 0:39
//sampler sampler intensityTextureSmpSC 0:40
//sampler sampler metallicRoughnessTextureSmpSC 0:41
//sampler sampler normalTextureSmpSC 0:42
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
//sampler sampler screenTextureSmpSC 0:54
//sampler sampler sheenColorTextureSmpSC 0:55
//sampler sampler sheenRoughnessTextureSmpSC 0:56
//sampler sampler transmissionTextureSmpSC 0:57
//sampler sampler z_hitIdAndBarycentricSmp 0:58
//sampler sampler z_rayDirectionsSmpSC 0:59
//texture texture2D baseColorTexture 0:3:0:35
//texture texture2D clearcoatNormalTexture 0:4:0:36
//texture texture2D clearcoatRoughnessTexture 0:5:0:37
//texture texture2D clearcoatTexture 0:6:0:38
//texture texture2D emissiveTexture 0:7:0:39
//texture texture2D intensityTexture 0:8:0:40
//texture texture2D metallicRoughnessTexture 0:9:0:41
//texture texture2D normalTexture 0:10:0:42
//texture texture2D sc_EnvmapDiffuse 0:11:0:43
//texture texture2D sc_EnvmapSpecular 0:12:0:44
//texture texture2D sc_OITAlpha0 0:13:0:45
//texture texture2D sc_OITAlpha1 0:14:0:45
//texture texture2D sc_OITDepthHigh0 0:15:0:45
//texture texture2D sc_OITDepthHigh1 0:16:0:45
//texture texture2D sc_OITDepthLow0 0:17:0:45
//texture texture2D sc_OITDepthLow1 0:18:0:45
//texture texture2D sc_OITFilteredDepthBoundsTexture 0:19:0:45
//texture texture2D sc_OITFrontDepthTexture 0:20:0:45
//texture texture2D sc_RayTracedAoTexture 0:21:0:46
//texture texture2D sc_RayTracedDiffIndTexture 0:22:0:47
//texture texture2D sc_RayTracedReflectionTexture 0:23:0:48
//texture texture2D sc_RayTracedShadowTexture 0:24:0:49
//texture texture2D sc_SSAOTexture 0:25:0:50
//texture texture2D sc_ScreenTexture 0:26:0:51
//texture texture2D sc_ShadowTexture 0:27:0:52
//texture texture2D screenTexture 0:29:0:54
//texture texture2D sheenColorTexture 0:30:0:55
//texture texture2D sheenRoughnessTexture 0:31:0:56
//texture texture2D transmissionTexture 0:32:0:57
//texture utexture2D z_hitIdAndBarycentric 0:33:0:58
//texture texture2D z_rayDirections 0:34:0:59
//texture texture2DArray baseColorTextureArrSC 0:60:0:35
//texture texture2DArray clearcoatNormalTextureArrSC 0:61:0:36
//texture texture2DArray clearcoatRoughnessTextureArrSC 0:62:0:37
//texture texture2DArray clearcoatTextureArrSC 0:63:0:38
//texture texture2DArray emissiveTextureArrSC 0:64:0:39
//texture texture2DArray intensityTextureArrSC 0:65:0:40
//texture texture2DArray metallicRoughnessTextureArrSC 0:66:0:41
//texture texture2DArray normalTextureArrSC 0:67:0:42
//texture texture2DArray sc_EnvmapDiffuseArrSC 0:68:0:43
//texture texture2DArray sc_EnvmapSpecularArrSC 0:69:0:44
//texture texture2DArray sc_RayTracedAoTextureArrSC 0:70:0:46
//texture texture2DArray sc_RayTracedDiffIndTextureArrSC 0:71:0:47
//texture texture2DArray sc_RayTracedReflectionTextureArrSC 0:72:0:48
//texture texture2DArray sc_RayTracedShadowTextureArrSC 0:73:0:49
//texture texture2DArray sc_ScreenTextureArrSC 0:74:0:51
//texture texture2DArray screenTextureArrSC 0:75:0:54
//texture texture2DArray sheenColorTextureArrSC 0:76:0:55
//texture texture2DArray sheenRoughnessTextureArrSC 0:77:0:56
//texture texture2DArray transmissionTextureArrSC 0:78:0:57
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
//spec_const bool ENABLE_BASE_TEXTURE_TRANSFORM 31 0
//spec_const bool ENABLE_CLEARCOAT 32 0
//spec_const bool ENABLE_CLEARCOAT_NORMAL_TEX 33 0
//spec_const bool ENABLE_CLEARCOAT_NORMAL_TEXTURE_TRANSFORM 34 0
//spec_const bool ENABLE_CLEARCOAT_ROUGHNESS_TEX 35 0
//spec_const bool ENABLE_CLEARCOAT_ROUGHNESS_TEXTURE_TRANSFORM 36 0
//spec_const bool ENABLE_CLEARCOAT_TEX 37 0
//spec_const bool ENABLE_CLEARCOAT_TEXTURE_TRANSFORM 38 0
//spec_const bool ENABLE_EMISSIVE 39 0
//spec_const bool ENABLE_EMISSIVE_TEXTURE_TRANSFORM 40 0
//spec_const bool ENABLE_GLTF_LIGHTING 41 0
//spec_const bool ENABLE_METALLIC_ROUGHNESS_TEX 42 0
//spec_const bool ENABLE_METALLIC_ROUGHNESS_TEXTURE_TRANSFORM 43 0
//spec_const bool ENABLE_NORMALMAP 44 0
//spec_const bool ENABLE_NORMAL_TEXTURE_TRANSFORM 45 0
//spec_const bool ENABLE_SHEEN 46 0
//spec_const bool ENABLE_SHEEN_COLOR_TEX 47 0
//spec_const bool ENABLE_SHEEN_COLOR_TEXTURE_TRANSFORM 48 0
//spec_const bool ENABLE_SHEEN_ROUGHNESS_TEX 49 0
//spec_const bool ENABLE_SHEEN_ROUGHNESS_TEXTURE_TRANSFORM 50 0
//spec_const bool ENABLE_STIPPLE_PATTERN_TEST 51 0
//spec_const bool ENABLE_TEXTURE_TRANSFORM 52 0
//spec_const bool ENABLE_TRANSMISSION 53 0
//spec_const bool ENABLE_TRANSMISSION_TEX 54 0
//spec_const bool ENABLE_TRANSMISSION_TEXTURE_TRANSFORM 55 0
//spec_const bool ENABLE_VERTEX_COLOR_BASE 56 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_baseColorTexture 57 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_clearcoatNormalTexture 58 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_clearcoatRoughnessTexture 59 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_clearcoatTexture 60 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_emissiveTexture 61 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_intensityTexture 62 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_metallicRoughnessTexture 63 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_normalTexture 64 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_screenTexture 65 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_sheenColorTexture 66 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_sheenRoughnessTexture 67 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_transmissionTexture 68 0
//spec_const bool SC_USE_UV_MIN_MAX_baseColorTexture 69 0
//spec_const bool SC_USE_UV_MIN_MAX_clearcoatNormalTexture 70 0
//spec_const bool SC_USE_UV_MIN_MAX_clearcoatRoughnessTexture 71 0
//spec_const bool SC_USE_UV_MIN_MAX_clearcoatTexture 72 0
//spec_const bool SC_USE_UV_MIN_MAX_emissiveTexture 73 0
//spec_const bool SC_USE_UV_MIN_MAX_intensityTexture 74 0
//spec_const bool SC_USE_UV_MIN_MAX_metallicRoughnessTexture 75 0
//spec_const bool SC_USE_UV_MIN_MAX_normalTexture 76 0
//spec_const bool SC_USE_UV_MIN_MAX_screenTexture 77 0
//spec_const bool SC_USE_UV_MIN_MAX_sheenColorTexture 78 0
//spec_const bool SC_USE_UV_MIN_MAX_sheenRoughnessTexture 79 0
//spec_const bool SC_USE_UV_MIN_MAX_transmissionTexture 80 0
//spec_const bool SC_USE_UV_TRANSFORM_baseColorTexture 81 0
//spec_const bool SC_USE_UV_TRANSFORM_clearcoatNormalTexture 82 0
//spec_const bool SC_USE_UV_TRANSFORM_clearcoatRoughnessTexture 83 0
//spec_const bool SC_USE_UV_TRANSFORM_clearcoatTexture 84 0
//spec_const bool SC_USE_UV_TRANSFORM_emissiveTexture 85 0
//spec_const bool SC_USE_UV_TRANSFORM_intensityTexture 86 0
//spec_const bool SC_USE_UV_TRANSFORM_metallicRoughnessTexture 87 0
//spec_const bool SC_USE_UV_TRANSFORM_normalTexture 88 0
//spec_const bool SC_USE_UV_TRANSFORM_screenTexture 89 0
//spec_const bool SC_USE_UV_TRANSFORM_sheenColorTexture 90 0
//spec_const bool SC_USE_UV_TRANSFORM_sheenRoughnessTexture 91 0
//spec_const bool SC_USE_UV_TRANSFORM_transmissionTexture 92 0
//spec_const bool UseViewSpaceDepthVariant 93 1
//spec_const bool baseColorTextureHasSwappedViews 94 0
//spec_const bool clearcoatNormalTextureHasSwappedViews 95 0
//spec_const bool clearcoatRoughnessTextureHasSwappedViews 96 0
//spec_const bool clearcoatTextureHasSwappedViews 97 0
//spec_const bool emissiveTextureHasSwappedViews 98 0
//spec_const bool intensityTextureHasSwappedViews 99 0
//spec_const bool metallicRoughnessTextureHasSwappedViews 100 0
//spec_const bool normalTextureHasSwappedViews 101 0
//spec_const bool sc_BlendMode_Add 102 0
//spec_const bool sc_BlendMode_AddWithAlphaFactor 103 0
//spec_const bool sc_BlendMode_AlphaTest 104 0
//spec_const bool sc_BlendMode_AlphaToCoverage 105 0
//spec_const bool sc_BlendMode_ColoredGlass 106 0
//spec_const bool sc_BlendMode_Custom 107 0
//spec_const bool sc_BlendMode_Max 108 0
//spec_const bool sc_BlendMode_Min 109 0
//spec_const bool sc_BlendMode_Multiply 110 0
//spec_const bool sc_BlendMode_MultiplyOriginal 111 0
//spec_const bool sc_BlendMode_Normal 112 0
//spec_const bool sc_BlendMode_PremultipliedAlpha 113 0
//spec_const bool sc_BlendMode_PremultipliedAlphaAuto 114 0
//spec_const bool sc_BlendMode_PremultipliedAlphaHardware 115 0
//spec_const bool sc_BlendMode_Screen 116 0
//spec_const bool sc_BlendMode_Software 117 0
//spec_const bool sc_DepthOnly 118 0
//spec_const bool sc_EnvmapDiffuseHasSwappedViews 119 0
//spec_const bool sc_EnvmapSpecularHasSwappedViews 120 0
//spec_const bool sc_FramebufferFetch 121 0
//spec_const bool sc_GetFramebufferColorInvalidUsageMarker 122 0
//spec_const bool sc_HasDiffuseEnvmap 123 0
//spec_const bool sc_IsEditor 124 0
//spec_const bool sc_LightEstimation 125 0
//spec_const bool sc_MotionVectorsPass 126 0
//spec_const bool sc_OITCompositingPass 127 0
//spec_const bool sc_OITDepthBoundsPass 128 0
//spec_const bool sc_OITDepthGatherPass 129 0
//spec_const bool sc_OITDepthPrepass 130 0
//spec_const bool sc_OITFrontLayerPass 131 0
//spec_const bool sc_OITMaxLayers4Plus1 132 0
//spec_const bool sc_OITMaxLayers8 133 0
//spec_const bool sc_OITMaxLayersVisualizeLayerCount 134 0
//spec_const bool sc_ProjectiveShadowsCaster 135 0
//spec_const bool sc_ProjectiveShadowsReceiver 136 0
//spec_const bool sc_ProxyAlphaOne 137 0
//spec_const bool sc_RayTracedAoTextureHasSwappedViews 138 0
//spec_const bool sc_RayTracedDiffIndTextureHasSwappedViews 139 0
//spec_const bool sc_RayTracedReflectionTextureHasSwappedViews 140 0
//spec_const bool sc_RayTracedShadowTextureHasSwappedViews 141 0
//spec_const bool sc_RenderAlphaToColor 142 0
//spec_const bool sc_SSAOEnabled 143 0
//spec_const bool sc_ScreenTextureHasSwappedViews 144 0
//spec_const bool sc_ShaderComplexityAnalyzer 145 0
//spec_const bool sc_TAAEnabled 146 0
//spec_const bool sc_UseFramebufferFetchMarker 147 0
//spec_const bool sc_VertexBlending 148 0
//spec_const bool sc_VertexBlendingUseNormals 149 0
//spec_const bool screenTextureHasSwappedViews 150 0
//spec_const bool sheenColorTextureHasSwappedViews 151 0
//spec_const bool sheenRoughnessTextureHasSwappedViews 152 0
//spec_const bool transmissionTextureHasSwappedViews 153 0
//spec_const int NODE_10_DROPLIST_ITEM 154 0
//spec_const int NODE_11_DROPLIST_ITEM 155 0
//spec_const int NODE_7_DROPLIST_ITEM 156 0
//spec_const int NODE_8_DROPLIST_ITEM 157 0
//spec_const int SC_DEVICE_CLASS 158 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_baseColorTexture 159 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_clearcoatNormalTexture 160 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_clearcoatRoughnessTexture 161 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_clearcoatTexture 162 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_emissiveTexture 163 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_intensityTexture 164 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_metallicRoughnessTexture 165 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_normalTexture 166 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_screenTexture 167 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_sheenColorTexture 168 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_sheenRoughnessTexture 169 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_transmissionTexture 170 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_baseColorTexture 171 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_clearcoatNormalTexture 172 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_clearcoatRoughnessTexture 173 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_clearcoatTexture 174 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_emissiveTexture 175 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_intensityTexture 176 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_metallicRoughnessTexture 177 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_normalTexture 178 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_screenTexture 179 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_sheenColorTexture 180 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_sheenRoughnessTexture 181 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_transmissionTexture 182 -1
//spec_const int Tweak_N30 183 0
//spec_const int Tweak_N32 184 0
//spec_const int Tweak_N37 185 0
//spec_const int Tweak_N44 186 0
//spec_const int Tweak_N47 187 0
//spec_const int Tweak_N60 188 0
//spec_const int baseColorTextureLayout 189 0
//spec_const int clearcoatNormalTextureLayout 190 0
//spec_const int clearcoatRoughnessTextureLayout 191 0
//spec_const int clearcoatTextureLayout 192 0
//spec_const int emissiveTextureLayout 193 0
//spec_const int intensityTextureLayout 194 0
//spec_const int metallicRoughnessTextureLayout 195 0
//spec_const int normalTextureLayout 196 0
//spec_const int sc_AmbientLightMode0 197 0
//spec_const int sc_AmbientLightMode1 198 0
//spec_const int sc_AmbientLightMode2 199 0
//spec_const int sc_AmbientLightMode_Constant 200 0
//spec_const int sc_AmbientLightMode_EnvironmentMap 201 0
//spec_const int sc_AmbientLightMode_FromCamera 202 0
//spec_const int sc_AmbientLightMode_SphericalHarmonics 203 0
//spec_const int sc_AmbientLightsCount 204 0
//spec_const int sc_DepthBufferMode 205 0
//spec_const int sc_DirectionalLightsCount 206 0
//spec_const int sc_EnvLightMode 207 0
//spec_const int sc_EnvmapDiffuseLayout 208 0
//spec_const int sc_EnvmapSpecularLayout 209 0
//spec_const int sc_LightEstimationSGCount 210 0
//spec_const int sc_MaxTextureImageUnits 211 0
//spec_const int sc_PointLightsCount 212 0
//spec_const int sc_RayTracedAoTextureLayout 213 0
//spec_const int sc_RayTracedDiffIndTextureLayout 214 0
//spec_const int sc_RayTracedReflectionTextureLayout 215 0
//spec_const int sc_RayTracedShadowTextureLayout 216 0
//spec_const int sc_RenderingSpace 217 -1
//spec_const int sc_ScreenTextureLayout 218 0
//spec_const int sc_ShaderCacheConstant 219 0
//spec_const int sc_SkinBonesCount 220 0
//spec_const int sc_StereoRenderingMode 221 0
//spec_const int sc_StereoRendering_IsClipDistanceEnabled 222 0
//spec_const int sc_StereoViewID 223 0
//spec_const int screenTextureLayout 224 0
//spec_const int sheenColorTextureLayout 225 0
//spec_const int sheenRoughnessTextureLayout 226 0
//spec_const int transmissionTextureLayout 227 0
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
vec3 BumpedNormal;
vec3 ViewDirWS;
vec3 PositionWS;
vec3 SurfacePosition_WorldSpace;
vec3 VertexNormal_WorldSpace;
vec3 VertexTangent_WorldSpace;
vec3 VertexBinormal_WorldSpace;
vec2 Surface_UVCoord0;
vec2 Surface_UVCoord1;
vec2 gScreenCoord;
vec4 VertexColor;
};
#ifndef sc_StereoRenderingMode
#define sc_StereoRenderingMode 0
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
#ifndef emissiveTextureHasSwappedViews
#define emissiveTextureHasSwappedViews 0
#elif emissiveTextureHasSwappedViews==1
#undef emissiveTextureHasSwappedViews
#define emissiveTextureHasSwappedViews 1
#endif
#ifndef emissiveTextureLayout
#define emissiveTextureLayout 0
#endif
#ifndef normalTextureHasSwappedViews
#define normalTextureHasSwappedViews 0
#elif normalTextureHasSwappedViews==1
#undef normalTextureHasSwappedViews
#define normalTextureHasSwappedViews 1
#endif
#ifndef normalTextureLayout
#define normalTextureLayout 0
#endif
#ifndef metallicRoughnessTextureHasSwappedViews
#define metallicRoughnessTextureHasSwappedViews 0
#elif metallicRoughnessTextureHasSwappedViews==1
#undef metallicRoughnessTextureHasSwappedViews
#define metallicRoughnessTextureHasSwappedViews 1
#endif
#ifndef metallicRoughnessTextureLayout
#define metallicRoughnessTextureLayout 0
#endif
#ifndef transmissionTextureHasSwappedViews
#define transmissionTextureHasSwappedViews 0
#elif transmissionTextureHasSwappedViews==1
#undef transmissionTextureHasSwappedViews
#define transmissionTextureHasSwappedViews 1
#endif
#ifndef transmissionTextureLayout
#define transmissionTextureLayout 0
#endif
#ifndef screenTextureHasSwappedViews
#define screenTextureHasSwappedViews 0
#elif screenTextureHasSwappedViews==1
#undef screenTextureHasSwappedViews
#define screenTextureHasSwappedViews 1
#endif
#ifndef screenTextureLayout
#define screenTextureLayout 0
#endif
#ifndef sheenColorTextureHasSwappedViews
#define sheenColorTextureHasSwappedViews 0
#elif sheenColorTextureHasSwappedViews==1
#undef sheenColorTextureHasSwappedViews
#define sheenColorTextureHasSwappedViews 1
#endif
#ifndef sheenColorTextureLayout
#define sheenColorTextureLayout 0
#endif
#ifndef sheenRoughnessTextureHasSwappedViews
#define sheenRoughnessTextureHasSwappedViews 0
#elif sheenRoughnessTextureHasSwappedViews==1
#undef sheenRoughnessTextureHasSwappedViews
#define sheenRoughnessTextureHasSwappedViews 1
#endif
#ifndef sheenRoughnessTextureLayout
#define sheenRoughnessTextureLayout 0
#endif
#ifndef clearcoatTextureHasSwappedViews
#define clearcoatTextureHasSwappedViews 0
#elif clearcoatTextureHasSwappedViews==1
#undef clearcoatTextureHasSwappedViews
#define clearcoatTextureHasSwappedViews 1
#endif
#ifndef clearcoatTextureLayout
#define clearcoatTextureLayout 0
#endif
#ifndef clearcoatRoughnessTextureHasSwappedViews
#define clearcoatRoughnessTextureHasSwappedViews 0
#elif clearcoatRoughnessTextureHasSwappedViews==1
#undef clearcoatRoughnessTextureHasSwappedViews
#define clearcoatRoughnessTextureHasSwappedViews 1
#endif
#ifndef clearcoatRoughnessTextureLayout
#define clearcoatRoughnessTextureLayout 0
#endif
#ifndef clearcoatNormalTextureHasSwappedViews
#define clearcoatNormalTextureHasSwappedViews 0
#elif clearcoatNormalTextureHasSwappedViews==1
#undef clearcoatNormalTextureHasSwappedViews
#define clearcoatNormalTextureHasSwappedViews 1
#endif
#ifndef clearcoatNormalTextureLayout
#define clearcoatNormalTextureLayout 0
#endif
#ifndef baseColorTextureHasSwappedViews
#define baseColorTextureHasSwappedViews 0
#elif baseColorTextureHasSwappedViews==1
#undef baseColorTextureHasSwappedViews
#define baseColorTextureHasSwappedViews 1
#endif
#ifndef baseColorTextureLayout
#define baseColorTextureLayout 0
#endif
#ifndef sc_AmbientLightsCount
#define sc_AmbientLightsCount 0
#endif
struct sc_AmbientLight_t
{
vec3 color;
float intensity;
};
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
#ifndef ENABLE_GLTF_LIGHTING
#define ENABLE_GLTF_LIGHTING 0
#elif ENABLE_GLTF_LIGHTING==1
#undef ENABLE_GLTF_LIGHTING
#define ENABLE_GLTF_LIGHTING 1
#endif
#ifndef ENABLE_TRANSMISSION
#define ENABLE_TRANSMISSION 0
#elif ENABLE_TRANSMISSION==1
#undef ENABLE_TRANSMISSION
#define ENABLE_TRANSMISSION 1
#endif
#ifndef ENABLE_SHEEN
#define ENABLE_SHEEN 0
#elif ENABLE_SHEEN==1
#undef ENABLE_SHEEN
#define ENABLE_SHEEN 1
#endif
#ifndef ENABLE_CLEARCOAT
#define ENABLE_CLEARCOAT 0
#elif ENABLE_CLEARCOAT==1
#undef ENABLE_CLEARCOAT
#define ENABLE_CLEARCOAT 1
#endif
#ifndef ENABLE_EMISSIVE
#define ENABLE_EMISSIVE 0
#elif ENABLE_EMISSIVE==1
#undef ENABLE_EMISSIVE
#define ENABLE_EMISSIVE 1
#endif
#ifndef SC_USE_UV_TRANSFORM_emissiveTexture
#define SC_USE_UV_TRANSFORM_emissiveTexture 0
#elif SC_USE_UV_TRANSFORM_emissiveTexture==1
#undef SC_USE_UV_TRANSFORM_emissiveTexture
#define SC_USE_UV_TRANSFORM_emissiveTexture 1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_U_emissiveTexture
#define SC_SOFTWARE_WRAP_MODE_U_emissiveTexture -1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_V_emissiveTexture
#define SC_SOFTWARE_WRAP_MODE_V_emissiveTexture -1
#endif
#ifndef SC_USE_UV_MIN_MAX_emissiveTexture
#define SC_USE_UV_MIN_MAX_emissiveTexture 0
#elif SC_USE_UV_MIN_MAX_emissiveTexture==1
#undef SC_USE_UV_MIN_MAX_emissiveTexture
#define SC_USE_UV_MIN_MAX_emissiveTexture 1
#endif
#ifndef SC_USE_CLAMP_TO_BORDER_emissiveTexture
#define SC_USE_CLAMP_TO_BORDER_emissiveTexture 0
#elif SC_USE_CLAMP_TO_BORDER_emissiveTexture==1
#undef SC_USE_CLAMP_TO_BORDER_emissiveTexture
#define SC_USE_CLAMP_TO_BORDER_emissiveTexture 1
#endif
#ifndef NODE_10_DROPLIST_ITEM
#define NODE_10_DROPLIST_ITEM 0
#endif
#ifndef ENABLE_NORMALMAP
#define ENABLE_NORMALMAP 0
#elif ENABLE_NORMALMAP==1
#undef ENABLE_NORMALMAP
#define ENABLE_NORMALMAP 1
#endif
#ifndef SC_USE_UV_TRANSFORM_normalTexture
#define SC_USE_UV_TRANSFORM_normalTexture 0
#elif SC_USE_UV_TRANSFORM_normalTexture==1
#undef SC_USE_UV_TRANSFORM_normalTexture
#define SC_USE_UV_TRANSFORM_normalTexture 1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_U_normalTexture
#define SC_SOFTWARE_WRAP_MODE_U_normalTexture -1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_V_normalTexture
#define SC_SOFTWARE_WRAP_MODE_V_normalTexture -1
#endif
#ifndef SC_USE_UV_MIN_MAX_normalTexture
#define SC_USE_UV_MIN_MAX_normalTexture 0
#elif SC_USE_UV_MIN_MAX_normalTexture==1
#undef SC_USE_UV_MIN_MAX_normalTexture
#define SC_USE_UV_MIN_MAX_normalTexture 1
#endif
#ifndef SC_USE_CLAMP_TO_BORDER_normalTexture
#define SC_USE_CLAMP_TO_BORDER_normalTexture 0
#elif SC_USE_CLAMP_TO_BORDER_normalTexture==1
#undef SC_USE_CLAMP_TO_BORDER_normalTexture
#define SC_USE_CLAMP_TO_BORDER_normalTexture 1
#endif
#ifndef NODE_8_DROPLIST_ITEM
#define NODE_8_DROPLIST_ITEM 0
#endif
#ifndef ENABLE_METALLIC_ROUGHNESS_TEX
#define ENABLE_METALLIC_ROUGHNESS_TEX 0
#elif ENABLE_METALLIC_ROUGHNESS_TEX==1
#undef ENABLE_METALLIC_ROUGHNESS_TEX
#define ENABLE_METALLIC_ROUGHNESS_TEX 1
#endif
#ifndef SC_USE_UV_TRANSFORM_metallicRoughnessTexture
#define SC_USE_UV_TRANSFORM_metallicRoughnessTexture 0
#elif SC_USE_UV_TRANSFORM_metallicRoughnessTexture==1
#undef SC_USE_UV_TRANSFORM_metallicRoughnessTexture
#define SC_USE_UV_TRANSFORM_metallicRoughnessTexture 1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_U_metallicRoughnessTexture
#define SC_SOFTWARE_WRAP_MODE_U_metallicRoughnessTexture -1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_V_metallicRoughnessTexture
#define SC_SOFTWARE_WRAP_MODE_V_metallicRoughnessTexture -1
#endif
#ifndef SC_USE_UV_MIN_MAX_metallicRoughnessTexture
#define SC_USE_UV_MIN_MAX_metallicRoughnessTexture 0
#elif SC_USE_UV_MIN_MAX_metallicRoughnessTexture==1
#undef SC_USE_UV_MIN_MAX_metallicRoughnessTexture
#define SC_USE_UV_MIN_MAX_metallicRoughnessTexture 1
#endif
#ifndef SC_USE_CLAMP_TO_BORDER_metallicRoughnessTexture
#define SC_USE_CLAMP_TO_BORDER_metallicRoughnessTexture 0
#elif SC_USE_CLAMP_TO_BORDER_metallicRoughnessTexture==1
#undef SC_USE_CLAMP_TO_BORDER_metallicRoughnessTexture
#define SC_USE_CLAMP_TO_BORDER_metallicRoughnessTexture 1
#endif
#ifndef NODE_11_DROPLIST_ITEM
#define NODE_11_DROPLIST_ITEM 0
#endif
#ifndef ENABLE_TRANSMISSION_TEX
#define ENABLE_TRANSMISSION_TEX 0
#elif ENABLE_TRANSMISSION_TEX==1
#undef ENABLE_TRANSMISSION_TEX
#define ENABLE_TRANSMISSION_TEX 1
#endif
#ifndef SC_USE_UV_TRANSFORM_transmissionTexture
#define SC_USE_UV_TRANSFORM_transmissionTexture 0
#elif SC_USE_UV_TRANSFORM_transmissionTexture==1
#undef SC_USE_UV_TRANSFORM_transmissionTexture
#define SC_USE_UV_TRANSFORM_transmissionTexture 1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_U_transmissionTexture
#define SC_SOFTWARE_WRAP_MODE_U_transmissionTexture -1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_V_transmissionTexture
#define SC_SOFTWARE_WRAP_MODE_V_transmissionTexture -1
#endif
#ifndef SC_USE_UV_MIN_MAX_transmissionTexture
#define SC_USE_UV_MIN_MAX_transmissionTexture 0
#elif SC_USE_UV_MIN_MAX_transmissionTexture==1
#undef SC_USE_UV_MIN_MAX_transmissionTexture
#define SC_USE_UV_MIN_MAX_transmissionTexture 1
#endif
#ifndef SC_USE_CLAMP_TO_BORDER_transmissionTexture
#define SC_USE_CLAMP_TO_BORDER_transmissionTexture 0
#elif SC_USE_CLAMP_TO_BORDER_transmissionTexture==1
#undef SC_USE_CLAMP_TO_BORDER_transmissionTexture
#define SC_USE_CLAMP_TO_BORDER_transmissionTexture 1
#endif
#ifndef Tweak_N30
#define Tweak_N30 0
#endif
#ifndef SC_USE_UV_TRANSFORM_screenTexture
#define SC_USE_UV_TRANSFORM_screenTexture 0
#elif SC_USE_UV_TRANSFORM_screenTexture==1
#undef SC_USE_UV_TRANSFORM_screenTexture
#define SC_USE_UV_TRANSFORM_screenTexture 1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_U_screenTexture
#define SC_SOFTWARE_WRAP_MODE_U_screenTexture -1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_V_screenTexture
#define SC_SOFTWARE_WRAP_MODE_V_screenTexture -1
#endif
#ifndef SC_USE_UV_MIN_MAX_screenTexture
#define SC_USE_UV_MIN_MAX_screenTexture 0
#elif SC_USE_UV_MIN_MAX_screenTexture==1
#undef SC_USE_UV_MIN_MAX_screenTexture
#define SC_USE_UV_MIN_MAX_screenTexture 1
#endif
#ifndef SC_USE_CLAMP_TO_BORDER_screenTexture
#define SC_USE_CLAMP_TO_BORDER_screenTexture 0
#elif SC_USE_CLAMP_TO_BORDER_screenTexture==1
#undef SC_USE_CLAMP_TO_BORDER_screenTexture
#define SC_USE_CLAMP_TO_BORDER_screenTexture 1
#endif
#ifndef ENABLE_SHEEN_COLOR_TEX
#define ENABLE_SHEEN_COLOR_TEX 0
#elif ENABLE_SHEEN_COLOR_TEX==1
#undef ENABLE_SHEEN_COLOR_TEX
#define ENABLE_SHEEN_COLOR_TEX 1
#endif
#ifndef SC_USE_UV_TRANSFORM_sheenColorTexture
#define SC_USE_UV_TRANSFORM_sheenColorTexture 0
#elif SC_USE_UV_TRANSFORM_sheenColorTexture==1
#undef SC_USE_UV_TRANSFORM_sheenColorTexture
#define SC_USE_UV_TRANSFORM_sheenColorTexture 1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_U_sheenColorTexture
#define SC_SOFTWARE_WRAP_MODE_U_sheenColorTexture -1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_V_sheenColorTexture
#define SC_SOFTWARE_WRAP_MODE_V_sheenColorTexture -1
#endif
#ifndef SC_USE_UV_MIN_MAX_sheenColorTexture
#define SC_USE_UV_MIN_MAX_sheenColorTexture 0
#elif SC_USE_UV_MIN_MAX_sheenColorTexture==1
#undef SC_USE_UV_MIN_MAX_sheenColorTexture
#define SC_USE_UV_MIN_MAX_sheenColorTexture 1
#endif
#ifndef SC_USE_CLAMP_TO_BORDER_sheenColorTexture
#define SC_USE_CLAMP_TO_BORDER_sheenColorTexture 0
#elif SC_USE_CLAMP_TO_BORDER_sheenColorTexture==1
#undef SC_USE_CLAMP_TO_BORDER_sheenColorTexture
#define SC_USE_CLAMP_TO_BORDER_sheenColorTexture 1
#endif
#ifndef Tweak_N32
#define Tweak_N32 0
#endif
#ifndef ENABLE_SHEEN_ROUGHNESS_TEX
#define ENABLE_SHEEN_ROUGHNESS_TEX 0
#elif ENABLE_SHEEN_ROUGHNESS_TEX==1
#undef ENABLE_SHEEN_ROUGHNESS_TEX
#define ENABLE_SHEEN_ROUGHNESS_TEX 1
#endif
#ifndef SC_USE_UV_TRANSFORM_sheenRoughnessTexture
#define SC_USE_UV_TRANSFORM_sheenRoughnessTexture 0
#elif SC_USE_UV_TRANSFORM_sheenRoughnessTexture==1
#undef SC_USE_UV_TRANSFORM_sheenRoughnessTexture
#define SC_USE_UV_TRANSFORM_sheenRoughnessTexture 1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_U_sheenRoughnessTexture
#define SC_SOFTWARE_WRAP_MODE_U_sheenRoughnessTexture -1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_V_sheenRoughnessTexture
#define SC_SOFTWARE_WRAP_MODE_V_sheenRoughnessTexture -1
#endif
#ifndef SC_USE_UV_MIN_MAX_sheenRoughnessTexture
#define SC_USE_UV_MIN_MAX_sheenRoughnessTexture 0
#elif SC_USE_UV_MIN_MAX_sheenRoughnessTexture==1
#undef SC_USE_UV_MIN_MAX_sheenRoughnessTexture
#define SC_USE_UV_MIN_MAX_sheenRoughnessTexture 1
#endif
#ifndef SC_USE_CLAMP_TO_BORDER_sheenRoughnessTexture
#define SC_USE_CLAMP_TO_BORDER_sheenRoughnessTexture 0
#elif SC_USE_CLAMP_TO_BORDER_sheenRoughnessTexture==1
#undef SC_USE_CLAMP_TO_BORDER_sheenRoughnessTexture
#define SC_USE_CLAMP_TO_BORDER_sheenRoughnessTexture 1
#endif
#ifndef Tweak_N37
#define Tweak_N37 0
#endif
#ifndef ENABLE_CLEARCOAT_TEX
#define ENABLE_CLEARCOAT_TEX 0
#elif ENABLE_CLEARCOAT_TEX==1
#undef ENABLE_CLEARCOAT_TEX
#define ENABLE_CLEARCOAT_TEX 1
#endif
#ifndef SC_USE_UV_TRANSFORM_clearcoatTexture
#define SC_USE_UV_TRANSFORM_clearcoatTexture 0
#elif SC_USE_UV_TRANSFORM_clearcoatTexture==1
#undef SC_USE_UV_TRANSFORM_clearcoatTexture
#define SC_USE_UV_TRANSFORM_clearcoatTexture 1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_U_clearcoatTexture
#define SC_SOFTWARE_WRAP_MODE_U_clearcoatTexture -1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_V_clearcoatTexture
#define SC_SOFTWARE_WRAP_MODE_V_clearcoatTexture -1
#endif
#ifndef SC_USE_UV_MIN_MAX_clearcoatTexture
#define SC_USE_UV_MIN_MAX_clearcoatTexture 0
#elif SC_USE_UV_MIN_MAX_clearcoatTexture==1
#undef SC_USE_UV_MIN_MAX_clearcoatTexture
#define SC_USE_UV_MIN_MAX_clearcoatTexture 1
#endif
#ifndef SC_USE_CLAMP_TO_BORDER_clearcoatTexture
#define SC_USE_CLAMP_TO_BORDER_clearcoatTexture 0
#elif SC_USE_CLAMP_TO_BORDER_clearcoatTexture==1
#undef SC_USE_CLAMP_TO_BORDER_clearcoatTexture
#define SC_USE_CLAMP_TO_BORDER_clearcoatTexture 1
#endif
#ifndef Tweak_N44
#define Tweak_N44 0
#endif
#ifndef ENABLE_CLEARCOAT_ROUGHNESS_TEX
#define ENABLE_CLEARCOAT_ROUGHNESS_TEX 0
#elif ENABLE_CLEARCOAT_ROUGHNESS_TEX==1
#undef ENABLE_CLEARCOAT_ROUGHNESS_TEX
#define ENABLE_CLEARCOAT_ROUGHNESS_TEX 1
#endif
#ifndef SC_USE_UV_TRANSFORM_clearcoatRoughnessTexture
#define SC_USE_UV_TRANSFORM_clearcoatRoughnessTexture 0
#elif SC_USE_UV_TRANSFORM_clearcoatRoughnessTexture==1
#undef SC_USE_UV_TRANSFORM_clearcoatRoughnessTexture
#define SC_USE_UV_TRANSFORM_clearcoatRoughnessTexture 1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_U_clearcoatRoughnessTexture
#define SC_SOFTWARE_WRAP_MODE_U_clearcoatRoughnessTexture -1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_V_clearcoatRoughnessTexture
#define SC_SOFTWARE_WRAP_MODE_V_clearcoatRoughnessTexture -1
#endif
#ifndef SC_USE_UV_MIN_MAX_clearcoatRoughnessTexture
#define SC_USE_UV_MIN_MAX_clearcoatRoughnessTexture 0
#elif SC_USE_UV_MIN_MAX_clearcoatRoughnessTexture==1
#undef SC_USE_UV_MIN_MAX_clearcoatRoughnessTexture
#define SC_USE_UV_MIN_MAX_clearcoatRoughnessTexture 1
#endif
#ifndef SC_USE_CLAMP_TO_BORDER_clearcoatRoughnessTexture
#define SC_USE_CLAMP_TO_BORDER_clearcoatRoughnessTexture 0
#elif SC_USE_CLAMP_TO_BORDER_clearcoatRoughnessTexture==1
#undef SC_USE_CLAMP_TO_BORDER_clearcoatRoughnessTexture
#define SC_USE_CLAMP_TO_BORDER_clearcoatRoughnessTexture 1
#endif
#ifndef Tweak_N60
#define Tweak_N60 0
#endif
#ifndef ENABLE_CLEARCOAT_NORMAL_TEX
#define ENABLE_CLEARCOAT_NORMAL_TEX 0
#elif ENABLE_CLEARCOAT_NORMAL_TEX==1
#undef ENABLE_CLEARCOAT_NORMAL_TEX
#define ENABLE_CLEARCOAT_NORMAL_TEX 1
#endif
#ifndef SC_USE_UV_TRANSFORM_clearcoatNormalTexture
#define SC_USE_UV_TRANSFORM_clearcoatNormalTexture 0
#elif SC_USE_UV_TRANSFORM_clearcoatNormalTexture==1
#undef SC_USE_UV_TRANSFORM_clearcoatNormalTexture
#define SC_USE_UV_TRANSFORM_clearcoatNormalTexture 1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_U_clearcoatNormalTexture
#define SC_SOFTWARE_WRAP_MODE_U_clearcoatNormalTexture -1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_V_clearcoatNormalTexture
#define SC_SOFTWARE_WRAP_MODE_V_clearcoatNormalTexture -1
#endif
#ifndef SC_USE_UV_MIN_MAX_clearcoatNormalTexture
#define SC_USE_UV_MIN_MAX_clearcoatNormalTexture 0
#elif SC_USE_UV_MIN_MAX_clearcoatNormalTexture==1
#undef SC_USE_UV_MIN_MAX_clearcoatNormalTexture
#define SC_USE_UV_MIN_MAX_clearcoatNormalTexture 1
#endif
#ifndef SC_USE_CLAMP_TO_BORDER_clearcoatNormalTexture
#define SC_USE_CLAMP_TO_BORDER_clearcoatNormalTexture 0
#elif SC_USE_CLAMP_TO_BORDER_clearcoatNormalTexture==1
#undef SC_USE_CLAMP_TO_BORDER_clearcoatNormalTexture
#define SC_USE_CLAMP_TO_BORDER_clearcoatNormalTexture 1
#endif
#ifndef Tweak_N47
#define Tweak_N47 0
#endif
#ifndef ENABLE_TEXTURE_TRANSFORM
#define ENABLE_TEXTURE_TRANSFORM 0
#elif ENABLE_TEXTURE_TRANSFORM==1
#undef ENABLE_TEXTURE_TRANSFORM
#define ENABLE_TEXTURE_TRANSFORM 1
#endif
#ifndef ENABLE_EMISSIVE_TEXTURE_TRANSFORM
#define ENABLE_EMISSIVE_TEXTURE_TRANSFORM 0
#elif ENABLE_EMISSIVE_TEXTURE_TRANSFORM==1
#undef ENABLE_EMISSIVE_TEXTURE_TRANSFORM
#define ENABLE_EMISSIVE_TEXTURE_TRANSFORM 1
#endif
#ifndef ENABLE_NORMAL_TEXTURE_TRANSFORM
#define ENABLE_NORMAL_TEXTURE_TRANSFORM 0
#elif ENABLE_NORMAL_TEXTURE_TRANSFORM==1
#undef ENABLE_NORMAL_TEXTURE_TRANSFORM
#define ENABLE_NORMAL_TEXTURE_TRANSFORM 1
#endif
#ifndef ENABLE_METALLIC_ROUGHNESS_TEXTURE_TRANSFORM
#define ENABLE_METALLIC_ROUGHNESS_TEXTURE_TRANSFORM 0
#elif ENABLE_METALLIC_ROUGHNESS_TEXTURE_TRANSFORM==1
#undef ENABLE_METALLIC_ROUGHNESS_TEXTURE_TRANSFORM
#define ENABLE_METALLIC_ROUGHNESS_TEXTURE_TRANSFORM 1
#endif
#ifndef ENABLE_TRANSMISSION_TEXTURE_TRANSFORM
#define ENABLE_TRANSMISSION_TEXTURE_TRANSFORM 0
#elif ENABLE_TRANSMISSION_TEXTURE_TRANSFORM==1
#undef ENABLE_TRANSMISSION_TEXTURE_TRANSFORM
#define ENABLE_TRANSMISSION_TEXTURE_TRANSFORM 1
#endif
#ifndef ENABLE_SHEEN_COLOR_TEXTURE_TRANSFORM
#define ENABLE_SHEEN_COLOR_TEXTURE_TRANSFORM 0
#elif ENABLE_SHEEN_COLOR_TEXTURE_TRANSFORM==1
#undef ENABLE_SHEEN_COLOR_TEXTURE_TRANSFORM
#define ENABLE_SHEEN_COLOR_TEXTURE_TRANSFORM 1
#endif
#ifndef ENABLE_SHEEN_ROUGHNESS_TEXTURE_TRANSFORM
#define ENABLE_SHEEN_ROUGHNESS_TEXTURE_TRANSFORM 0
#elif ENABLE_SHEEN_ROUGHNESS_TEXTURE_TRANSFORM==1
#undef ENABLE_SHEEN_ROUGHNESS_TEXTURE_TRANSFORM
#define ENABLE_SHEEN_ROUGHNESS_TEXTURE_TRANSFORM 1
#endif
#ifndef ENABLE_CLEARCOAT_TEXTURE_TRANSFORM
#define ENABLE_CLEARCOAT_TEXTURE_TRANSFORM 0
#elif ENABLE_CLEARCOAT_TEXTURE_TRANSFORM==1
#undef ENABLE_CLEARCOAT_TEXTURE_TRANSFORM
#define ENABLE_CLEARCOAT_TEXTURE_TRANSFORM 1
#endif
#ifndef ENABLE_CLEARCOAT_NORMAL_TEXTURE_TRANSFORM
#define ENABLE_CLEARCOAT_NORMAL_TEXTURE_TRANSFORM 0
#elif ENABLE_CLEARCOAT_NORMAL_TEXTURE_TRANSFORM==1
#undef ENABLE_CLEARCOAT_NORMAL_TEXTURE_TRANSFORM
#define ENABLE_CLEARCOAT_NORMAL_TEXTURE_TRANSFORM 1
#endif
#ifndef ENABLE_CLEARCOAT_ROUGHNESS_TEXTURE_TRANSFORM
#define ENABLE_CLEARCOAT_ROUGHNESS_TEXTURE_TRANSFORM 0
#elif ENABLE_CLEARCOAT_ROUGHNESS_TEXTURE_TRANSFORM==1
#undef ENABLE_CLEARCOAT_ROUGHNESS_TEXTURE_TRANSFORM
#define ENABLE_CLEARCOAT_ROUGHNESS_TEXTURE_TRANSFORM 1
#endif
#ifndef ENABLE_VERTEX_COLOR_BASE
#define ENABLE_VERTEX_COLOR_BASE 0
#elif ENABLE_VERTEX_COLOR_BASE==1
#undef ENABLE_VERTEX_COLOR_BASE
#define ENABLE_VERTEX_COLOR_BASE 1
#endif
#ifndef ENABLE_BASE_TEX
#define ENABLE_BASE_TEX 0
#elif ENABLE_BASE_TEX==1
#undef ENABLE_BASE_TEX
#define ENABLE_BASE_TEX 1
#endif
#ifndef SC_USE_UV_TRANSFORM_baseColorTexture
#define SC_USE_UV_TRANSFORM_baseColorTexture 0
#elif SC_USE_UV_TRANSFORM_baseColorTexture==1
#undef SC_USE_UV_TRANSFORM_baseColorTexture
#define SC_USE_UV_TRANSFORM_baseColorTexture 1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_U_baseColorTexture
#define SC_SOFTWARE_WRAP_MODE_U_baseColorTexture -1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_V_baseColorTexture
#define SC_SOFTWARE_WRAP_MODE_V_baseColorTexture -1
#endif
#ifndef SC_USE_UV_MIN_MAX_baseColorTexture
#define SC_USE_UV_MIN_MAX_baseColorTexture 0
#elif SC_USE_UV_MIN_MAX_baseColorTexture==1
#undef SC_USE_UV_MIN_MAX_baseColorTexture
#define SC_USE_UV_MIN_MAX_baseColorTexture 1
#endif
#ifndef SC_USE_CLAMP_TO_BORDER_baseColorTexture
#define SC_USE_CLAMP_TO_BORDER_baseColorTexture 0
#elif SC_USE_CLAMP_TO_BORDER_baseColorTexture==1
#undef SC_USE_CLAMP_TO_BORDER_baseColorTexture
#define SC_USE_CLAMP_TO_BORDER_baseColorTexture 1
#endif
#ifndef NODE_7_DROPLIST_ITEM
#define NODE_7_DROPLIST_ITEM 0
#endif
#ifndef ENABLE_BASE_TEXTURE_TRANSFORM
#define ENABLE_BASE_TEXTURE_TRANSFORM 0
#elif ENABLE_BASE_TEXTURE_TRANSFORM==1
#undef ENABLE_BASE_TEXTURE_TRANSFORM
#define ENABLE_BASE_TEXTURE_TRANSFORM 1
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
uniform vec3 sc_EnvmapRotation;
uniform vec4 sc_EnvmapSpecularSize;
uniform float sc_EnvmapExposure;
uniform sc_AmbientLight_t sc_AmbientLights[sc_AmbientLightsCount+1];
uniform sc_DirectionalLight_t sc_DirectionalLights[sc_DirectionalLightsCount+1];
uniform sc_PointLight_t sc_PointLights[sc_PointLightsCount+1];
uniform mat3 emissiveTextureTransform;
uniform vec4 emissiveTextureUvMinMax;
uniform vec4 emissiveTextureBorderColor;
uniform mat3 normalTextureTransform;
uniform vec4 normalTextureUvMinMax;
uniform vec4 normalTextureBorderColor;
uniform mat3 metallicRoughnessTextureTransform;
uniform vec4 metallicRoughnessTextureUvMinMax;
uniform vec4 metallicRoughnessTextureBorderColor;
uniform mat3 transmissionTextureTransform;
uniform vec4 transmissionTextureUvMinMax;
uniform vec4 transmissionTextureBorderColor;
uniform mat3 screenTextureTransform;
uniform vec4 screenTextureUvMinMax;
uniform vec4 screenTextureBorderColor;
uniform mat3 sheenColorTextureTransform;
uniform vec4 sheenColorTextureUvMinMax;
uniform vec4 sheenColorTextureBorderColor;
uniform mat3 sheenRoughnessTextureTransform;
uniform vec4 sheenRoughnessTextureUvMinMax;
uniform vec4 sheenRoughnessTextureBorderColor;
uniform mat3 clearcoatTextureTransform;
uniform vec4 clearcoatTextureUvMinMax;
uniform vec4 clearcoatTextureBorderColor;
uniform mat3 clearcoatRoughnessTextureTransform;
uniform vec4 clearcoatRoughnessTextureUvMinMax;
uniform vec4 clearcoatRoughnessTextureBorderColor;
uniform mat3 clearcoatNormalTextureTransform;
uniform vec4 clearcoatNormalTextureUvMinMax;
uniform vec4 clearcoatNormalTextureBorderColor;
uniform vec3 emissiveFactor;
uniform float normalTextureScale;
uniform float metallicFactor;
uniform float roughnessFactor;
uniform float occlusionTextureStrength;
uniform float transmissionFactor;
uniform vec3 sheenColorFactor;
uniform float sheenRoughnessFactor;
uniform float clearcoatFactor;
uniform float clearcoatRoughnessFactor;
uniform mat3 baseColorTextureTransform;
uniform vec4 baseColorTextureUvMinMax;
uniform vec4 baseColorTextureBorderColor;
uniform vec4 baseColorFactor;
uniform vec2 baseColorTexture_offset;
uniform vec2 baseColorTexture_scale;
uniform float baseColorTexture_rotation;
uniform vec2 emissiveTexture_offset;
uniform vec2 emissiveTexture_scale;
uniform float emissiveTexture_rotation;
uniform vec2 normalTexture_offset;
uniform vec2 normalTexture_scale;
uniform float normalTexture_rotation;
uniform vec2 metallicRoughnessTexture_offset;
uniform vec2 metallicRoughnessTexture_scale;
uniform float metallicRoughnessTexture_rotation;
uniform vec2 transmissionTexture_offset;
uniform vec2 transmissionTexture_scale;
uniform float transmissionTexture_rotation;
uniform vec2 sheenColorTexture_offset;
uniform vec2 sheenColorTexture_scale;
uniform float sheenColorTexture_rotation;
uniform vec2 sheenRoughnessTexture_offset;
uniform vec2 sheenRoughnessTexture_scale;
uniform float sheenRoughnessTexture_rotation;
uniform vec2 clearcoatTexture_offset;
uniform vec2 clearcoatTexture_scale;
uniform float clearcoatTexture_rotation;
uniform vec2 clearcoatNormalTexture_offset;
uniform vec2 clearcoatNormalTexture_scale;
uniform float clearcoatNormalTexture_rotation;
uniform vec2 clearcoatRoughnessTexture_offset;
uniform vec2 clearcoatRoughnessTexture_scale;
uniform float clearcoatRoughnessTexture_rotation;
uniform float Port_Opacity_N405;
uniform vec4 sc_Time;
uniform sampler2D baseColorTexture;
uniform sampler2DArray baseColorTextureArrSC;
uniform sampler2D emissiveTexture;
uniform sampler2DArray emissiveTextureArrSC;
uniform sampler2D normalTexture;
uniform sampler2DArray normalTextureArrSC;
uniform sampler2D metallicRoughnessTexture;
uniform sampler2DArray metallicRoughnessTextureArrSC;
uniform sampler2D screenTexture;
uniform sampler2DArray screenTextureArrSC;
uniform sampler2D transmissionTexture;
uniform sampler2DArray transmissionTextureArrSC;
uniform sampler2D sheenColorTexture;
uniform sampler2DArray sheenColorTextureArrSC;
uniform sampler2D sheenRoughnessTexture;
uniform sampler2DArray sheenRoughnessTextureArrSC;
uniform sampler2D sc_EnvmapSpecular;
uniform sampler2DArray sc_EnvmapSpecularArrSC;
uniform sampler2D clearcoatTexture;
uniform sampler2DArray clearcoatTextureArrSC;
uniform sampler2D clearcoatRoughnessTexture;
uniform sampler2DArray clearcoatRoughnessTextureArrSC;
uniform sampler2D clearcoatNormalTexture;
uniform sampler2DArray clearcoatNormalTextureArrSC;
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
void Node40_Bool_Parameter(out float Output,ssGlobals Globals)
{
#if (ENABLE_VERTEX_COLOR_BASE)
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
void Node121_Bool_Parameter(out float Output,ssGlobals Globals)
{
#if (ENABLE_BASE_TEX)
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
void Node48_Bool_Parameter(out float Output,ssGlobals Globals)
{
#if (ENABLE_TEXTURE_TRANSFORM)
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
void Node88_Bool_Parameter(out float Output,ssGlobals Globals)
{
#if (ENABLE_BASE_TEXTURE_TRANSFORM)
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
vec2 N35_getUV(int pickUV)
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
return l9_2;
}
vec2 N35_uvTransform(vec2 uvIn,vec2 offset,vec2 scale,float rotation)
{
return (((mat3(vec3(1.0,0.0,0.0),vec3(0.0,1.0,0.0),vec3(offset.x,offset.y,1.0))*mat3(vec3(cos(rotation),sin(rotation),0.0),vec3(-sin(rotation),cos(rotation),0.0),vec3(0.0,0.0,1.0)))*mat3(vec3(scale.x,0.0,0.0),vec3(0.0,scale.y,0.0),vec3(0.0,0.0,1.0)))*vec3(uvIn,1.0)).xy;
}
int baseColorTextureGetStereoViewIndex()
{
int l9_0;
#if (baseColorTextureHasSwappedViews)
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
vec4 N35_BaseTexture_sample(vec2 coords)
{
vec4 l9_0;
#if (baseColorTextureLayout==2)
{
bool l9_1=(int(SC_USE_CLAMP_TO_BORDER_baseColorTexture)!=0)&&(!(int(SC_USE_UV_MIN_MAX_baseColorTexture)!=0));
float l9_2=coords.x;
sc_SoftwareWrapEarly(l9_2,ivec2(SC_SOFTWARE_WRAP_MODE_U_baseColorTexture,SC_SOFTWARE_WRAP_MODE_V_baseColorTexture).x);
float l9_3=l9_2;
float l9_4=coords.y;
sc_SoftwareWrapEarly(l9_4,ivec2(SC_SOFTWARE_WRAP_MODE_U_baseColorTexture,SC_SOFTWARE_WRAP_MODE_V_baseColorTexture).y);
float l9_5=l9_4;
vec2 l9_6;
float l9_7;
#if (SC_USE_UV_MIN_MAX_baseColorTexture)
{
bool l9_8;
#if (SC_USE_CLAMP_TO_BORDER_baseColorTexture)
{
l9_8=ivec2(SC_SOFTWARE_WRAP_MODE_U_baseColorTexture,SC_SOFTWARE_WRAP_MODE_V_baseColorTexture).x==3;
}
#else
{
l9_8=(int(SC_USE_CLAMP_TO_BORDER_baseColorTexture)!=0);
}
#endif
float l9_9=l9_3;
float l9_10=1.0;
sc_ClampUV(l9_9,baseColorTextureUvMinMax.x,baseColorTextureUvMinMax.z,l9_8,l9_10);
float l9_11=l9_9;
float l9_12=l9_10;
bool l9_13;
#if (SC_USE_CLAMP_TO_BORDER_baseColorTexture)
{
l9_13=ivec2(SC_SOFTWARE_WRAP_MODE_U_baseColorTexture,SC_SOFTWARE_WRAP_MODE_V_baseColorTexture).y==3;
}
#else
{
l9_13=(int(SC_USE_CLAMP_TO_BORDER_baseColorTexture)!=0);
}
#endif
float l9_14=l9_5;
float l9_15=l9_12;
sc_ClampUV(l9_14,baseColorTextureUvMinMax.y,baseColorTextureUvMinMax.w,l9_13,l9_15);
l9_7=l9_15;
l9_6=vec2(l9_11,l9_14);
}
#else
{
l9_7=1.0;
l9_6=vec2(l9_3,l9_5);
}
#endif
vec2 l9_16=sc_TransformUV(l9_6,(int(SC_USE_UV_TRANSFORM_baseColorTexture)!=0),baseColorTextureTransform);
float l9_17=l9_16.x;
float l9_18=l9_7;
sc_SoftwareWrapLate(l9_17,ivec2(SC_SOFTWARE_WRAP_MODE_U_baseColorTexture,SC_SOFTWARE_WRAP_MODE_V_baseColorTexture).x,l9_1,l9_18);
float l9_19=l9_16.y;
float l9_20=l9_18;
sc_SoftwareWrapLate(l9_19,ivec2(SC_SOFTWARE_WRAP_MODE_U_baseColorTexture,SC_SOFTWARE_WRAP_MODE_V_baseColorTexture).y,l9_1,l9_20);
float l9_21=l9_20;
vec3 l9_22=sc_SamplingCoordsViewToGlobal(vec2(l9_17,l9_19),baseColorTextureLayout,baseColorTextureGetStereoViewIndex());
vec4 l9_23=texture(baseColorTextureArrSC,l9_22,0.0);
vec4 l9_24;
#if (SC_USE_CLAMP_TO_BORDER_baseColorTexture)
{
l9_24=mix(baseColorTextureBorderColor,l9_23,vec4(l9_21));
}
#else
{
l9_24=l9_23;
}
#endif
l9_0=l9_24;
}
#else
{
bool l9_25=(int(SC_USE_CLAMP_TO_BORDER_baseColorTexture)!=0)&&(!(int(SC_USE_UV_MIN_MAX_baseColorTexture)!=0));
float l9_26=coords.x;
sc_SoftwareWrapEarly(l9_26,ivec2(SC_SOFTWARE_WRAP_MODE_U_baseColorTexture,SC_SOFTWARE_WRAP_MODE_V_baseColorTexture).x);
float l9_27=l9_26;
float l9_28=coords.y;
sc_SoftwareWrapEarly(l9_28,ivec2(SC_SOFTWARE_WRAP_MODE_U_baseColorTexture,SC_SOFTWARE_WRAP_MODE_V_baseColorTexture).y);
float l9_29=l9_28;
vec2 l9_30;
float l9_31;
#if (SC_USE_UV_MIN_MAX_baseColorTexture)
{
bool l9_32;
#if (SC_USE_CLAMP_TO_BORDER_baseColorTexture)
{
l9_32=ivec2(SC_SOFTWARE_WRAP_MODE_U_baseColorTexture,SC_SOFTWARE_WRAP_MODE_V_baseColorTexture).x==3;
}
#else
{
l9_32=(int(SC_USE_CLAMP_TO_BORDER_baseColorTexture)!=0);
}
#endif
float l9_33=l9_27;
float l9_34=1.0;
sc_ClampUV(l9_33,baseColorTextureUvMinMax.x,baseColorTextureUvMinMax.z,l9_32,l9_34);
float l9_35=l9_33;
float l9_36=l9_34;
bool l9_37;
#if (SC_USE_CLAMP_TO_BORDER_baseColorTexture)
{
l9_37=ivec2(SC_SOFTWARE_WRAP_MODE_U_baseColorTexture,SC_SOFTWARE_WRAP_MODE_V_baseColorTexture).y==3;
}
#else
{
l9_37=(int(SC_USE_CLAMP_TO_BORDER_baseColorTexture)!=0);
}
#endif
float l9_38=l9_29;
float l9_39=l9_36;
sc_ClampUV(l9_38,baseColorTextureUvMinMax.y,baseColorTextureUvMinMax.w,l9_37,l9_39);
l9_31=l9_39;
l9_30=vec2(l9_35,l9_38);
}
#else
{
l9_31=1.0;
l9_30=vec2(l9_27,l9_29);
}
#endif
vec2 l9_40=sc_TransformUV(l9_30,(int(SC_USE_UV_TRANSFORM_baseColorTexture)!=0),baseColorTextureTransform);
float l9_41=l9_40.x;
float l9_42=l9_31;
sc_SoftwareWrapLate(l9_41,ivec2(SC_SOFTWARE_WRAP_MODE_U_baseColorTexture,SC_SOFTWARE_WRAP_MODE_V_baseColorTexture).x,l9_25,l9_42);
float l9_43=l9_40.y;
float l9_44=l9_42;
sc_SoftwareWrapLate(l9_43,ivec2(SC_SOFTWARE_WRAP_MODE_U_baseColorTexture,SC_SOFTWARE_WRAP_MODE_V_baseColorTexture).y,l9_25,l9_44);
float l9_45=l9_44;
vec3 l9_46=sc_SamplingCoordsViewToGlobal(vec2(l9_41,l9_43),baseColorTextureLayout,baseColorTextureGetStereoViewIndex());
vec4 l9_47=texture(baseColorTexture,l9_46.xy,0.0);
vec4 l9_48;
#if (SC_USE_CLAMP_TO_BORDER_baseColorTexture)
{
l9_48=mix(baseColorTextureBorderColor,l9_47,vec4(l9_45));
}
#else
{
l9_48=l9_47;
}
#endif
l9_0=l9_48;
}
#endif
return l9_0;
}
vec4 ssSRGB_to_Linear(vec4 value)
{
vec4 l9_0;
#if (SC_DEVICE_CLASS>=2)
{
l9_0=vec4(pow(value.x,2.2),pow(value.y,2.2),pow(value.z,2.2),pow(value.w,2.2));
}
#else
{
l9_0=value*value;
}
#endif
return l9_0;
}
vec4 ssLinear_to_SRGB(vec4 value)
{
vec4 l9_0;
#if (SC_DEVICE_CLASS>=2)
{
l9_0=vec4(pow(value.x,0.45454544),pow(value.y,0.45454544),pow(value.z,0.45454544),pow(value.w,0.45454544));
}
#else
{
l9_0=sqrt(value);
}
#endif
return l9_0;
}
vec2 N3_getUV(int pickUV)
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
return l9_2;
}
vec2 N3_uvTransform(vec2 uvIn,vec2 offset,vec2 scale,float rotationAngle)
{
float l9_0=radians(rotationAngle);
float l9_1=cos(l9_0);
float l9_2=sin(l9_0);
return (((mat3(vec3(1.0,0.0,0.0),vec3(0.0,1.0,0.0),vec3(offset.x,offset.y,1.0))*mat3(vec3(l9_1,l9_2,0.0),vec3(-l9_2,l9_1,0.0),vec3(0.0,0.0,1.0)))*mat3(vec3(scale.x,0.0,0.0),vec3(0.0,scale.y,0.0),vec3(0.0,0.0,1.0)))*vec3(uvIn,1.0)).xy;
}
int emissiveTextureGetStereoViewIndex()
{
int l9_0;
#if (emissiveTextureHasSwappedViews)
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
int normalTextureGetStereoViewIndex()
{
int l9_0;
#if (normalTextureHasSwappedViews)
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
int metallicRoughnessTextureGetStereoViewIndex()
{
int l9_0;
#if (metallicRoughnessTextureHasSwappedViews)
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
int screenTextureGetStereoViewIndex()
{
int l9_0;
#if (screenTextureHasSwappedViews)
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
int transmissionTextureGetStereoViewIndex()
{
int l9_0;
#if (transmissionTextureHasSwappedViews)
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
vec3 ssLinear_to_SRGB(vec3 value)
{
vec3 l9_0;
#if (SC_DEVICE_CLASS>=2)
{
l9_0=vec3(pow(value.x,0.45454544),pow(value.y,0.45454544),pow(value.z,0.45454544));
}
#else
{
l9_0=sqrt(value);
}
#endif
return l9_0;
}
int sheenColorTextureGetStereoViewIndex()
{
int l9_0;
#if (sheenColorTextureHasSwappedViews)
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
int sheenRoughnessTextureGetStereoViewIndex()
{
int l9_0;
#if (sheenRoughnessTextureHasSwappedViews)
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
float ssSRGB_to_Linear(float value)
{
float l9_0;
#if (SC_DEVICE_CLASS>=2)
{
l9_0=pow(value,2.2);
}
#else
{
l9_0=value*value;
}
#endif
return l9_0;
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
float ssPow(float A,float B)
{
float l9_0;
if (A<=0.0)
{
l9_0=0.0;
}
else
{
l9_0=pow(A,B);
}
return l9_0;
}
float N3_charlieD(float roughness,float NdotH)
{
float l9_0=1.0/roughness;
return ((2.0+l9_0)*ssPow(1.0-(NdotH*NdotH),l9_0*0.5))/(2.0*3.1415927);
}
int clearcoatTextureGetStereoViewIndex()
{
int l9_0;
#if (clearcoatTextureHasSwappedViews)
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
int clearcoatRoughnessTextureGetStereoViewIndex()
{
int l9_0;
#if (clearcoatRoughnessTextureHasSwappedViews)
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
int clearcoatNormalTextureGetStereoViewIndex()
{
int l9_0;
#if (clearcoatNormalTextureHasSwappedViews)
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
void ngsAlphaTest(float opacity)
{
#if (sc_BlendMode_AlphaTest)
{
if (opacity<alphaTestThreshold)
{
discard;
}
}
#endif
#if (ENABLE_STIPPLE_PATTERN_TEST)
{
if (opacity<((mod(dot(floor(mod(gl_FragCoord.xy,vec2(4.0))),vec2(4.0,1.0))*9.0,16.0)+1.0)/17.0))
{
discard;
}
}
#endif
}
vec2 encode_direction(vec3 d)
{
d/=vec3(dot(abs(d),vec3(1.0)));
float l9_0=d.z;
float l9_1=clamp(-l9_0,0.0,1.0);
vec3 l9_2=d;
float l9_3;
if (d.x>=0.0)
{
l9_3=l9_1;
}
else
{
l9_3=-l9_1;
}
float l9_4=l9_2.x+l9_3;
float l9_5;
if (d.y>=0.0)
{
l9_5=l9_1;
}
else
{
l9_5=-l9_1;
}
return vec2(l9_4,l9_2.y+l9_5);
}
void sc_WriteReceiverData(vec3 positionWS,vec3 normalWS,float roughness)
{
if (dot(normalize(sc_Camera.position-positionWS),normalWS)>=(-0.050000001))
{
uvec3 l9_0=uvec3(round((positionWS-OriginNormalizationOffset)*OriginNormalizationScale));
position_and_mask=uvec4(l9_0.x,l9_0.y,l9_0.z,position_and_mask.w);
position_and_mask.w=uint(receiver_mask);
vec2 l9_1=encode_direction(normalWS);
uvec2 l9_2=uvec2(packHalf2x16(vec2(l9_1.x,0.0)),packHalf2x16(vec2(l9_1.y,0.0)));
normal_and_more=uvec4(l9_2.x,l9_2.y,normal_and_more.z,normal_and_more.w);
normal_and_more.z=packHalf2x16(vec2(0.0));
uint l9_3;
if (roughness<0.0)
{
l9_3=1023u;
}
else
{
l9_3=uint(clamp(roughness,0.0,1.0)*1000.0);
}
normal_and_more.w=l9_3|uint((receiverId%32)<<int(10u));
}
else
{
position_and_mask=uvec4(0u);
normal_and_more=uvec4(0u);
}
}
void main()
{
#if (sc_DepthOnly)
{
return;
}
#endif
vec3 l9_0=normalize(varNormal);
vec3 l9_1=normalize(varTangent.xyz);
vec3 l9_2=cross(l9_0,l9_1)*varTangent.w;
vec2 l9_3=gl_FragCoord.xy*sc_CurrentRenderTargetDims.zw;
vec2 l9_4;
#if (sc_StereoRenderingMode==1)
{
vec3 l9_5=vec3(l9_3,0.0);
l9_5.y=((2.0*l9_3.y)+float(sc_GetStereoViewIndex()))-1.0;
l9_4=l9_5.xy;
}
#else
{
l9_4=l9_3;
}
#endif
ssGlobals l9_6=ssGlobals(sc_Time.x,sc_Time.y,0.0,vec3(0.0),normalize(sc_Camera.position-varPos),varPos,varPos,l9_0,l9_1,l9_2,varPackedTex.xy,varPackedTex.zw,l9_4,varColor);
#if (ENABLE_GLTF_LIGHTING)
{
float l9_7;
Node40_Bool_Parameter(l9_7,l9_6);
float l9_8;
Node121_Bool_Parameter(l9_8,l9_6);
float l9_9;
Node48_Bool_Parameter(l9_9,l9_6);
float l9_10;
Node88_Bool_Parameter(l9_10,l9_6);
tempGlobals=l9_6;
vec4 l9_11;
#if (ENABLE_BASE_TEX)
{
vec2 l9_12=N35_getUV(NODE_7_DROPLIST_ITEM);
vec2 l9_13;
if ((int(ENABLE_TEXTURE_TRANSFORM)!=0)&&(int(ENABLE_BASE_TEXTURE_TRANSFORM)!=0))
{
l9_13=N35_uvTransform(l9_12,baseColorTexture_offset,baseColorTexture_scale,baseColorTexture_rotation);
}
else
{
l9_13=l9_12;
}
l9_11=baseColorFactor*ssSRGB_to_Linear(N35_BaseTexture_sample(l9_13));
}
#else
{
l9_11=baseColorFactor;
}
#endif
vec4 l9_14;
#if (ENABLE_VERTEX_COLOR_BASE)
{
l9_14=l9_11*tempGlobals.VertexColor;
}
#else
{
l9_14=l9_11;
}
#endif
tempGlobals=l9_6;
vec3 l9_15;
#if (ENABLE_EMISSIVE)
{
vec2 l9_16=N3_getUV(NODE_10_DROPLIST_ITEM);
vec2 l9_17;
if ((int(ENABLE_TEXTURE_TRANSFORM)!=0)&&(int(ENABLE_EMISSIVE_TEXTURE_TRANSFORM)!=0))
{
l9_17=N3_uvTransform(l9_16,emissiveTexture_offset,emissiveTexture_scale,emissiveTexture_rotation);
}
else
{
l9_17=l9_16;
}
vec4 l9_18;
#if (emissiveTextureLayout==2)
{
bool l9_19=(int(SC_USE_CLAMP_TO_BORDER_emissiveTexture)!=0)&&(!(int(SC_USE_UV_MIN_MAX_emissiveTexture)!=0));
float l9_20=l9_17.x;
sc_SoftwareWrapEarly(l9_20,ivec2(SC_SOFTWARE_WRAP_MODE_U_emissiveTexture,SC_SOFTWARE_WRAP_MODE_V_emissiveTexture).x);
float l9_21=l9_20;
float l9_22=l9_17.y;
sc_SoftwareWrapEarly(l9_22,ivec2(SC_SOFTWARE_WRAP_MODE_U_emissiveTexture,SC_SOFTWARE_WRAP_MODE_V_emissiveTexture).y);
float l9_23=l9_22;
vec2 l9_24;
float l9_25;
#if (SC_USE_UV_MIN_MAX_emissiveTexture)
{
bool l9_26;
#if (SC_USE_CLAMP_TO_BORDER_emissiveTexture)
{
l9_26=ivec2(SC_SOFTWARE_WRAP_MODE_U_emissiveTexture,SC_SOFTWARE_WRAP_MODE_V_emissiveTexture).x==3;
}
#else
{
l9_26=(int(SC_USE_CLAMP_TO_BORDER_emissiveTexture)!=0);
}
#endif
float l9_27=l9_21;
float l9_28=1.0;
sc_ClampUV(l9_27,emissiveTextureUvMinMax.x,emissiveTextureUvMinMax.z,l9_26,l9_28);
float l9_29=l9_27;
float l9_30=l9_28;
bool l9_31;
#if (SC_USE_CLAMP_TO_BORDER_emissiveTexture)
{
l9_31=ivec2(SC_SOFTWARE_WRAP_MODE_U_emissiveTexture,SC_SOFTWARE_WRAP_MODE_V_emissiveTexture).y==3;
}
#else
{
l9_31=(int(SC_USE_CLAMP_TO_BORDER_emissiveTexture)!=0);
}
#endif
float l9_32=l9_23;
float l9_33=l9_30;
sc_ClampUV(l9_32,emissiveTextureUvMinMax.y,emissiveTextureUvMinMax.w,l9_31,l9_33);
l9_25=l9_33;
l9_24=vec2(l9_29,l9_32);
}
#else
{
l9_25=1.0;
l9_24=vec2(l9_21,l9_23);
}
#endif
vec2 l9_34=sc_TransformUV(l9_24,(int(SC_USE_UV_TRANSFORM_emissiveTexture)!=0),emissiveTextureTransform);
float l9_35=l9_34.x;
float l9_36=l9_25;
sc_SoftwareWrapLate(l9_35,ivec2(SC_SOFTWARE_WRAP_MODE_U_emissiveTexture,SC_SOFTWARE_WRAP_MODE_V_emissiveTexture).x,l9_19,l9_36);
float l9_37=l9_34.y;
float l9_38=l9_36;
sc_SoftwareWrapLate(l9_37,ivec2(SC_SOFTWARE_WRAP_MODE_U_emissiveTexture,SC_SOFTWARE_WRAP_MODE_V_emissiveTexture).y,l9_19,l9_38);
float l9_39=l9_38;
vec3 l9_40=sc_SamplingCoordsViewToGlobal(vec2(l9_35,l9_37),emissiveTextureLayout,emissiveTextureGetStereoViewIndex());
vec4 l9_41=texture(emissiveTextureArrSC,l9_40,0.0);
vec4 l9_42;
#if (SC_USE_CLAMP_TO_BORDER_emissiveTexture)
{
l9_42=mix(emissiveTextureBorderColor,l9_41,vec4(l9_39));
}
#else
{
l9_42=l9_41;
}
#endif
l9_18=l9_42;
}
#else
{
bool l9_43=(int(SC_USE_CLAMP_TO_BORDER_emissiveTexture)!=0)&&(!(int(SC_USE_UV_MIN_MAX_emissiveTexture)!=0));
float l9_44=l9_17.x;
sc_SoftwareWrapEarly(l9_44,ivec2(SC_SOFTWARE_WRAP_MODE_U_emissiveTexture,SC_SOFTWARE_WRAP_MODE_V_emissiveTexture).x);
float l9_45=l9_44;
float l9_46=l9_17.y;
sc_SoftwareWrapEarly(l9_46,ivec2(SC_SOFTWARE_WRAP_MODE_U_emissiveTexture,SC_SOFTWARE_WRAP_MODE_V_emissiveTexture).y);
float l9_47=l9_46;
vec2 l9_48;
float l9_49;
#if (SC_USE_UV_MIN_MAX_emissiveTexture)
{
bool l9_50;
#if (SC_USE_CLAMP_TO_BORDER_emissiveTexture)
{
l9_50=ivec2(SC_SOFTWARE_WRAP_MODE_U_emissiveTexture,SC_SOFTWARE_WRAP_MODE_V_emissiveTexture).x==3;
}
#else
{
l9_50=(int(SC_USE_CLAMP_TO_BORDER_emissiveTexture)!=0);
}
#endif
float l9_51=l9_45;
float l9_52=1.0;
sc_ClampUV(l9_51,emissiveTextureUvMinMax.x,emissiveTextureUvMinMax.z,l9_50,l9_52);
float l9_53=l9_51;
float l9_54=l9_52;
bool l9_55;
#if (SC_USE_CLAMP_TO_BORDER_emissiveTexture)
{
l9_55=ivec2(SC_SOFTWARE_WRAP_MODE_U_emissiveTexture,SC_SOFTWARE_WRAP_MODE_V_emissiveTexture).y==3;
}
#else
{
l9_55=(int(SC_USE_CLAMP_TO_BORDER_emissiveTexture)!=0);
}
#endif
float l9_56=l9_47;
float l9_57=l9_54;
sc_ClampUV(l9_56,emissiveTextureUvMinMax.y,emissiveTextureUvMinMax.w,l9_55,l9_57);
l9_49=l9_57;
l9_48=vec2(l9_53,l9_56);
}
#else
{
l9_49=1.0;
l9_48=vec2(l9_45,l9_47);
}
#endif
vec2 l9_58=sc_TransformUV(l9_48,(int(SC_USE_UV_TRANSFORM_emissiveTexture)!=0),emissiveTextureTransform);
float l9_59=l9_58.x;
float l9_60=l9_49;
sc_SoftwareWrapLate(l9_59,ivec2(SC_SOFTWARE_WRAP_MODE_U_emissiveTexture,SC_SOFTWARE_WRAP_MODE_V_emissiveTexture).x,l9_43,l9_60);
float l9_61=l9_58.y;
float l9_62=l9_60;
sc_SoftwareWrapLate(l9_61,ivec2(SC_SOFTWARE_WRAP_MODE_U_emissiveTexture,SC_SOFTWARE_WRAP_MODE_V_emissiveTexture).y,l9_43,l9_62);
float l9_63=l9_62;
vec3 l9_64=sc_SamplingCoordsViewToGlobal(vec2(l9_59,l9_61),emissiveTextureLayout,emissiveTextureGetStereoViewIndex());
vec4 l9_65=texture(emissiveTexture,l9_64.xy,0.0);
vec4 l9_66;
#if (SC_USE_CLAMP_TO_BORDER_emissiveTexture)
{
l9_66=mix(emissiveTextureBorderColor,l9_65,vec4(l9_63));
}
#else
{
l9_66=l9_65;
}
#endif
l9_18=l9_66;
}
#endif
l9_15=ssSRGB_to_Linear(l9_18.xyz)*ssSRGB_to_Linear(emissiveFactor);
}
#else
{
l9_15=emissiveFactor;
}
#endif
vec3 l9_67=tempGlobals.VertexNormal_WorldSpace;
vec3 l9_68=normalize(l9_67);
vec3 l9_69;
#if (ENABLE_NORMALMAP)
{
vec2 l9_70=N3_getUV(NODE_8_DROPLIST_ITEM);
vec2 l9_71;
if ((int(ENABLE_TEXTURE_TRANSFORM)!=0)&&(int(ENABLE_NORMAL_TEXTURE_TRANSFORM)!=0))
{
l9_71=N3_uvTransform(l9_70,normalTexture_offset,normalTexture_scale,normalTexture_rotation);
}
else
{
l9_71=l9_70;
}
vec4 l9_72;
#if (normalTextureLayout==2)
{
bool l9_73=(int(SC_USE_CLAMP_TO_BORDER_normalTexture)!=0)&&(!(int(SC_USE_UV_MIN_MAX_normalTexture)!=0));
float l9_74=l9_71.x;
sc_SoftwareWrapEarly(l9_74,ivec2(SC_SOFTWARE_WRAP_MODE_U_normalTexture,SC_SOFTWARE_WRAP_MODE_V_normalTexture).x);
float l9_75=l9_74;
float l9_76=l9_71.y;
sc_SoftwareWrapEarly(l9_76,ivec2(SC_SOFTWARE_WRAP_MODE_U_normalTexture,SC_SOFTWARE_WRAP_MODE_V_normalTexture).y);
float l9_77=l9_76;
vec2 l9_78;
float l9_79;
#if (SC_USE_UV_MIN_MAX_normalTexture)
{
bool l9_80;
#if (SC_USE_CLAMP_TO_BORDER_normalTexture)
{
l9_80=ivec2(SC_SOFTWARE_WRAP_MODE_U_normalTexture,SC_SOFTWARE_WRAP_MODE_V_normalTexture).x==3;
}
#else
{
l9_80=(int(SC_USE_CLAMP_TO_BORDER_normalTexture)!=0);
}
#endif
float l9_81=l9_75;
float l9_82=1.0;
sc_ClampUV(l9_81,normalTextureUvMinMax.x,normalTextureUvMinMax.z,l9_80,l9_82);
float l9_83=l9_81;
float l9_84=l9_82;
bool l9_85;
#if (SC_USE_CLAMP_TO_BORDER_normalTexture)
{
l9_85=ivec2(SC_SOFTWARE_WRAP_MODE_U_normalTexture,SC_SOFTWARE_WRAP_MODE_V_normalTexture).y==3;
}
#else
{
l9_85=(int(SC_USE_CLAMP_TO_BORDER_normalTexture)!=0);
}
#endif
float l9_86=l9_77;
float l9_87=l9_84;
sc_ClampUV(l9_86,normalTextureUvMinMax.y,normalTextureUvMinMax.w,l9_85,l9_87);
l9_79=l9_87;
l9_78=vec2(l9_83,l9_86);
}
#else
{
l9_79=1.0;
l9_78=vec2(l9_75,l9_77);
}
#endif
vec2 l9_88=sc_TransformUV(l9_78,(int(SC_USE_UV_TRANSFORM_normalTexture)!=0),normalTextureTransform);
float l9_89=l9_88.x;
float l9_90=l9_79;
sc_SoftwareWrapLate(l9_89,ivec2(SC_SOFTWARE_WRAP_MODE_U_normalTexture,SC_SOFTWARE_WRAP_MODE_V_normalTexture).x,l9_73,l9_90);
float l9_91=l9_88.y;
float l9_92=l9_90;
sc_SoftwareWrapLate(l9_91,ivec2(SC_SOFTWARE_WRAP_MODE_U_normalTexture,SC_SOFTWARE_WRAP_MODE_V_normalTexture).y,l9_73,l9_92);
float l9_93=l9_92;
vec3 l9_94=sc_SamplingCoordsViewToGlobal(vec2(l9_89,l9_91),normalTextureLayout,normalTextureGetStereoViewIndex());
vec4 l9_95=texture(normalTextureArrSC,l9_94,0.0);
vec4 l9_96;
#if (SC_USE_CLAMP_TO_BORDER_normalTexture)
{
l9_96=mix(normalTextureBorderColor,l9_95,vec4(l9_93));
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
bool l9_97=(int(SC_USE_CLAMP_TO_BORDER_normalTexture)!=0)&&(!(int(SC_USE_UV_MIN_MAX_normalTexture)!=0));
float l9_98=l9_71.x;
sc_SoftwareWrapEarly(l9_98,ivec2(SC_SOFTWARE_WRAP_MODE_U_normalTexture,SC_SOFTWARE_WRAP_MODE_V_normalTexture).x);
float l9_99=l9_98;
float l9_100=l9_71.y;
sc_SoftwareWrapEarly(l9_100,ivec2(SC_SOFTWARE_WRAP_MODE_U_normalTexture,SC_SOFTWARE_WRAP_MODE_V_normalTexture).y);
float l9_101=l9_100;
vec2 l9_102;
float l9_103;
#if (SC_USE_UV_MIN_MAX_normalTexture)
{
bool l9_104;
#if (SC_USE_CLAMP_TO_BORDER_normalTexture)
{
l9_104=ivec2(SC_SOFTWARE_WRAP_MODE_U_normalTexture,SC_SOFTWARE_WRAP_MODE_V_normalTexture).x==3;
}
#else
{
l9_104=(int(SC_USE_CLAMP_TO_BORDER_normalTexture)!=0);
}
#endif
float l9_105=l9_99;
float l9_106=1.0;
sc_ClampUV(l9_105,normalTextureUvMinMax.x,normalTextureUvMinMax.z,l9_104,l9_106);
float l9_107=l9_105;
float l9_108=l9_106;
bool l9_109;
#if (SC_USE_CLAMP_TO_BORDER_normalTexture)
{
l9_109=ivec2(SC_SOFTWARE_WRAP_MODE_U_normalTexture,SC_SOFTWARE_WRAP_MODE_V_normalTexture).y==3;
}
#else
{
l9_109=(int(SC_USE_CLAMP_TO_BORDER_normalTexture)!=0);
}
#endif
float l9_110=l9_101;
float l9_111=l9_108;
sc_ClampUV(l9_110,normalTextureUvMinMax.y,normalTextureUvMinMax.w,l9_109,l9_111);
l9_103=l9_111;
l9_102=vec2(l9_107,l9_110);
}
#else
{
l9_103=1.0;
l9_102=vec2(l9_99,l9_101);
}
#endif
vec2 l9_112=sc_TransformUV(l9_102,(int(SC_USE_UV_TRANSFORM_normalTexture)!=0),normalTextureTransform);
float l9_113=l9_112.x;
float l9_114=l9_103;
sc_SoftwareWrapLate(l9_113,ivec2(SC_SOFTWARE_WRAP_MODE_U_normalTexture,SC_SOFTWARE_WRAP_MODE_V_normalTexture).x,l9_97,l9_114);
float l9_115=l9_112.y;
float l9_116=l9_114;
sc_SoftwareWrapLate(l9_115,ivec2(SC_SOFTWARE_WRAP_MODE_U_normalTexture,SC_SOFTWARE_WRAP_MODE_V_normalTexture).y,l9_97,l9_116);
float l9_117=l9_116;
vec3 l9_118=sc_SamplingCoordsViewToGlobal(vec2(l9_113,l9_115),normalTextureLayout,normalTextureGetStereoViewIndex());
vec4 l9_119=texture(normalTexture,l9_118.xy,0.0);
vec4 l9_120;
#if (SC_USE_CLAMP_TO_BORDER_normalTexture)
{
l9_120=mix(normalTextureBorderColor,l9_119,vec4(l9_117));
}
#else
{
l9_120=l9_119;
}
#endif
l9_72=l9_120;
}
#endif
l9_69=normalize(mat3(tempGlobals.VertexTangent_WorldSpace,tempGlobals.VertexBinormal_WorldSpace,l9_68)*mix(vec3(0.0,0.0,1.0),(l9_72.xyz*1.9921875)-vec3(1.0),vec3(normalTextureScale)));
}
#else
{
l9_69=l9_68;
}
#endif
float l9_121;
vec4 l9_122;
float l9_123;
#if (ENABLE_METALLIC_ROUGHNESS_TEX)
{
vec2 l9_124=N3_getUV(NODE_11_DROPLIST_ITEM);
vec2 l9_125;
if ((int(ENABLE_TEXTURE_TRANSFORM)!=0)&&(int(ENABLE_METALLIC_ROUGHNESS_TEXTURE_TRANSFORM)!=0))
{
l9_125=N3_uvTransform(l9_124,metallicRoughnessTexture_offset,metallicRoughnessTexture_scale,metallicRoughnessTexture_rotation);
}
else
{
l9_125=l9_124;
}
vec4 l9_126;
#if (metallicRoughnessTextureLayout==2)
{
bool l9_127=(int(SC_USE_CLAMP_TO_BORDER_metallicRoughnessTexture)!=0)&&(!(int(SC_USE_UV_MIN_MAX_metallicRoughnessTexture)!=0));
float l9_128=l9_125.x;
sc_SoftwareWrapEarly(l9_128,ivec2(SC_SOFTWARE_WRAP_MODE_U_metallicRoughnessTexture,SC_SOFTWARE_WRAP_MODE_V_metallicRoughnessTexture).x);
float l9_129=l9_128;
float l9_130=l9_125.y;
sc_SoftwareWrapEarly(l9_130,ivec2(SC_SOFTWARE_WRAP_MODE_U_metallicRoughnessTexture,SC_SOFTWARE_WRAP_MODE_V_metallicRoughnessTexture).y);
float l9_131=l9_130;
vec2 l9_132;
float l9_133;
#if (SC_USE_UV_MIN_MAX_metallicRoughnessTexture)
{
bool l9_134;
#if (SC_USE_CLAMP_TO_BORDER_metallicRoughnessTexture)
{
l9_134=ivec2(SC_SOFTWARE_WRAP_MODE_U_metallicRoughnessTexture,SC_SOFTWARE_WRAP_MODE_V_metallicRoughnessTexture).x==3;
}
#else
{
l9_134=(int(SC_USE_CLAMP_TO_BORDER_metallicRoughnessTexture)!=0);
}
#endif
float l9_135=l9_129;
float l9_136=1.0;
sc_ClampUV(l9_135,metallicRoughnessTextureUvMinMax.x,metallicRoughnessTextureUvMinMax.z,l9_134,l9_136);
float l9_137=l9_135;
float l9_138=l9_136;
bool l9_139;
#if (SC_USE_CLAMP_TO_BORDER_metallicRoughnessTexture)
{
l9_139=ivec2(SC_SOFTWARE_WRAP_MODE_U_metallicRoughnessTexture,SC_SOFTWARE_WRAP_MODE_V_metallicRoughnessTexture).y==3;
}
#else
{
l9_139=(int(SC_USE_CLAMP_TO_BORDER_metallicRoughnessTexture)!=0);
}
#endif
float l9_140=l9_131;
float l9_141=l9_138;
sc_ClampUV(l9_140,metallicRoughnessTextureUvMinMax.y,metallicRoughnessTextureUvMinMax.w,l9_139,l9_141);
l9_133=l9_141;
l9_132=vec2(l9_137,l9_140);
}
#else
{
l9_133=1.0;
l9_132=vec2(l9_129,l9_131);
}
#endif
vec2 l9_142=sc_TransformUV(l9_132,(int(SC_USE_UV_TRANSFORM_metallicRoughnessTexture)!=0),metallicRoughnessTextureTransform);
float l9_143=l9_142.x;
float l9_144=l9_133;
sc_SoftwareWrapLate(l9_143,ivec2(SC_SOFTWARE_WRAP_MODE_U_metallicRoughnessTexture,SC_SOFTWARE_WRAP_MODE_V_metallicRoughnessTexture).x,l9_127,l9_144);
float l9_145=l9_142.y;
float l9_146=l9_144;
sc_SoftwareWrapLate(l9_145,ivec2(SC_SOFTWARE_WRAP_MODE_U_metallicRoughnessTexture,SC_SOFTWARE_WRAP_MODE_V_metallicRoughnessTexture).y,l9_127,l9_146);
float l9_147=l9_146;
vec3 l9_148=sc_SamplingCoordsViewToGlobal(vec2(l9_143,l9_145),metallicRoughnessTextureLayout,metallicRoughnessTextureGetStereoViewIndex());
vec4 l9_149=texture(metallicRoughnessTextureArrSC,l9_148,0.0);
vec4 l9_150;
#if (SC_USE_CLAMP_TO_BORDER_metallicRoughnessTexture)
{
l9_150=mix(metallicRoughnessTextureBorderColor,l9_149,vec4(l9_147));
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
bool l9_151=(int(SC_USE_CLAMP_TO_BORDER_metallicRoughnessTexture)!=0)&&(!(int(SC_USE_UV_MIN_MAX_metallicRoughnessTexture)!=0));
float l9_152=l9_125.x;
sc_SoftwareWrapEarly(l9_152,ivec2(SC_SOFTWARE_WRAP_MODE_U_metallicRoughnessTexture,SC_SOFTWARE_WRAP_MODE_V_metallicRoughnessTexture).x);
float l9_153=l9_152;
float l9_154=l9_125.y;
sc_SoftwareWrapEarly(l9_154,ivec2(SC_SOFTWARE_WRAP_MODE_U_metallicRoughnessTexture,SC_SOFTWARE_WRAP_MODE_V_metallicRoughnessTexture).y);
float l9_155=l9_154;
vec2 l9_156;
float l9_157;
#if (SC_USE_UV_MIN_MAX_metallicRoughnessTexture)
{
bool l9_158;
#if (SC_USE_CLAMP_TO_BORDER_metallicRoughnessTexture)
{
l9_158=ivec2(SC_SOFTWARE_WRAP_MODE_U_metallicRoughnessTexture,SC_SOFTWARE_WRAP_MODE_V_metallicRoughnessTexture).x==3;
}
#else
{
l9_158=(int(SC_USE_CLAMP_TO_BORDER_metallicRoughnessTexture)!=0);
}
#endif
float l9_159=l9_153;
float l9_160=1.0;
sc_ClampUV(l9_159,metallicRoughnessTextureUvMinMax.x,metallicRoughnessTextureUvMinMax.z,l9_158,l9_160);
float l9_161=l9_159;
float l9_162=l9_160;
bool l9_163;
#if (SC_USE_CLAMP_TO_BORDER_metallicRoughnessTexture)
{
l9_163=ivec2(SC_SOFTWARE_WRAP_MODE_U_metallicRoughnessTexture,SC_SOFTWARE_WRAP_MODE_V_metallicRoughnessTexture).y==3;
}
#else
{
l9_163=(int(SC_USE_CLAMP_TO_BORDER_metallicRoughnessTexture)!=0);
}
#endif
float l9_164=l9_155;
float l9_165=l9_162;
sc_ClampUV(l9_164,metallicRoughnessTextureUvMinMax.y,metallicRoughnessTextureUvMinMax.w,l9_163,l9_165);
l9_157=l9_165;
l9_156=vec2(l9_161,l9_164);
}
#else
{
l9_157=1.0;
l9_156=vec2(l9_153,l9_155);
}
#endif
vec2 l9_166=sc_TransformUV(l9_156,(int(SC_USE_UV_TRANSFORM_metallicRoughnessTexture)!=0),metallicRoughnessTextureTransform);
float l9_167=l9_166.x;
float l9_168=l9_157;
sc_SoftwareWrapLate(l9_167,ivec2(SC_SOFTWARE_WRAP_MODE_U_metallicRoughnessTexture,SC_SOFTWARE_WRAP_MODE_V_metallicRoughnessTexture).x,l9_151,l9_168);
float l9_169=l9_166.y;
float l9_170=l9_168;
sc_SoftwareWrapLate(l9_169,ivec2(SC_SOFTWARE_WRAP_MODE_U_metallicRoughnessTexture,SC_SOFTWARE_WRAP_MODE_V_metallicRoughnessTexture).y,l9_151,l9_170);
float l9_171=l9_170;
vec3 l9_172=sc_SamplingCoordsViewToGlobal(vec2(l9_167,l9_169),metallicRoughnessTextureLayout,metallicRoughnessTextureGetStereoViewIndex());
vec4 l9_173=texture(metallicRoughnessTexture,l9_172.xy,0.0);
vec4 l9_174;
#if (SC_USE_CLAMP_TO_BORDER_metallicRoughnessTexture)
{
l9_174=mix(metallicRoughnessTextureBorderColor,l9_173,vec4(l9_171));
}
#else
{
l9_174=l9_173;
}
#endif
l9_126=l9_174;
}
#endif
vec4 l9_175=vec4(0.0);
l9_175.w=occlusionTextureStrength;
vec3 l9_176=vec3(1.0+(occlusionTextureStrength*(l9_126.z-1.0)));
l9_123=roughnessFactor*l9_126.y;
l9_122=vec4(l9_176.x,l9_176.y,l9_176.z,l9_175.w);
l9_121=metallicFactor*l9_126.x;
}
#else
{
l9_123=roughnessFactor;
l9_122=vec4(1.0,1.0,1.0,0.0);
l9_121=metallicFactor;
}
#endif
vec3 l9_177;
vec3 l9_178;
vec3 l9_179;
#if (ENABLE_TRANSMISSION)
{
vec2 l9_180=tempGlobals.gScreenCoord;
vec4 l9_181;
#if (screenTextureLayout==2)
{
bool l9_182=(int(SC_USE_CLAMP_TO_BORDER_screenTexture)!=0)&&(!(int(SC_USE_UV_MIN_MAX_screenTexture)!=0));
float l9_183=l9_180.x;
sc_SoftwareWrapEarly(l9_183,ivec2(SC_SOFTWARE_WRAP_MODE_U_screenTexture,SC_SOFTWARE_WRAP_MODE_V_screenTexture).x);
float l9_184=l9_183;
float l9_185=l9_180.y;
sc_SoftwareWrapEarly(l9_185,ivec2(SC_SOFTWARE_WRAP_MODE_U_screenTexture,SC_SOFTWARE_WRAP_MODE_V_screenTexture).y);
float l9_186=l9_185;
vec2 l9_187;
float l9_188;
#if (SC_USE_UV_MIN_MAX_screenTexture)
{
bool l9_189;
#if (SC_USE_CLAMP_TO_BORDER_screenTexture)
{
l9_189=ivec2(SC_SOFTWARE_WRAP_MODE_U_screenTexture,SC_SOFTWARE_WRAP_MODE_V_screenTexture).x==3;
}
#else
{
l9_189=(int(SC_USE_CLAMP_TO_BORDER_screenTexture)!=0);
}
#endif
float l9_190=l9_184;
float l9_191=1.0;
sc_ClampUV(l9_190,screenTextureUvMinMax.x,screenTextureUvMinMax.z,l9_189,l9_191);
float l9_192=l9_190;
float l9_193=l9_191;
bool l9_194;
#if (SC_USE_CLAMP_TO_BORDER_screenTexture)
{
l9_194=ivec2(SC_SOFTWARE_WRAP_MODE_U_screenTexture,SC_SOFTWARE_WRAP_MODE_V_screenTexture).y==3;
}
#else
{
l9_194=(int(SC_USE_CLAMP_TO_BORDER_screenTexture)!=0);
}
#endif
float l9_195=l9_186;
float l9_196=l9_193;
sc_ClampUV(l9_195,screenTextureUvMinMax.y,screenTextureUvMinMax.w,l9_194,l9_196);
l9_188=l9_196;
l9_187=vec2(l9_192,l9_195);
}
#else
{
l9_188=1.0;
l9_187=vec2(l9_184,l9_186);
}
#endif
vec2 l9_197=sc_TransformUV(l9_187,(int(SC_USE_UV_TRANSFORM_screenTexture)!=0),screenTextureTransform);
float l9_198=l9_197.x;
float l9_199=l9_188;
sc_SoftwareWrapLate(l9_198,ivec2(SC_SOFTWARE_WRAP_MODE_U_screenTexture,SC_SOFTWARE_WRAP_MODE_V_screenTexture).x,l9_182,l9_199);
float l9_200=l9_197.y;
float l9_201=l9_199;
sc_SoftwareWrapLate(l9_200,ivec2(SC_SOFTWARE_WRAP_MODE_U_screenTexture,SC_SOFTWARE_WRAP_MODE_V_screenTexture).y,l9_182,l9_201);
float l9_202=l9_201;
vec3 l9_203=sc_SamplingCoordsViewToGlobal(vec2(l9_198,l9_200),screenTextureLayout,screenTextureGetStereoViewIndex());
vec4 l9_204=texture(screenTextureArrSC,l9_203,0.0);
vec4 l9_205;
#if (SC_USE_CLAMP_TO_BORDER_screenTexture)
{
l9_205=mix(screenTextureBorderColor,l9_204,vec4(l9_202));
}
#else
{
l9_205=l9_204;
}
#endif
l9_181=l9_205;
}
#else
{
bool l9_206=(int(SC_USE_CLAMP_TO_BORDER_screenTexture)!=0)&&(!(int(SC_USE_UV_MIN_MAX_screenTexture)!=0));
float l9_207=l9_180.x;
sc_SoftwareWrapEarly(l9_207,ivec2(SC_SOFTWARE_WRAP_MODE_U_screenTexture,SC_SOFTWARE_WRAP_MODE_V_screenTexture).x);
float l9_208=l9_207;
float l9_209=l9_180.y;
sc_SoftwareWrapEarly(l9_209,ivec2(SC_SOFTWARE_WRAP_MODE_U_screenTexture,SC_SOFTWARE_WRAP_MODE_V_screenTexture).y);
float l9_210=l9_209;
vec2 l9_211;
float l9_212;
#if (SC_USE_UV_MIN_MAX_screenTexture)
{
bool l9_213;
#if (SC_USE_CLAMP_TO_BORDER_screenTexture)
{
l9_213=ivec2(SC_SOFTWARE_WRAP_MODE_U_screenTexture,SC_SOFTWARE_WRAP_MODE_V_screenTexture).x==3;
}
#else
{
l9_213=(int(SC_USE_CLAMP_TO_BORDER_screenTexture)!=0);
}
#endif
float l9_214=l9_208;
float l9_215=1.0;
sc_ClampUV(l9_214,screenTextureUvMinMax.x,screenTextureUvMinMax.z,l9_213,l9_215);
float l9_216=l9_214;
float l9_217=l9_215;
bool l9_218;
#if (SC_USE_CLAMP_TO_BORDER_screenTexture)
{
l9_218=ivec2(SC_SOFTWARE_WRAP_MODE_U_screenTexture,SC_SOFTWARE_WRAP_MODE_V_screenTexture).y==3;
}
#else
{
l9_218=(int(SC_USE_CLAMP_TO_BORDER_screenTexture)!=0);
}
#endif
float l9_219=l9_210;
float l9_220=l9_217;
sc_ClampUV(l9_219,screenTextureUvMinMax.y,screenTextureUvMinMax.w,l9_218,l9_220);
l9_212=l9_220;
l9_211=vec2(l9_216,l9_219);
}
#else
{
l9_212=1.0;
l9_211=vec2(l9_208,l9_210);
}
#endif
vec2 l9_221=sc_TransformUV(l9_211,(int(SC_USE_UV_TRANSFORM_screenTexture)!=0),screenTextureTransform);
float l9_222=l9_221.x;
float l9_223=l9_212;
sc_SoftwareWrapLate(l9_222,ivec2(SC_SOFTWARE_WRAP_MODE_U_screenTexture,SC_SOFTWARE_WRAP_MODE_V_screenTexture).x,l9_206,l9_223);
float l9_224=l9_221.y;
float l9_225=l9_223;
sc_SoftwareWrapLate(l9_224,ivec2(SC_SOFTWARE_WRAP_MODE_U_screenTexture,SC_SOFTWARE_WRAP_MODE_V_screenTexture).y,l9_206,l9_225);
float l9_226=l9_225;
vec3 l9_227=sc_SamplingCoordsViewToGlobal(vec2(l9_222,l9_224),screenTextureLayout,screenTextureGetStereoViewIndex());
vec4 l9_228=texture(screenTexture,l9_227.xy,0.0);
vec4 l9_229;
#if (SC_USE_CLAMP_TO_BORDER_screenTexture)
{
l9_229=mix(screenTextureBorderColor,l9_228,vec4(l9_226));
}
#else
{
l9_229=l9_228;
}
#endif
l9_181=l9_229;
}
#endif
vec3 l9_230=ssSRGB_to_Linear(l9_181.xyz);
float l9_231;
#if (ENABLE_TRANSMISSION_TEX)
{
vec2 l9_232=N3_getUV(Tweak_N30);
vec2 l9_233;
if ((int(ENABLE_TEXTURE_TRANSFORM)!=0)&&(int(ENABLE_TRANSMISSION_TEXTURE_TRANSFORM)!=0))
{
l9_233=N3_uvTransform(l9_232,transmissionTexture_offset,transmissionTexture_scale,transmissionTexture_rotation);
}
else
{
l9_233=l9_232;
}
vec4 l9_234;
#if (transmissionTextureLayout==2)
{
bool l9_235=(int(SC_USE_CLAMP_TO_BORDER_transmissionTexture)!=0)&&(!(int(SC_USE_UV_MIN_MAX_transmissionTexture)!=0));
float l9_236=l9_233.x;
sc_SoftwareWrapEarly(l9_236,ivec2(SC_SOFTWARE_WRAP_MODE_U_transmissionTexture,SC_SOFTWARE_WRAP_MODE_V_transmissionTexture).x);
float l9_237=l9_236;
float l9_238=l9_233.y;
sc_SoftwareWrapEarly(l9_238,ivec2(SC_SOFTWARE_WRAP_MODE_U_transmissionTexture,SC_SOFTWARE_WRAP_MODE_V_transmissionTexture).y);
float l9_239=l9_238;
vec2 l9_240;
float l9_241;
#if (SC_USE_UV_MIN_MAX_transmissionTexture)
{
bool l9_242;
#if (SC_USE_CLAMP_TO_BORDER_transmissionTexture)
{
l9_242=ivec2(SC_SOFTWARE_WRAP_MODE_U_transmissionTexture,SC_SOFTWARE_WRAP_MODE_V_transmissionTexture).x==3;
}
#else
{
l9_242=(int(SC_USE_CLAMP_TO_BORDER_transmissionTexture)!=0);
}
#endif
float l9_243=l9_237;
float l9_244=1.0;
sc_ClampUV(l9_243,transmissionTextureUvMinMax.x,transmissionTextureUvMinMax.z,l9_242,l9_244);
float l9_245=l9_243;
float l9_246=l9_244;
bool l9_247;
#if (SC_USE_CLAMP_TO_BORDER_transmissionTexture)
{
l9_247=ivec2(SC_SOFTWARE_WRAP_MODE_U_transmissionTexture,SC_SOFTWARE_WRAP_MODE_V_transmissionTexture).y==3;
}
#else
{
l9_247=(int(SC_USE_CLAMP_TO_BORDER_transmissionTexture)!=0);
}
#endif
float l9_248=l9_239;
float l9_249=l9_246;
sc_ClampUV(l9_248,transmissionTextureUvMinMax.y,transmissionTextureUvMinMax.w,l9_247,l9_249);
l9_241=l9_249;
l9_240=vec2(l9_245,l9_248);
}
#else
{
l9_241=1.0;
l9_240=vec2(l9_237,l9_239);
}
#endif
vec2 l9_250=sc_TransformUV(l9_240,(int(SC_USE_UV_TRANSFORM_transmissionTexture)!=0),transmissionTextureTransform);
float l9_251=l9_250.x;
float l9_252=l9_241;
sc_SoftwareWrapLate(l9_251,ivec2(SC_SOFTWARE_WRAP_MODE_U_transmissionTexture,SC_SOFTWARE_WRAP_MODE_V_transmissionTexture).x,l9_235,l9_252);
float l9_253=l9_250.y;
float l9_254=l9_252;
sc_SoftwareWrapLate(l9_253,ivec2(SC_SOFTWARE_WRAP_MODE_U_transmissionTexture,SC_SOFTWARE_WRAP_MODE_V_transmissionTexture).y,l9_235,l9_254);
float l9_255=l9_254;
vec3 l9_256=sc_SamplingCoordsViewToGlobal(vec2(l9_251,l9_253),transmissionTextureLayout,transmissionTextureGetStereoViewIndex());
vec4 l9_257=texture(transmissionTextureArrSC,l9_256,0.0);
vec4 l9_258;
#if (SC_USE_CLAMP_TO_BORDER_transmissionTexture)
{
l9_258=mix(transmissionTextureBorderColor,l9_257,vec4(l9_255));
}
#else
{
l9_258=l9_257;
}
#endif
l9_234=l9_258;
}
#else
{
bool l9_259=(int(SC_USE_CLAMP_TO_BORDER_transmissionTexture)!=0)&&(!(int(SC_USE_UV_MIN_MAX_transmissionTexture)!=0));
float l9_260=l9_233.x;
sc_SoftwareWrapEarly(l9_260,ivec2(SC_SOFTWARE_WRAP_MODE_U_transmissionTexture,SC_SOFTWARE_WRAP_MODE_V_transmissionTexture).x);
float l9_261=l9_260;
float l9_262=l9_233.y;
sc_SoftwareWrapEarly(l9_262,ivec2(SC_SOFTWARE_WRAP_MODE_U_transmissionTexture,SC_SOFTWARE_WRAP_MODE_V_transmissionTexture).y);
float l9_263=l9_262;
vec2 l9_264;
float l9_265;
#if (SC_USE_UV_MIN_MAX_transmissionTexture)
{
bool l9_266;
#if (SC_USE_CLAMP_TO_BORDER_transmissionTexture)
{
l9_266=ivec2(SC_SOFTWARE_WRAP_MODE_U_transmissionTexture,SC_SOFTWARE_WRAP_MODE_V_transmissionTexture).x==3;
}
#else
{
l9_266=(int(SC_USE_CLAMP_TO_BORDER_transmissionTexture)!=0);
}
#endif
float l9_267=l9_261;
float l9_268=1.0;
sc_ClampUV(l9_267,transmissionTextureUvMinMax.x,transmissionTextureUvMinMax.z,l9_266,l9_268);
float l9_269=l9_267;
float l9_270=l9_268;
bool l9_271;
#if (SC_USE_CLAMP_TO_BORDER_transmissionTexture)
{
l9_271=ivec2(SC_SOFTWARE_WRAP_MODE_U_transmissionTexture,SC_SOFTWARE_WRAP_MODE_V_transmissionTexture).y==3;
}
#else
{
l9_271=(int(SC_USE_CLAMP_TO_BORDER_transmissionTexture)!=0);
}
#endif
float l9_272=l9_263;
float l9_273=l9_270;
sc_ClampUV(l9_272,transmissionTextureUvMinMax.y,transmissionTextureUvMinMax.w,l9_271,l9_273);
l9_265=l9_273;
l9_264=vec2(l9_269,l9_272);
}
#else
{
l9_265=1.0;
l9_264=vec2(l9_261,l9_263);
}
#endif
vec2 l9_274=sc_TransformUV(l9_264,(int(SC_USE_UV_TRANSFORM_transmissionTexture)!=0),transmissionTextureTransform);
float l9_275=l9_274.x;
float l9_276=l9_265;
sc_SoftwareWrapLate(l9_275,ivec2(SC_SOFTWARE_WRAP_MODE_U_transmissionTexture,SC_SOFTWARE_WRAP_MODE_V_transmissionTexture).x,l9_259,l9_276);
float l9_277=l9_274.y;
float l9_278=l9_276;
sc_SoftwareWrapLate(l9_277,ivec2(SC_SOFTWARE_WRAP_MODE_U_transmissionTexture,SC_SOFTWARE_WRAP_MODE_V_transmissionTexture).y,l9_259,l9_278);
float l9_279=l9_278;
vec3 l9_280=sc_SamplingCoordsViewToGlobal(vec2(l9_275,l9_277),transmissionTextureLayout,transmissionTextureGetStereoViewIndex());
vec4 l9_281=texture(transmissionTexture,l9_280.xy,0.0);
vec4 l9_282;
#if (SC_USE_CLAMP_TO_BORDER_transmissionTexture)
{
l9_282=mix(transmissionTextureBorderColor,l9_281,vec4(l9_279));
}
#else
{
l9_282=l9_281;
}
#endif
l9_234=l9_282;
}
#endif
l9_231=l9_234.x;
}
#else
{
l9_231=1.0;
}
#endif
vec3 l9_283=vec3(l9_231*transmissionFactor);
vec3 l9_284=vec3(l9_121);
l9_179=l9_230;
l9_178=mix(mix(vec3(0.0),l9_14.xyz,l9_283)*l9_230,vec3(0.0),l9_284)+l9_15;
l9_177=mix(mix(l9_14.xyz,vec3(0.0),l9_283),l9_14.xyz,l9_284);
}
#else
{
l9_179=vec3(0.0);
l9_178=l9_15;
l9_177=l9_14.xyz;
}
#endif
float l9_285;
#if (SC_DEVICE_CLASS>=2)
{
l9_285=pow(l9_14.w,0.45454544);
}
#else
{
l9_285=sqrt(l9_14.w);
}
#endif
vec4 l9_286;
#if (ENABLE_SHEEN)
{
vec3 l9_287;
#if (ENABLE_SHEEN_COLOR_TEX)
{
vec2 l9_288=N3_getUV(Tweak_N32);
vec2 l9_289;
if ((int(ENABLE_TEXTURE_TRANSFORM)!=0)&&(int(ENABLE_SHEEN_COLOR_TEXTURE_TRANSFORM)!=0))
{
l9_289=N3_uvTransform(l9_288,sheenColorTexture_offset,sheenColorTexture_scale,sheenColorTexture_rotation);
}
else
{
l9_289=l9_288;
}
vec4 l9_290;
#if (sheenColorTextureLayout==2)
{
bool l9_291=(int(SC_USE_CLAMP_TO_BORDER_sheenColorTexture)!=0)&&(!(int(SC_USE_UV_MIN_MAX_sheenColorTexture)!=0));
float l9_292=l9_289.x;
sc_SoftwareWrapEarly(l9_292,ivec2(SC_SOFTWARE_WRAP_MODE_U_sheenColorTexture,SC_SOFTWARE_WRAP_MODE_V_sheenColorTexture).x);
float l9_293=l9_292;
float l9_294=l9_289.y;
sc_SoftwareWrapEarly(l9_294,ivec2(SC_SOFTWARE_WRAP_MODE_U_sheenColorTexture,SC_SOFTWARE_WRAP_MODE_V_sheenColorTexture).y);
float l9_295=l9_294;
vec2 l9_296;
float l9_297;
#if (SC_USE_UV_MIN_MAX_sheenColorTexture)
{
bool l9_298;
#if (SC_USE_CLAMP_TO_BORDER_sheenColorTexture)
{
l9_298=ivec2(SC_SOFTWARE_WRAP_MODE_U_sheenColorTexture,SC_SOFTWARE_WRAP_MODE_V_sheenColorTexture).x==3;
}
#else
{
l9_298=(int(SC_USE_CLAMP_TO_BORDER_sheenColorTexture)!=0);
}
#endif
float l9_299=l9_293;
float l9_300=1.0;
sc_ClampUV(l9_299,sheenColorTextureUvMinMax.x,sheenColorTextureUvMinMax.z,l9_298,l9_300);
float l9_301=l9_299;
float l9_302=l9_300;
bool l9_303;
#if (SC_USE_CLAMP_TO_BORDER_sheenColorTexture)
{
l9_303=ivec2(SC_SOFTWARE_WRAP_MODE_U_sheenColorTexture,SC_SOFTWARE_WRAP_MODE_V_sheenColorTexture).y==3;
}
#else
{
l9_303=(int(SC_USE_CLAMP_TO_BORDER_sheenColorTexture)!=0);
}
#endif
float l9_304=l9_295;
float l9_305=l9_302;
sc_ClampUV(l9_304,sheenColorTextureUvMinMax.y,sheenColorTextureUvMinMax.w,l9_303,l9_305);
l9_297=l9_305;
l9_296=vec2(l9_301,l9_304);
}
#else
{
l9_297=1.0;
l9_296=vec2(l9_293,l9_295);
}
#endif
vec2 l9_306=sc_TransformUV(l9_296,(int(SC_USE_UV_TRANSFORM_sheenColorTexture)!=0),sheenColorTextureTransform);
float l9_307=l9_306.x;
float l9_308=l9_297;
sc_SoftwareWrapLate(l9_307,ivec2(SC_SOFTWARE_WRAP_MODE_U_sheenColorTexture,SC_SOFTWARE_WRAP_MODE_V_sheenColorTexture).x,l9_291,l9_308);
float l9_309=l9_306.y;
float l9_310=l9_308;
sc_SoftwareWrapLate(l9_309,ivec2(SC_SOFTWARE_WRAP_MODE_U_sheenColorTexture,SC_SOFTWARE_WRAP_MODE_V_sheenColorTexture).y,l9_291,l9_310);
float l9_311=l9_310;
vec3 l9_312=sc_SamplingCoordsViewToGlobal(vec2(l9_307,l9_309),sheenColorTextureLayout,sheenColorTextureGetStereoViewIndex());
vec4 l9_313=texture(sheenColorTextureArrSC,l9_312,0.0);
vec4 l9_314;
#if (SC_USE_CLAMP_TO_BORDER_sheenColorTexture)
{
l9_314=mix(sheenColorTextureBorderColor,l9_313,vec4(l9_311));
}
#else
{
l9_314=l9_313;
}
#endif
l9_290=l9_314;
}
#else
{
bool l9_315=(int(SC_USE_CLAMP_TO_BORDER_sheenColorTexture)!=0)&&(!(int(SC_USE_UV_MIN_MAX_sheenColorTexture)!=0));
float l9_316=l9_289.x;
sc_SoftwareWrapEarly(l9_316,ivec2(SC_SOFTWARE_WRAP_MODE_U_sheenColorTexture,SC_SOFTWARE_WRAP_MODE_V_sheenColorTexture).x);
float l9_317=l9_316;
float l9_318=l9_289.y;
sc_SoftwareWrapEarly(l9_318,ivec2(SC_SOFTWARE_WRAP_MODE_U_sheenColorTexture,SC_SOFTWARE_WRAP_MODE_V_sheenColorTexture).y);
float l9_319=l9_318;
vec2 l9_320;
float l9_321;
#if (SC_USE_UV_MIN_MAX_sheenColorTexture)
{
bool l9_322;
#if (SC_USE_CLAMP_TO_BORDER_sheenColorTexture)
{
l9_322=ivec2(SC_SOFTWARE_WRAP_MODE_U_sheenColorTexture,SC_SOFTWARE_WRAP_MODE_V_sheenColorTexture).x==3;
}
#else
{
l9_322=(int(SC_USE_CLAMP_TO_BORDER_sheenColorTexture)!=0);
}
#endif
float l9_323=l9_317;
float l9_324=1.0;
sc_ClampUV(l9_323,sheenColorTextureUvMinMax.x,sheenColorTextureUvMinMax.z,l9_322,l9_324);
float l9_325=l9_323;
float l9_326=l9_324;
bool l9_327;
#if (SC_USE_CLAMP_TO_BORDER_sheenColorTexture)
{
l9_327=ivec2(SC_SOFTWARE_WRAP_MODE_U_sheenColorTexture,SC_SOFTWARE_WRAP_MODE_V_sheenColorTexture).y==3;
}
#else
{
l9_327=(int(SC_USE_CLAMP_TO_BORDER_sheenColorTexture)!=0);
}
#endif
float l9_328=l9_319;
float l9_329=l9_326;
sc_ClampUV(l9_328,sheenColorTextureUvMinMax.y,sheenColorTextureUvMinMax.w,l9_327,l9_329);
l9_321=l9_329;
l9_320=vec2(l9_325,l9_328);
}
#else
{
l9_321=1.0;
l9_320=vec2(l9_317,l9_319);
}
#endif
vec2 l9_330=sc_TransformUV(l9_320,(int(SC_USE_UV_TRANSFORM_sheenColorTexture)!=0),sheenColorTextureTransform);
float l9_331=l9_330.x;
float l9_332=l9_321;
sc_SoftwareWrapLate(l9_331,ivec2(SC_SOFTWARE_WRAP_MODE_U_sheenColorTexture,SC_SOFTWARE_WRAP_MODE_V_sheenColorTexture).x,l9_315,l9_332);
float l9_333=l9_330.y;
float l9_334=l9_332;
sc_SoftwareWrapLate(l9_333,ivec2(SC_SOFTWARE_WRAP_MODE_U_sheenColorTexture,SC_SOFTWARE_WRAP_MODE_V_sheenColorTexture).y,l9_315,l9_334);
float l9_335=l9_334;
vec3 l9_336=sc_SamplingCoordsViewToGlobal(vec2(l9_331,l9_333),sheenColorTextureLayout,sheenColorTextureGetStereoViewIndex());
vec4 l9_337=texture(sheenColorTexture,l9_336.xy,0.0);
vec4 l9_338;
#if (SC_USE_CLAMP_TO_BORDER_sheenColorTexture)
{
l9_338=mix(sheenColorTextureBorderColor,l9_337,vec4(l9_335));
}
#else
{
l9_338=l9_337;
}
#endif
l9_290=l9_338;
}
#endif
l9_287=sheenColorFactor*ssSRGB_to_Linear(l9_290.xyz);
}
#else
{
l9_287=sheenColorFactor;
}
#endif
float l9_339;
#if (ENABLE_SHEEN_ROUGHNESS_TEX)
{
vec2 l9_340=N3_getUV(Tweak_N37);
vec2 l9_341;
if ((int(ENABLE_TEXTURE_TRANSFORM)!=0)&&(int(ENABLE_SHEEN_ROUGHNESS_TEXTURE_TRANSFORM)!=0))
{
l9_341=N3_uvTransform(l9_340,sheenRoughnessTexture_offset,sheenRoughnessTexture_scale,sheenRoughnessTexture_rotation);
}
else
{
l9_341=l9_340;
}
vec4 l9_342;
#if (sheenRoughnessTextureLayout==2)
{
bool l9_343=(int(SC_USE_CLAMP_TO_BORDER_sheenRoughnessTexture)!=0)&&(!(int(SC_USE_UV_MIN_MAX_sheenRoughnessTexture)!=0));
float l9_344=l9_341.x;
sc_SoftwareWrapEarly(l9_344,ivec2(SC_SOFTWARE_WRAP_MODE_U_sheenRoughnessTexture,SC_SOFTWARE_WRAP_MODE_V_sheenRoughnessTexture).x);
float l9_345=l9_344;
float l9_346=l9_341.y;
sc_SoftwareWrapEarly(l9_346,ivec2(SC_SOFTWARE_WRAP_MODE_U_sheenRoughnessTexture,SC_SOFTWARE_WRAP_MODE_V_sheenRoughnessTexture).y);
float l9_347=l9_346;
vec2 l9_348;
float l9_349;
#if (SC_USE_UV_MIN_MAX_sheenRoughnessTexture)
{
bool l9_350;
#if (SC_USE_CLAMP_TO_BORDER_sheenRoughnessTexture)
{
l9_350=ivec2(SC_SOFTWARE_WRAP_MODE_U_sheenRoughnessTexture,SC_SOFTWARE_WRAP_MODE_V_sheenRoughnessTexture).x==3;
}
#else
{
l9_350=(int(SC_USE_CLAMP_TO_BORDER_sheenRoughnessTexture)!=0);
}
#endif
float l9_351=l9_345;
float l9_352=1.0;
sc_ClampUV(l9_351,sheenRoughnessTextureUvMinMax.x,sheenRoughnessTextureUvMinMax.z,l9_350,l9_352);
float l9_353=l9_351;
float l9_354=l9_352;
bool l9_355;
#if (SC_USE_CLAMP_TO_BORDER_sheenRoughnessTexture)
{
l9_355=ivec2(SC_SOFTWARE_WRAP_MODE_U_sheenRoughnessTexture,SC_SOFTWARE_WRAP_MODE_V_sheenRoughnessTexture).y==3;
}
#else
{
l9_355=(int(SC_USE_CLAMP_TO_BORDER_sheenRoughnessTexture)!=0);
}
#endif
float l9_356=l9_347;
float l9_357=l9_354;
sc_ClampUV(l9_356,sheenRoughnessTextureUvMinMax.y,sheenRoughnessTextureUvMinMax.w,l9_355,l9_357);
l9_349=l9_357;
l9_348=vec2(l9_353,l9_356);
}
#else
{
l9_349=1.0;
l9_348=vec2(l9_345,l9_347);
}
#endif
vec2 l9_358=sc_TransformUV(l9_348,(int(SC_USE_UV_TRANSFORM_sheenRoughnessTexture)!=0),sheenRoughnessTextureTransform);
float l9_359=l9_358.x;
float l9_360=l9_349;
sc_SoftwareWrapLate(l9_359,ivec2(SC_SOFTWARE_WRAP_MODE_U_sheenRoughnessTexture,SC_SOFTWARE_WRAP_MODE_V_sheenRoughnessTexture).x,l9_343,l9_360);
float l9_361=l9_358.y;
float l9_362=l9_360;
sc_SoftwareWrapLate(l9_361,ivec2(SC_SOFTWARE_WRAP_MODE_U_sheenRoughnessTexture,SC_SOFTWARE_WRAP_MODE_V_sheenRoughnessTexture).y,l9_343,l9_362);
float l9_363=l9_362;
vec3 l9_364=sc_SamplingCoordsViewToGlobal(vec2(l9_359,l9_361),sheenRoughnessTextureLayout,sheenRoughnessTextureGetStereoViewIndex());
vec4 l9_365=texture(sheenRoughnessTextureArrSC,l9_364,0.0);
vec4 l9_366;
#if (SC_USE_CLAMP_TO_BORDER_sheenRoughnessTexture)
{
l9_366=mix(sheenRoughnessTextureBorderColor,l9_365,vec4(l9_363));
}
#else
{
l9_366=l9_365;
}
#endif
l9_342=l9_366;
}
#else
{
bool l9_367=(int(SC_USE_CLAMP_TO_BORDER_sheenRoughnessTexture)!=0)&&(!(int(SC_USE_UV_MIN_MAX_sheenRoughnessTexture)!=0));
float l9_368=l9_341.x;
sc_SoftwareWrapEarly(l9_368,ivec2(SC_SOFTWARE_WRAP_MODE_U_sheenRoughnessTexture,SC_SOFTWARE_WRAP_MODE_V_sheenRoughnessTexture).x);
float l9_369=l9_368;
float l9_370=l9_341.y;
sc_SoftwareWrapEarly(l9_370,ivec2(SC_SOFTWARE_WRAP_MODE_U_sheenRoughnessTexture,SC_SOFTWARE_WRAP_MODE_V_sheenRoughnessTexture).y);
float l9_371=l9_370;
vec2 l9_372;
float l9_373;
#if (SC_USE_UV_MIN_MAX_sheenRoughnessTexture)
{
bool l9_374;
#if (SC_USE_CLAMP_TO_BORDER_sheenRoughnessTexture)
{
l9_374=ivec2(SC_SOFTWARE_WRAP_MODE_U_sheenRoughnessTexture,SC_SOFTWARE_WRAP_MODE_V_sheenRoughnessTexture).x==3;
}
#else
{
l9_374=(int(SC_USE_CLAMP_TO_BORDER_sheenRoughnessTexture)!=0);
}
#endif
float l9_375=l9_369;
float l9_376=1.0;
sc_ClampUV(l9_375,sheenRoughnessTextureUvMinMax.x,sheenRoughnessTextureUvMinMax.z,l9_374,l9_376);
float l9_377=l9_375;
float l9_378=l9_376;
bool l9_379;
#if (SC_USE_CLAMP_TO_BORDER_sheenRoughnessTexture)
{
l9_379=ivec2(SC_SOFTWARE_WRAP_MODE_U_sheenRoughnessTexture,SC_SOFTWARE_WRAP_MODE_V_sheenRoughnessTexture).y==3;
}
#else
{
l9_379=(int(SC_USE_CLAMP_TO_BORDER_sheenRoughnessTexture)!=0);
}
#endif
float l9_380=l9_371;
float l9_381=l9_378;
sc_ClampUV(l9_380,sheenRoughnessTextureUvMinMax.y,sheenRoughnessTextureUvMinMax.w,l9_379,l9_381);
l9_373=l9_381;
l9_372=vec2(l9_377,l9_380);
}
#else
{
l9_373=1.0;
l9_372=vec2(l9_369,l9_371);
}
#endif
vec2 l9_382=sc_TransformUV(l9_372,(int(SC_USE_UV_TRANSFORM_sheenRoughnessTexture)!=0),sheenRoughnessTextureTransform);
float l9_383=l9_382.x;
float l9_384=l9_373;
sc_SoftwareWrapLate(l9_383,ivec2(SC_SOFTWARE_WRAP_MODE_U_sheenRoughnessTexture,SC_SOFTWARE_WRAP_MODE_V_sheenRoughnessTexture).x,l9_367,l9_384);
float l9_385=l9_382.y;
float l9_386=l9_384;
sc_SoftwareWrapLate(l9_385,ivec2(SC_SOFTWARE_WRAP_MODE_U_sheenRoughnessTexture,SC_SOFTWARE_WRAP_MODE_V_sheenRoughnessTexture).y,l9_367,l9_386);
float l9_387=l9_386;
vec3 l9_388=sc_SamplingCoordsViewToGlobal(vec2(l9_383,l9_385),sheenRoughnessTextureLayout,sheenRoughnessTextureGetStereoViewIndex());
vec4 l9_389=texture(sheenRoughnessTexture,l9_388.xy,0.0);
vec4 l9_390;
#if (SC_USE_CLAMP_TO_BORDER_sheenRoughnessTexture)
{
l9_390=mix(sheenRoughnessTextureBorderColor,l9_389,vec4(l9_387));
}
#else
{
l9_390=l9_389;
}
#endif
l9_342=l9_390;
}
#endif
l9_339=sheenRoughnessFactor*ssSRGB_to_Linear(l9_342.w);
}
#else
{
l9_339=sheenRoughnessFactor;
}
#endif
float l9_391=max(l9_339,9.9999997e-05);
vec3 l9_392=tempGlobals.ViewDirWS;
float l9_393=dot(l9_69,l9_392);
float l9_394=max(clamp(l9_393,0.0,1.0),9.9999997e-05);
float l9_395=l9_391*l9_391;
vec3 l9_396=reflect(-l9_392,l9_69);
vec3 l9_397=normalize(l9_396);
float l9_398=3.0+((((l9_391*4.0)-0.0)*2.0)/5.000001);
bool l9_399=l9_391<0.25;
float l9_400;
if (l9_399)
{
l9_400=(((-339.20001)*l9_395)+(161.39999*l9_391))-25.9;
}
else
{
l9_400=(((-8.4799995)*l9_395)+(14.3*l9_391))-9.9499998;
}
float l9_401;
if (l9_399)
{
l9_401=((44.0*l9_395)-(23.700001*l9_391))+3.26;
}
else
{
l9_401=((1.97*l9_395)-(3.27*l9_391))+0.72000003;
}
float l9_402=l9_400*l9_394;
float l9_403=l9_402+l9_401;
float l9_404;
if (l9_399)
{
l9_404=0.0;
}
else
{
l9_404=0.1*(l9_391-0.25);
}
float l9_405=exp(l9_403)+l9_404;
float l9_406=-l9_397.z;
float l9_407=l9_397.x;
vec2 l9_408=vec2((((l9_407<0.0) ? (-1.0) : 1.0)*acos(clamp(l9_406/length(vec2(l9_407,l9_406)),-1.0,1.0)))-1.5707964,acos(l9_397.y))/vec2(6.2831855,3.1415927);
float l9_409=l9_408.x+(sc_EnvmapRotation.y/360.0);
vec2 l9_410=vec2(l9_409,1.0-l9_408.y);
l9_410.x=fract((l9_409+floor(l9_409))+1.0);
vec4 l9_411;
#if (SC_DEVICE_CLASS>=2)
{
float l9_412=floor(l9_398);
float l9_413=ceil(l9_398);
l9_411=mix(sc_EnvmapSpecularSampleViewIndexLevel(calcSeamlessPanoramicUvsForSampling(l9_410,sc_EnvmapSpecularSize.xy,l9_412),sc_EnvmapSpecularGetStereoViewIndex(),l9_412),sc_EnvmapSpecularSampleViewIndexLevel(calcSeamlessPanoramicUvsForSampling(l9_410,sc_EnvmapSpecularSize.xy,l9_413),sc_EnvmapSpecularGetStereoViewIndex(),l9_413),vec4(l9_398-l9_412));
}
#else
{
l9_411=sc_EnvmapSpecularSampleViewIndexLevel(l9_410,sc_EnvmapSpecularGetStereoViewIndex(),l9_398);
}
#endif
vec3 l9_414=(((l9_411.xyz*(1.0/l9_411.w))*sc_EnvmapExposure)+vec3(1e-06))*l9_287;
vec3 l9_415=(vec3(0.0)+(l9_414*clamp(l9_405*3.1415927,0.0,1.0))).xyz;
vec3 l9_416;
if (sc_DirectionalLightsCount>0)
{
vec3 l9_417;
l9_417=vec3(0.0);
vec3 l9_418;
int l9_419=0;
bool l9_420;
for (int snapLoopIndex=0; snapLoopIndex==0; snapLoopIndex+=0)
{
l9_420=l9_419<sc_DirectionalLightsCount;
if (l9_420)
{
vec3 l9_421;
if (l9_420)
{
l9_421=sc_DirectionalLights[l9_419].color.xyz;
}
else
{
l9_421=vec3(0.0);
}
float l9_422;
if (l9_420)
{
l9_422=sc_DirectionalLights[l9_419].color.w;
}
else
{
l9_422=0.0;
}
vec3 l9_423=l9_421*l9_422;
vec3 l9_424;
if (l9_420)
{
l9_424=-sc_DirectionalLights[l9_419].direction;
}
else
{
l9_424=vec3(0.0);
}
vec3 l9_425=normalize(-l9_424);
float l9_426=clamp(dot(l9_69,l9_425),0.0,1.0);
l9_418=l9_417+(((((l9_423*3.1415901)*l9_287)*N3_charlieD(l9_395,clamp(dot(l9_69,normalize(l9_425+l9_392)),0.0,1.0)))*(1.0/(4.0*((l9_426+l9_394)-(l9_426*l9_394)))))*l9_426);
l9_417=l9_418;
l9_419++;
continue;
}
else
{
break;
}
}
l9_416=l9_417;
}
else
{
l9_416=vec3(0.0);
}
vec3 l9_427;
if (sc_PointLightsCount>0)
{
vec3 l9_428;
l9_428=l9_416;
vec3 l9_429;
int l9_430=0;
bool l9_431;
for (int snapLoopIndex=0; snapLoopIndex==0; snapLoopIndex+=0)
{
l9_431=l9_430<sc_PointLightsCount;
if (l9_431)
{
vec3 l9_432;
if (l9_431)
{
l9_432=sc_PointLights[l9_430].color.xyz;
}
else
{
l9_432=vec3(0.0);
}
float l9_433;
if (l9_431)
{
l9_433=sc_PointLights[l9_430].color.w;
}
else
{
l9_433=0.0;
}
vec3 l9_434=l9_432*l9_433;
vec3 l9_435;
if (l9_431)
{
l9_435=sc_PointLights[l9_430].position;
}
else
{
l9_435=vec3(0.0);
}
vec3 l9_436=normalize(l9_435-tempGlobals.SurfacePosition_WorldSpace);
float l9_437=clamp(dot(l9_69,l9_436),0.0,1.0);
l9_429=l9_428+(((((l9_434*3.1415901)*l9_287)*N3_charlieD(l9_395,clamp(dot(l9_69,normalize(l9_436+l9_392)),0.0,1.0)))*(1.0/(4.0*((l9_437+l9_394)-(l9_437*l9_394)))))*l9_437);
l9_428=l9_429;
l9_430++;
continue;
}
else
{
break;
}
}
l9_427=l9_428;
}
else
{
l9_427=l9_416;
}
vec3 l9_438;
if (sc_AmbientLightsCount>0)
{
vec3 l9_439;
l9_439=l9_427;
vec3 l9_440;
int l9_441=0;
bool l9_442;
for (int snapLoopIndex=0; snapLoopIndex==0; snapLoopIndex+=0)
{
l9_442=l9_441<sc_AmbientLightsCount;
if (l9_442)
{
vec3 l9_443;
if (l9_442)
{
l9_443=sc_AmbientLights[l9_441].color;
}
else
{
l9_443=vec3(0.0);
}
float l9_444;
if (l9_442)
{
l9_444=sc_AmbientLights[l9_441].intensity;
}
else
{
l9_444=0.0;
}
l9_440=l9_439+(((l9_443*l9_444)/vec3(3.1415901))*l9_287);
l9_439=l9_440;
l9_441++;
continue;
}
else
{
break;
}
}
l9_438=l9_439;
}
else
{
l9_438=l9_427;
}
vec3 l9_445=mix(l9_415,l9_415*l9_122.xyz,vec3(l9_122.w)).xyz+l9_438;
vec4 l9_446=vec4(l9_445.x,l9_445.y,l9_445.z,vec4(0.0).w);
l9_446.w=1.0-(max(max(l9_287.x,l9_287.y),l9_287.z)*0.15700001);
l9_286=l9_446;
}
#else
{
l9_286=vec4(0.0);
}
#endif
float l9_447;
vec3 l9_448;
float l9_449;
#if (ENABLE_CLEARCOAT)
{
float l9_450;
#if (ENABLE_CLEARCOAT_TEX)
{
vec2 l9_451=N3_getUV(Tweak_N44);
vec2 l9_452;
if ((int(ENABLE_TEXTURE_TRANSFORM)!=0)&&(int(ENABLE_CLEARCOAT_TEXTURE_TRANSFORM)!=0))
{
l9_452=N3_uvTransform(l9_451,clearcoatTexture_offset,clearcoatTexture_scale,clearcoatTexture_rotation);
}
else
{
l9_452=l9_451;
}
vec4 l9_453;
#if (clearcoatTextureLayout==2)
{
bool l9_454=(int(SC_USE_CLAMP_TO_BORDER_clearcoatTexture)!=0)&&(!(int(SC_USE_UV_MIN_MAX_clearcoatTexture)!=0));
float l9_455=l9_452.x;
sc_SoftwareWrapEarly(l9_455,ivec2(SC_SOFTWARE_WRAP_MODE_U_clearcoatTexture,SC_SOFTWARE_WRAP_MODE_V_clearcoatTexture).x);
float l9_456=l9_455;
float l9_457=l9_452.y;
sc_SoftwareWrapEarly(l9_457,ivec2(SC_SOFTWARE_WRAP_MODE_U_clearcoatTexture,SC_SOFTWARE_WRAP_MODE_V_clearcoatTexture).y);
float l9_458=l9_457;
vec2 l9_459;
float l9_460;
#if (SC_USE_UV_MIN_MAX_clearcoatTexture)
{
bool l9_461;
#if (SC_USE_CLAMP_TO_BORDER_clearcoatTexture)
{
l9_461=ivec2(SC_SOFTWARE_WRAP_MODE_U_clearcoatTexture,SC_SOFTWARE_WRAP_MODE_V_clearcoatTexture).x==3;
}
#else
{
l9_461=(int(SC_USE_CLAMP_TO_BORDER_clearcoatTexture)!=0);
}
#endif
float l9_462=l9_456;
float l9_463=1.0;
sc_ClampUV(l9_462,clearcoatTextureUvMinMax.x,clearcoatTextureUvMinMax.z,l9_461,l9_463);
float l9_464=l9_462;
float l9_465=l9_463;
bool l9_466;
#if (SC_USE_CLAMP_TO_BORDER_clearcoatTexture)
{
l9_466=ivec2(SC_SOFTWARE_WRAP_MODE_U_clearcoatTexture,SC_SOFTWARE_WRAP_MODE_V_clearcoatTexture).y==3;
}
#else
{
l9_466=(int(SC_USE_CLAMP_TO_BORDER_clearcoatTexture)!=0);
}
#endif
float l9_467=l9_458;
float l9_468=l9_465;
sc_ClampUV(l9_467,clearcoatTextureUvMinMax.y,clearcoatTextureUvMinMax.w,l9_466,l9_468);
l9_460=l9_468;
l9_459=vec2(l9_464,l9_467);
}
#else
{
l9_460=1.0;
l9_459=vec2(l9_456,l9_458);
}
#endif
vec2 l9_469=sc_TransformUV(l9_459,(int(SC_USE_UV_TRANSFORM_clearcoatTexture)!=0),clearcoatTextureTransform);
float l9_470=l9_469.x;
float l9_471=l9_460;
sc_SoftwareWrapLate(l9_470,ivec2(SC_SOFTWARE_WRAP_MODE_U_clearcoatTexture,SC_SOFTWARE_WRAP_MODE_V_clearcoatTexture).x,l9_454,l9_471);
float l9_472=l9_469.y;
float l9_473=l9_471;
sc_SoftwareWrapLate(l9_472,ivec2(SC_SOFTWARE_WRAP_MODE_U_clearcoatTexture,SC_SOFTWARE_WRAP_MODE_V_clearcoatTexture).y,l9_454,l9_473);
float l9_474=l9_473;
vec3 l9_475=sc_SamplingCoordsViewToGlobal(vec2(l9_470,l9_472),clearcoatTextureLayout,clearcoatTextureGetStereoViewIndex());
vec4 l9_476=texture(clearcoatTextureArrSC,l9_475,0.0);
vec4 l9_477;
#if (SC_USE_CLAMP_TO_BORDER_clearcoatTexture)
{
l9_477=mix(clearcoatTextureBorderColor,l9_476,vec4(l9_474));
}
#else
{
l9_477=l9_476;
}
#endif
l9_453=l9_477;
}
#else
{
bool l9_478=(int(SC_USE_CLAMP_TO_BORDER_clearcoatTexture)!=0)&&(!(int(SC_USE_UV_MIN_MAX_clearcoatTexture)!=0));
float l9_479=l9_452.x;
sc_SoftwareWrapEarly(l9_479,ivec2(SC_SOFTWARE_WRAP_MODE_U_clearcoatTexture,SC_SOFTWARE_WRAP_MODE_V_clearcoatTexture).x);
float l9_480=l9_479;
float l9_481=l9_452.y;
sc_SoftwareWrapEarly(l9_481,ivec2(SC_SOFTWARE_WRAP_MODE_U_clearcoatTexture,SC_SOFTWARE_WRAP_MODE_V_clearcoatTexture).y);
float l9_482=l9_481;
vec2 l9_483;
float l9_484;
#if (SC_USE_UV_MIN_MAX_clearcoatTexture)
{
bool l9_485;
#if (SC_USE_CLAMP_TO_BORDER_clearcoatTexture)
{
l9_485=ivec2(SC_SOFTWARE_WRAP_MODE_U_clearcoatTexture,SC_SOFTWARE_WRAP_MODE_V_clearcoatTexture).x==3;
}
#else
{
l9_485=(int(SC_USE_CLAMP_TO_BORDER_clearcoatTexture)!=0);
}
#endif
float l9_486=l9_480;
float l9_487=1.0;
sc_ClampUV(l9_486,clearcoatTextureUvMinMax.x,clearcoatTextureUvMinMax.z,l9_485,l9_487);
float l9_488=l9_486;
float l9_489=l9_487;
bool l9_490;
#if (SC_USE_CLAMP_TO_BORDER_clearcoatTexture)
{
l9_490=ivec2(SC_SOFTWARE_WRAP_MODE_U_clearcoatTexture,SC_SOFTWARE_WRAP_MODE_V_clearcoatTexture).y==3;
}
#else
{
l9_490=(int(SC_USE_CLAMP_TO_BORDER_clearcoatTexture)!=0);
}
#endif
float l9_491=l9_482;
float l9_492=l9_489;
sc_ClampUV(l9_491,clearcoatTextureUvMinMax.y,clearcoatTextureUvMinMax.w,l9_490,l9_492);
l9_484=l9_492;
l9_483=vec2(l9_488,l9_491);
}
#else
{
l9_484=1.0;
l9_483=vec2(l9_480,l9_482);
}
#endif
vec2 l9_493=sc_TransformUV(l9_483,(int(SC_USE_UV_TRANSFORM_clearcoatTexture)!=0),clearcoatTextureTransform);
float l9_494=l9_493.x;
float l9_495=l9_484;
sc_SoftwareWrapLate(l9_494,ivec2(SC_SOFTWARE_WRAP_MODE_U_clearcoatTexture,SC_SOFTWARE_WRAP_MODE_V_clearcoatTexture).x,l9_478,l9_495);
float l9_496=l9_493.y;
float l9_497=l9_495;
sc_SoftwareWrapLate(l9_496,ivec2(SC_SOFTWARE_WRAP_MODE_U_clearcoatTexture,SC_SOFTWARE_WRAP_MODE_V_clearcoatTexture).y,l9_478,l9_497);
float l9_498=l9_497;
vec3 l9_499=sc_SamplingCoordsViewToGlobal(vec2(l9_494,l9_496),clearcoatTextureLayout,clearcoatTextureGetStereoViewIndex());
vec4 l9_500=texture(clearcoatTexture,l9_499.xy,0.0);
vec4 l9_501;
#if (SC_USE_CLAMP_TO_BORDER_clearcoatTexture)
{
l9_501=mix(clearcoatTextureBorderColor,l9_500,vec4(l9_498));
}
#else
{
l9_501=l9_500;
}
#endif
l9_453=l9_501;
}
#endif
l9_450=ssSRGB_to_Linear(l9_453.x);
}
#else
{
l9_450=1.0;
}
#endif
float l9_502=l9_450*clearcoatFactor;
float l9_503;
#if (ENABLE_CLEARCOAT_ROUGHNESS_TEX)
{
vec2 l9_504=N3_getUV(Tweak_N60);
vec2 l9_505;
if ((int(ENABLE_TEXTURE_TRANSFORM)!=0)&&(int(ENABLE_CLEARCOAT_ROUGHNESS_TEXTURE_TRANSFORM)!=0))
{
l9_505=N3_uvTransform(l9_504,clearcoatRoughnessTexture_offset,clearcoatRoughnessTexture_scale,clearcoatRoughnessTexture_rotation);
}
else
{
l9_505=l9_504;
}
vec4 l9_506;
#if (clearcoatRoughnessTextureLayout==2)
{
bool l9_507=(int(SC_USE_CLAMP_TO_BORDER_clearcoatRoughnessTexture)!=0)&&(!(int(SC_USE_UV_MIN_MAX_clearcoatRoughnessTexture)!=0));
float l9_508=l9_505.x;
sc_SoftwareWrapEarly(l9_508,ivec2(SC_SOFTWARE_WRAP_MODE_U_clearcoatRoughnessTexture,SC_SOFTWARE_WRAP_MODE_V_clearcoatRoughnessTexture).x);
float l9_509=l9_508;
float l9_510=l9_505.y;
sc_SoftwareWrapEarly(l9_510,ivec2(SC_SOFTWARE_WRAP_MODE_U_clearcoatRoughnessTexture,SC_SOFTWARE_WRAP_MODE_V_clearcoatRoughnessTexture).y);
float l9_511=l9_510;
vec2 l9_512;
float l9_513;
#if (SC_USE_UV_MIN_MAX_clearcoatRoughnessTexture)
{
bool l9_514;
#if (SC_USE_CLAMP_TO_BORDER_clearcoatRoughnessTexture)
{
l9_514=ivec2(SC_SOFTWARE_WRAP_MODE_U_clearcoatRoughnessTexture,SC_SOFTWARE_WRAP_MODE_V_clearcoatRoughnessTexture).x==3;
}
#else
{
l9_514=(int(SC_USE_CLAMP_TO_BORDER_clearcoatRoughnessTexture)!=0);
}
#endif
float l9_515=l9_509;
float l9_516=1.0;
sc_ClampUV(l9_515,clearcoatRoughnessTextureUvMinMax.x,clearcoatRoughnessTextureUvMinMax.z,l9_514,l9_516);
float l9_517=l9_515;
float l9_518=l9_516;
bool l9_519;
#if (SC_USE_CLAMP_TO_BORDER_clearcoatRoughnessTexture)
{
l9_519=ivec2(SC_SOFTWARE_WRAP_MODE_U_clearcoatRoughnessTexture,SC_SOFTWARE_WRAP_MODE_V_clearcoatRoughnessTexture).y==3;
}
#else
{
l9_519=(int(SC_USE_CLAMP_TO_BORDER_clearcoatRoughnessTexture)!=0);
}
#endif
float l9_520=l9_511;
float l9_521=l9_518;
sc_ClampUV(l9_520,clearcoatRoughnessTextureUvMinMax.y,clearcoatRoughnessTextureUvMinMax.w,l9_519,l9_521);
l9_513=l9_521;
l9_512=vec2(l9_517,l9_520);
}
#else
{
l9_513=1.0;
l9_512=vec2(l9_509,l9_511);
}
#endif
vec2 l9_522=sc_TransformUV(l9_512,(int(SC_USE_UV_TRANSFORM_clearcoatRoughnessTexture)!=0),clearcoatRoughnessTextureTransform);
float l9_523=l9_522.x;
float l9_524=l9_513;
sc_SoftwareWrapLate(l9_523,ivec2(SC_SOFTWARE_WRAP_MODE_U_clearcoatRoughnessTexture,SC_SOFTWARE_WRAP_MODE_V_clearcoatRoughnessTexture).x,l9_507,l9_524);
float l9_525=l9_522.y;
float l9_526=l9_524;
sc_SoftwareWrapLate(l9_525,ivec2(SC_SOFTWARE_WRAP_MODE_U_clearcoatRoughnessTexture,SC_SOFTWARE_WRAP_MODE_V_clearcoatRoughnessTexture).y,l9_507,l9_526);
float l9_527=l9_526;
vec3 l9_528=sc_SamplingCoordsViewToGlobal(vec2(l9_523,l9_525),clearcoatRoughnessTextureLayout,clearcoatRoughnessTextureGetStereoViewIndex());
vec4 l9_529=texture(clearcoatRoughnessTextureArrSC,l9_528,0.0);
vec4 l9_530;
#if (SC_USE_CLAMP_TO_BORDER_clearcoatRoughnessTexture)
{
l9_530=mix(clearcoatRoughnessTextureBorderColor,l9_529,vec4(l9_527));
}
#else
{
l9_530=l9_529;
}
#endif
l9_506=l9_530;
}
#else
{
bool l9_531=(int(SC_USE_CLAMP_TO_BORDER_clearcoatRoughnessTexture)!=0)&&(!(int(SC_USE_UV_MIN_MAX_clearcoatRoughnessTexture)!=0));
float l9_532=l9_505.x;
sc_SoftwareWrapEarly(l9_532,ivec2(SC_SOFTWARE_WRAP_MODE_U_clearcoatRoughnessTexture,SC_SOFTWARE_WRAP_MODE_V_clearcoatRoughnessTexture).x);
float l9_533=l9_532;
float l9_534=l9_505.y;
sc_SoftwareWrapEarly(l9_534,ivec2(SC_SOFTWARE_WRAP_MODE_U_clearcoatRoughnessTexture,SC_SOFTWARE_WRAP_MODE_V_clearcoatRoughnessTexture).y);
float l9_535=l9_534;
vec2 l9_536;
float l9_537;
#if (SC_USE_UV_MIN_MAX_clearcoatRoughnessTexture)
{
bool l9_538;
#if (SC_USE_CLAMP_TO_BORDER_clearcoatRoughnessTexture)
{
l9_538=ivec2(SC_SOFTWARE_WRAP_MODE_U_clearcoatRoughnessTexture,SC_SOFTWARE_WRAP_MODE_V_clearcoatRoughnessTexture).x==3;
}
#else
{
l9_538=(int(SC_USE_CLAMP_TO_BORDER_clearcoatRoughnessTexture)!=0);
}
#endif
float l9_539=l9_533;
float l9_540=1.0;
sc_ClampUV(l9_539,clearcoatRoughnessTextureUvMinMax.x,clearcoatRoughnessTextureUvMinMax.z,l9_538,l9_540);
float l9_541=l9_539;
float l9_542=l9_540;
bool l9_543;
#if (SC_USE_CLAMP_TO_BORDER_clearcoatRoughnessTexture)
{
l9_543=ivec2(SC_SOFTWARE_WRAP_MODE_U_clearcoatRoughnessTexture,SC_SOFTWARE_WRAP_MODE_V_clearcoatRoughnessTexture).y==3;
}
#else
{
l9_543=(int(SC_USE_CLAMP_TO_BORDER_clearcoatRoughnessTexture)!=0);
}
#endif
float l9_544=l9_535;
float l9_545=l9_542;
sc_ClampUV(l9_544,clearcoatRoughnessTextureUvMinMax.y,clearcoatRoughnessTextureUvMinMax.w,l9_543,l9_545);
l9_537=l9_545;
l9_536=vec2(l9_541,l9_544);
}
#else
{
l9_537=1.0;
l9_536=vec2(l9_533,l9_535);
}
#endif
vec2 l9_546=sc_TransformUV(l9_536,(int(SC_USE_UV_TRANSFORM_clearcoatRoughnessTexture)!=0),clearcoatRoughnessTextureTransform);
float l9_547=l9_546.x;
float l9_548=l9_537;
sc_SoftwareWrapLate(l9_547,ivec2(SC_SOFTWARE_WRAP_MODE_U_clearcoatRoughnessTexture,SC_SOFTWARE_WRAP_MODE_V_clearcoatRoughnessTexture).x,l9_531,l9_548);
float l9_549=l9_546.y;
float l9_550=l9_548;
sc_SoftwareWrapLate(l9_549,ivec2(SC_SOFTWARE_WRAP_MODE_U_clearcoatRoughnessTexture,SC_SOFTWARE_WRAP_MODE_V_clearcoatRoughnessTexture).y,l9_531,l9_550);
float l9_551=l9_550;
vec3 l9_552=sc_SamplingCoordsViewToGlobal(vec2(l9_547,l9_549),clearcoatRoughnessTextureLayout,clearcoatRoughnessTextureGetStereoViewIndex());
vec4 l9_553=texture(clearcoatRoughnessTexture,l9_552.xy,0.0);
vec4 l9_554;
#if (SC_USE_CLAMP_TO_BORDER_clearcoatRoughnessTexture)
{
l9_554=mix(clearcoatRoughnessTextureBorderColor,l9_553,vec4(l9_551));
}
#else
{
l9_554=l9_553;
}
#endif
l9_506=l9_554;
}
#endif
l9_503=ssSRGB_to_Linear(l9_506.y);
}
#else
{
l9_503=1.0;
}
#endif
float l9_555=l9_503*clearcoatRoughnessFactor;
vec3 l9_556;
#if (ENABLE_CLEARCOAT_NORMAL_TEX)
{
vec2 l9_557=N3_getUV(Tweak_N47);
vec2 l9_558;
if ((int(ENABLE_TEXTURE_TRANSFORM)!=0)&&(int(ENABLE_CLEARCOAT_NORMAL_TEXTURE_TRANSFORM)!=0))
{
l9_558=N3_uvTransform(l9_557,clearcoatNormalTexture_offset,clearcoatNormalTexture_scale,clearcoatNormalTexture_rotation);
}
else
{
l9_558=l9_557;
}
vec4 l9_559;
#if (clearcoatNormalTextureLayout==2)
{
bool l9_560=(int(SC_USE_CLAMP_TO_BORDER_clearcoatNormalTexture)!=0)&&(!(int(SC_USE_UV_MIN_MAX_clearcoatNormalTexture)!=0));
float l9_561=l9_558.x;
sc_SoftwareWrapEarly(l9_561,ivec2(SC_SOFTWARE_WRAP_MODE_U_clearcoatNormalTexture,SC_SOFTWARE_WRAP_MODE_V_clearcoatNormalTexture).x);
float l9_562=l9_561;
float l9_563=l9_558.y;
sc_SoftwareWrapEarly(l9_563,ivec2(SC_SOFTWARE_WRAP_MODE_U_clearcoatNormalTexture,SC_SOFTWARE_WRAP_MODE_V_clearcoatNormalTexture).y);
float l9_564=l9_563;
vec2 l9_565;
float l9_566;
#if (SC_USE_UV_MIN_MAX_clearcoatNormalTexture)
{
bool l9_567;
#if (SC_USE_CLAMP_TO_BORDER_clearcoatNormalTexture)
{
l9_567=ivec2(SC_SOFTWARE_WRAP_MODE_U_clearcoatNormalTexture,SC_SOFTWARE_WRAP_MODE_V_clearcoatNormalTexture).x==3;
}
#else
{
l9_567=(int(SC_USE_CLAMP_TO_BORDER_clearcoatNormalTexture)!=0);
}
#endif
float l9_568=l9_562;
float l9_569=1.0;
sc_ClampUV(l9_568,clearcoatNormalTextureUvMinMax.x,clearcoatNormalTextureUvMinMax.z,l9_567,l9_569);
float l9_570=l9_568;
float l9_571=l9_569;
bool l9_572;
#if (SC_USE_CLAMP_TO_BORDER_clearcoatNormalTexture)
{
l9_572=ivec2(SC_SOFTWARE_WRAP_MODE_U_clearcoatNormalTexture,SC_SOFTWARE_WRAP_MODE_V_clearcoatNormalTexture).y==3;
}
#else
{
l9_572=(int(SC_USE_CLAMP_TO_BORDER_clearcoatNormalTexture)!=0);
}
#endif
float l9_573=l9_564;
float l9_574=l9_571;
sc_ClampUV(l9_573,clearcoatNormalTextureUvMinMax.y,clearcoatNormalTextureUvMinMax.w,l9_572,l9_574);
l9_566=l9_574;
l9_565=vec2(l9_570,l9_573);
}
#else
{
l9_566=1.0;
l9_565=vec2(l9_562,l9_564);
}
#endif
vec2 l9_575=sc_TransformUV(l9_565,(int(SC_USE_UV_TRANSFORM_clearcoatNormalTexture)!=0),clearcoatNormalTextureTransform);
float l9_576=l9_575.x;
float l9_577=l9_566;
sc_SoftwareWrapLate(l9_576,ivec2(SC_SOFTWARE_WRAP_MODE_U_clearcoatNormalTexture,SC_SOFTWARE_WRAP_MODE_V_clearcoatNormalTexture).x,l9_560,l9_577);
float l9_578=l9_575.y;
float l9_579=l9_577;
sc_SoftwareWrapLate(l9_578,ivec2(SC_SOFTWARE_WRAP_MODE_U_clearcoatNormalTexture,SC_SOFTWARE_WRAP_MODE_V_clearcoatNormalTexture).y,l9_560,l9_579);
float l9_580=l9_579;
vec3 l9_581=sc_SamplingCoordsViewToGlobal(vec2(l9_576,l9_578),clearcoatNormalTextureLayout,clearcoatNormalTextureGetStereoViewIndex());
vec4 l9_582=texture(clearcoatNormalTextureArrSC,l9_581,0.0);
vec4 l9_583;
#if (SC_USE_CLAMP_TO_BORDER_clearcoatNormalTexture)
{
l9_583=mix(clearcoatNormalTextureBorderColor,l9_582,vec4(l9_580));
}
#else
{
l9_583=l9_582;
}
#endif
l9_559=l9_583;
}
#else
{
bool l9_584=(int(SC_USE_CLAMP_TO_BORDER_clearcoatNormalTexture)!=0)&&(!(int(SC_USE_UV_MIN_MAX_clearcoatNormalTexture)!=0));
float l9_585=l9_558.x;
sc_SoftwareWrapEarly(l9_585,ivec2(SC_SOFTWARE_WRAP_MODE_U_clearcoatNormalTexture,SC_SOFTWARE_WRAP_MODE_V_clearcoatNormalTexture).x);
float l9_586=l9_585;
float l9_587=l9_558.y;
sc_SoftwareWrapEarly(l9_587,ivec2(SC_SOFTWARE_WRAP_MODE_U_clearcoatNormalTexture,SC_SOFTWARE_WRAP_MODE_V_clearcoatNormalTexture).y);
float l9_588=l9_587;
vec2 l9_589;
float l9_590;
#if (SC_USE_UV_MIN_MAX_clearcoatNormalTexture)
{
bool l9_591;
#if (SC_USE_CLAMP_TO_BORDER_clearcoatNormalTexture)
{
l9_591=ivec2(SC_SOFTWARE_WRAP_MODE_U_clearcoatNormalTexture,SC_SOFTWARE_WRAP_MODE_V_clearcoatNormalTexture).x==3;
}
#else
{
l9_591=(int(SC_USE_CLAMP_TO_BORDER_clearcoatNormalTexture)!=0);
}
#endif
float l9_592=l9_586;
float l9_593=1.0;
sc_ClampUV(l9_592,clearcoatNormalTextureUvMinMax.x,clearcoatNormalTextureUvMinMax.z,l9_591,l9_593);
float l9_594=l9_592;
float l9_595=l9_593;
bool l9_596;
#if (SC_USE_CLAMP_TO_BORDER_clearcoatNormalTexture)
{
l9_596=ivec2(SC_SOFTWARE_WRAP_MODE_U_clearcoatNormalTexture,SC_SOFTWARE_WRAP_MODE_V_clearcoatNormalTexture).y==3;
}
#else
{
l9_596=(int(SC_USE_CLAMP_TO_BORDER_clearcoatNormalTexture)!=0);
}
#endif
float l9_597=l9_588;
float l9_598=l9_595;
sc_ClampUV(l9_597,clearcoatNormalTextureUvMinMax.y,clearcoatNormalTextureUvMinMax.w,l9_596,l9_598);
l9_590=l9_598;
l9_589=vec2(l9_594,l9_597);
}
#else
{
l9_590=1.0;
l9_589=vec2(l9_586,l9_588);
}
#endif
vec2 l9_599=sc_TransformUV(l9_589,(int(SC_USE_UV_TRANSFORM_clearcoatNormalTexture)!=0),clearcoatNormalTextureTransform);
float l9_600=l9_599.x;
float l9_601=l9_590;
sc_SoftwareWrapLate(l9_600,ivec2(SC_SOFTWARE_WRAP_MODE_U_clearcoatNormalTexture,SC_SOFTWARE_WRAP_MODE_V_clearcoatNormalTexture).x,l9_584,l9_601);
float l9_602=l9_599.y;
float l9_603=l9_601;
sc_SoftwareWrapLate(l9_602,ivec2(SC_SOFTWARE_WRAP_MODE_U_clearcoatNormalTexture,SC_SOFTWARE_WRAP_MODE_V_clearcoatNormalTexture).y,l9_584,l9_603);
float l9_604=l9_603;
vec3 l9_605=sc_SamplingCoordsViewToGlobal(vec2(l9_600,l9_602),clearcoatNormalTextureLayout,clearcoatNormalTextureGetStereoViewIndex());
vec4 l9_606=texture(clearcoatNormalTexture,l9_605.xy,0.0);
vec4 l9_607;
#if (SC_USE_CLAMP_TO_BORDER_clearcoatNormalTexture)
{
l9_607=mix(clearcoatNormalTextureBorderColor,l9_606,vec4(l9_604));
}
#else
{
l9_607=l9_606;
}
#endif
l9_559=l9_607;
}
#endif
l9_556=l9_559.xyz*0.9921875;
}
#else
{
l9_556=vec3(0.0,0.0,1.0);
}
#endif
l9_449=l9_555;
l9_448=l9_556;
l9_447=l9_502;
}
#else
{
l9_449=0.0;
l9_448=vec3(0.0);
l9_447=0.0;
}
#endif
vec3 l9_608;
#if (!sc_ProjectiveShadowsCaster)
{
l9_608=l9_69;
}
#else
{
l9_608=vec3(0.0);
}
#endif
ngsAlphaTest(clamp(l9_285,0.0,1.0));
sc_WriteReceiverData(varPos,l9_608,l9_123);
vec3 l9_609;
#if (!sc_ProjectiveShadowsCaster)
{
l9_609=mat3(l9_1,l9_2,l9_0)*l9_448;
}
#else
{
l9_609=vec3(0.0);
}
#endif
ngsAlphaTest(Port_Opacity_N405);
sc_WriteReceiverData(varPos,l9_609,l9_449);
tempGlobals=l9_6;
if (((int(ENABLE_SHEEN)!=0)||(int(ENABLE_TRANSMISSION)!=0))||(int(ENABLE_CLEARCOAT)!=0))
{
vec4 l9_610=ssSRGB_to_Linear(vec4(0.0));
vec4 l9_611;
#if (ENABLE_SHEEN)
{
vec3 l9_612=(l9_610.xyz*l9_286.w)+l9_286.xyz;
l9_611=vec4(l9_612.x,l9_612.y,l9_612.z,l9_610.w);
}
#else
{
l9_611=l9_610;
}
#endif
vec4 l9_613;
#if (ENABLE_TRANSMISSION)
{
vec4 l9_614=mix(vec4(l9_179,1.0),l9_611,vec4(ssSRGB_to_Linear(l9_285)));
l9_614.w=1.0;
l9_613=l9_614;
}
#else
{
l9_613=l9_611;
}
#endif
vec4 l9_615;
#if (ENABLE_CLEARCOAT)
{
vec3 l9_616=l9_613.xyz+(ssSRGB_to_Linear(vec4(0.0))*l9_447).xyz;
l9_615=vec4(l9_616.x,l9_616.y,l9_616.z,l9_613.w);
}
#else
{
l9_615=l9_613;
}
#endif
}
}
#else
{
float l9_617;
Node40_Bool_Parameter(l9_617,l9_6);
float l9_618;
Node121_Bool_Parameter(l9_618,l9_6);
float l9_619;
Node48_Bool_Parameter(l9_619,l9_6);
float l9_620;
Node88_Bool_Parameter(l9_620,l9_6);
tempGlobals=l9_6;
vec4 l9_621;
#if (ENABLE_BASE_TEX)
{
vec2 l9_622=N35_getUV(NODE_7_DROPLIST_ITEM);
vec2 l9_623;
if ((int(ENABLE_TEXTURE_TRANSFORM)!=0)&&(int(ENABLE_BASE_TEXTURE_TRANSFORM)!=0))
{
l9_623=N35_uvTransform(l9_622,baseColorTexture_offset,baseColorTexture_scale,baseColorTexture_rotation);
}
else
{
l9_623=l9_622;
}
l9_621=baseColorFactor*ssSRGB_to_Linear(N35_BaseTexture_sample(l9_623));
}
#else
{
l9_621=baseColorFactor;
}
#endif
vec4 l9_624;
#if (ENABLE_VERTEX_COLOR_BASE)
{
l9_624=l9_621*tempGlobals.VertexColor;
}
#else
{
l9_624=l9_621;
}
#endif
}
#endif
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
vec3 BumpedNormal;
vec3 ViewDirWS;
vec3 PositionWS;
vec3 SurfacePosition_WorldSpace;
vec3 VertexNormal_WorldSpace;
vec3 VertexTangent_WorldSpace;
vec3 VertexBinormal_WorldSpace;
vec2 Surface_UVCoord0;
vec2 Surface_UVCoord1;
vec2 gScreenCoord;
vec4 VertexColor;
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
#ifndef emissiveTextureHasSwappedViews
#define emissiveTextureHasSwappedViews 0
#elif emissiveTextureHasSwappedViews==1
#undef emissiveTextureHasSwappedViews
#define emissiveTextureHasSwappedViews 1
#endif
#ifndef emissiveTextureLayout
#define emissiveTextureLayout 0
#endif
#ifndef normalTextureHasSwappedViews
#define normalTextureHasSwappedViews 0
#elif normalTextureHasSwappedViews==1
#undef normalTextureHasSwappedViews
#define normalTextureHasSwappedViews 1
#endif
#ifndef normalTextureLayout
#define normalTextureLayout 0
#endif
#ifndef metallicRoughnessTextureHasSwappedViews
#define metallicRoughnessTextureHasSwappedViews 0
#elif metallicRoughnessTextureHasSwappedViews==1
#undef metallicRoughnessTextureHasSwappedViews
#define metallicRoughnessTextureHasSwappedViews 1
#endif
#ifndef metallicRoughnessTextureLayout
#define metallicRoughnessTextureLayout 0
#endif
#ifndef transmissionTextureHasSwappedViews
#define transmissionTextureHasSwappedViews 0
#elif transmissionTextureHasSwappedViews==1
#undef transmissionTextureHasSwappedViews
#define transmissionTextureHasSwappedViews 1
#endif
#ifndef transmissionTextureLayout
#define transmissionTextureLayout 0
#endif
#ifndef screenTextureHasSwappedViews
#define screenTextureHasSwappedViews 0
#elif screenTextureHasSwappedViews==1
#undef screenTextureHasSwappedViews
#define screenTextureHasSwappedViews 1
#endif
#ifndef screenTextureLayout
#define screenTextureLayout 0
#endif
#ifndef sheenColorTextureHasSwappedViews
#define sheenColorTextureHasSwappedViews 0
#elif sheenColorTextureHasSwappedViews==1
#undef sheenColorTextureHasSwappedViews
#define sheenColorTextureHasSwappedViews 1
#endif
#ifndef sheenColorTextureLayout
#define sheenColorTextureLayout 0
#endif
#ifndef sheenRoughnessTextureHasSwappedViews
#define sheenRoughnessTextureHasSwappedViews 0
#elif sheenRoughnessTextureHasSwappedViews==1
#undef sheenRoughnessTextureHasSwappedViews
#define sheenRoughnessTextureHasSwappedViews 1
#endif
#ifndef sheenRoughnessTextureLayout
#define sheenRoughnessTextureLayout 0
#endif
#ifndef clearcoatTextureHasSwappedViews
#define clearcoatTextureHasSwappedViews 0
#elif clearcoatTextureHasSwappedViews==1
#undef clearcoatTextureHasSwappedViews
#define clearcoatTextureHasSwappedViews 1
#endif
#ifndef clearcoatTextureLayout
#define clearcoatTextureLayout 0
#endif
#ifndef clearcoatRoughnessTextureHasSwappedViews
#define clearcoatRoughnessTextureHasSwappedViews 0
#elif clearcoatRoughnessTextureHasSwappedViews==1
#undef clearcoatRoughnessTextureHasSwappedViews
#define clearcoatRoughnessTextureHasSwappedViews 1
#endif
#ifndef clearcoatRoughnessTextureLayout
#define clearcoatRoughnessTextureLayout 0
#endif
#ifndef clearcoatNormalTextureHasSwappedViews
#define clearcoatNormalTextureHasSwappedViews 0
#elif clearcoatNormalTextureHasSwappedViews==1
#undef clearcoatNormalTextureHasSwappedViews
#define clearcoatNormalTextureHasSwappedViews 1
#endif
#ifndef clearcoatNormalTextureLayout
#define clearcoatNormalTextureLayout 0
#endif
#ifndef baseColorTextureHasSwappedViews
#define baseColorTextureHasSwappedViews 0
#elif baseColorTextureHasSwappedViews==1
#undef baseColorTextureHasSwappedViews
#define baseColorTextureHasSwappedViews 1
#endif
#ifndef baseColorTextureLayout
#define baseColorTextureLayout 0
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
#ifndef ENABLE_GLTF_LIGHTING
#define ENABLE_GLTF_LIGHTING 0
#elif ENABLE_GLTF_LIGHTING==1
#undef ENABLE_GLTF_LIGHTING
#define ENABLE_GLTF_LIGHTING 1
#endif
#ifndef ENABLE_TRANSMISSION
#define ENABLE_TRANSMISSION 0
#elif ENABLE_TRANSMISSION==1
#undef ENABLE_TRANSMISSION
#define ENABLE_TRANSMISSION 1
#endif
#ifndef ENABLE_SHEEN
#define ENABLE_SHEEN 0
#elif ENABLE_SHEEN==1
#undef ENABLE_SHEEN
#define ENABLE_SHEEN 1
#endif
#ifndef ENABLE_CLEARCOAT
#define ENABLE_CLEARCOAT 0
#elif ENABLE_CLEARCOAT==1
#undef ENABLE_CLEARCOAT
#define ENABLE_CLEARCOAT 1
#endif
#ifndef ENABLE_EMISSIVE
#define ENABLE_EMISSIVE 0
#elif ENABLE_EMISSIVE==1
#undef ENABLE_EMISSIVE
#define ENABLE_EMISSIVE 1
#endif
#ifndef SC_USE_UV_TRANSFORM_emissiveTexture
#define SC_USE_UV_TRANSFORM_emissiveTexture 0
#elif SC_USE_UV_TRANSFORM_emissiveTexture==1
#undef SC_USE_UV_TRANSFORM_emissiveTexture
#define SC_USE_UV_TRANSFORM_emissiveTexture 1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_U_emissiveTexture
#define SC_SOFTWARE_WRAP_MODE_U_emissiveTexture -1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_V_emissiveTexture
#define SC_SOFTWARE_WRAP_MODE_V_emissiveTexture -1
#endif
#ifndef SC_USE_UV_MIN_MAX_emissiveTexture
#define SC_USE_UV_MIN_MAX_emissiveTexture 0
#elif SC_USE_UV_MIN_MAX_emissiveTexture==1
#undef SC_USE_UV_MIN_MAX_emissiveTexture
#define SC_USE_UV_MIN_MAX_emissiveTexture 1
#endif
#ifndef SC_USE_CLAMP_TO_BORDER_emissiveTexture
#define SC_USE_CLAMP_TO_BORDER_emissiveTexture 0
#elif SC_USE_CLAMP_TO_BORDER_emissiveTexture==1
#undef SC_USE_CLAMP_TO_BORDER_emissiveTexture
#define SC_USE_CLAMP_TO_BORDER_emissiveTexture 1
#endif
#ifndef NODE_10_DROPLIST_ITEM
#define NODE_10_DROPLIST_ITEM 0
#endif
#ifndef ENABLE_NORMALMAP
#define ENABLE_NORMALMAP 0
#elif ENABLE_NORMALMAP==1
#undef ENABLE_NORMALMAP
#define ENABLE_NORMALMAP 1
#endif
#ifndef SC_USE_UV_TRANSFORM_normalTexture
#define SC_USE_UV_TRANSFORM_normalTexture 0
#elif SC_USE_UV_TRANSFORM_normalTexture==1
#undef SC_USE_UV_TRANSFORM_normalTexture
#define SC_USE_UV_TRANSFORM_normalTexture 1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_U_normalTexture
#define SC_SOFTWARE_WRAP_MODE_U_normalTexture -1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_V_normalTexture
#define SC_SOFTWARE_WRAP_MODE_V_normalTexture -1
#endif
#ifndef SC_USE_UV_MIN_MAX_normalTexture
#define SC_USE_UV_MIN_MAX_normalTexture 0
#elif SC_USE_UV_MIN_MAX_normalTexture==1
#undef SC_USE_UV_MIN_MAX_normalTexture
#define SC_USE_UV_MIN_MAX_normalTexture 1
#endif
#ifndef SC_USE_CLAMP_TO_BORDER_normalTexture
#define SC_USE_CLAMP_TO_BORDER_normalTexture 0
#elif SC_USE_CLAMP_TO_BORDER_normalTexture==1
#undef SC_USE_CLAMP_TO_BORDER_normalTexture
#define SC_USE_CLAMP_TO_BORDER_normalTexture 1
#endif
#ifndef NODE_8_DROPLIST_ITEM
#define NODE_8_DROPLIST_ITEM 0
#endif
#ifndef ENABLE_METALLIC_ROUGHNESS_TEX
#define ENABLE_METALLIC_ROUGHNESS_TEX 0
#elif ENABLE_METALLIC_ROUGHNESS_TEX==1
#undef ENABLE_METALLIC_ROUGHNESS_TEX
#define ENABLE_METALLIC_ROUGHNESS_TEX 1
#endif
#ifndef SC_USE_UV_TRANSFORM_metallicRoughnessTexture
#define SC_USE_UV_TRANSFORM_metallicRoughnessTexture 0
#elif SC_USE_UV_TRANSFORM_metallicRoughnessTexture==1
#undef SC_USE_UV_TRANSFORM_metallicRoughnessTexture
#define SC_USE_UV_TRANSFORM_metallicRoughnessTexture 1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_U_metallicRoughnessTexture
#define SC_SOFTWARE_WRAP_MODE_U_metallicRoughnessTexture -1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_V_metallicRoughnessTexture
#define SC_SOFTWARE_WRAP_MODE_V_metallicRoughnessTexture -1
#endif
#ifndef SC_USE_UV_MIN_MAX_metallicRoughnessTexture
#define SC_USE_UV_MIN_MAX_metallicRoughnessTexture 0
#elif SC_USE_UV_MIN_MAX_metallicRoughnessTexture==1
#undef SC_USE_UV_MIN_MAX_metallicRoughnessTexture
#define SC_USE_UV_MIN_MAX_metallicRoughnessTexture 1
#endif
#ifndef SC_USE_CLAMP_TO_BORDER_metallicRoughnessTexture
#define SC_USE_CLAMP_TO_BORDER_metallicRoughnessTexture 0
#elif SC_USE_CLAMP_TO_BORDER_metallicRoughnessTexture==1
#undef SC_USE_CLAMP_TO_BORDER_metallicRoughnessTexture
#define SC_USE_CLAMP_TO_BORDER_metallicRoughnessTexture 1
#endif
#ifndef NODE_11_DROPLIST_ITEM
#define NODE_11_DROPLIST_ITEM 0
#endif
#ifndef ENABLE_TRANSMISSION_TEX
#define ENABLE_TRANSMISSION_TEX 0
#elif ENABLE_TRANSMISSION_TEX==1
#undef ENABLE_TRANSMISSION_TEX
#define ENABLE_TRANSMISSION_TEX 1
#endif
#ifndef SC_USE_UV_TRANSFORM_transmissionTexture
#define SC_USE_UV_TRANSFORM_transmissionTexture 0
#elif SC_USE_UV_TRANSFORM_transmissionTexture==1
#undef SC_USE_UV_TRANSFORM_transmissionTexture
#define SC_USE_UV_TRANSFORM_transmissionTexture 1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_U_transmissionTexture
#define SC_SOFTWARE_WRAP_MODE_U_transmissionTexture -1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_V_transmissionTexture
#define SC_SOFTWARE_WRAP_MODE_V_transmissionTexture -1
#endif
#ifndef SC_USE_UV_MIN_MAX_transmissionTexture
#define SC_USE_UV_MIN_MAX_transmissionTexture 0
#elif SC_USE_UV_MIN_MAX_transmissionTexture==1
#undef SC_USE_UV_MIN_MAX_transmissionTexture
#define SC_USE_UV_MIN_MAX_transmissionTexture 1
#endif
#ifndef SC_USE_CLAMP_TO_BORDER_transmissionTexture
#define SC_USE_CLAMP_TO_BORDER_transmissionTexture 0
#elif SC_USE_CLAMP_TO_BORDER_transmissionTexture==1
#undef SC_USE_CLAMP_TO_BORDER_transmissionTexture
#define SC_USE_CLAMP_TO_BORDER_transmissionTexture 1
#endif
#ifndef Tweak_N30
#define Tweak_N30 0
#endif
#ifndef SC_USE_UV_TRANSFORM_screenTexture
#define SC_USE_UV_TRANSFORM_screenTexture 0
#elif SC_USE_UV_TRANSFORM_screenTexture==1
#undef SC_USE_UV_TRANSFORM_screenTexture
#define SC_USE_UV_TRANSFORM_screenTexture 1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_U_screenTexture
#define SC_SOFTWARE_WRAP_MODE_U_screenTexture -1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_V_screenTexture
#define SC_SOFTWARE_WRAP_MODE_V_screenTexture -1
#endif
#ifndef SC_USE_UV_MIN_MAX_screenTexture
#define SC_USE_UV_MIN_MAX_screenTexture 0
#elif SC_USE_UV_MIN_MAX_screenTexture==1
#undef SC_USE_UV_MIN_MAX_screenTexture
#define SC_USE_UV_MIN_MAX_screenTexture 1
#endif
#ifndef SC_USE_CLAMP_TO_BORDER_screenTexture
#define SC_USE_CLAMP_TO_BORDER_screenTexture 0
#elif SC_USE_CLAMP_TO_BORDER_screenTexture==1
#undef SC_USE_CLAMP_TO_BORDER_screenTexture
#define SC_USE_CLAMP_TO_BORDER_screenTexture 1
#endif
#ifndef ENABLE_SHEEN_COLOR_TEX
#define ENABLE_SHEEN_COLOR_TEX 0
#elif ENABLE_SHEEN_COLOR_TEX==1
#undef ENABLE_SHEEN_COLOR_TEX
#define ENABLE_SHEEN_COLOR_TEX 1
#endif
#ifndef SC_USE_UV_TRANSFORM_sheenColorTexture
#define SC_USE_UV_TRANSFORM_sheenColorTexture 0
#elif SC_USE_UV_TRANSFORM_sheenColorTexture==1
#undef SC_USE_UV_TRANSFORM_sheenColorTexture
#define SC_USE_UV_TRANSFORM_sheenColorTexture 1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_U_sheenColorTexture
#define SC_SOFTWARE_WRAP_MODE_U_sheenColorTexture -1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_V_sheenColorTexture
#define SC_SOFTWARE_WRAP_MODE_V_sheenColorTexture -1
#endif
#ifndef SC_USE_UV_MIN_MAX_sheenColorTexture
#define SC_USE_UV_MIN_MAX_sheenColorTexture 0
#elif SC_USE_UV_MIN_MAX_sheenColorTexture==1
#undef SC_USE_UV_MIN_MAX_sheenColorTexture
#define SC_USE_UV_MIN_MAX_sheenColorTexture 1
#endif
#ifndef SC_USE_CLAMP_TO_BORDER_sheenColorTexture
#define SC_USE_CLAMP_TO_BORDER_sheenColorTexture 0
#elif SC_USE_CLAMP_TO_BORDER_sheenColorTexture==1
#undef SC_USE_CLAMP_TO_BORDER_sheenColorTexture
#define SC_USE_CLAMP_TO_BORDER_sheenColorTexture 1
#endif
#ifndef Tweak_N32
#define Tweak_N32 0
#endif
#ifndef ENABLE_SHEEN_ROUGHNESS_TEX
#define ENABLE_SHEEN_ROUGHNESS_TEX 0
#elif ENABLE_SHEEN_ROUGHNESS_TEX==1
#undef ENABLE_SHEEN_ROUGHNESS_TEX
#define ENABLE_SHEEN_ROUGHNESS_TEX 1
#endif
#ifndef SC_USE_UV_TRANSFORM_sheenRoughnessTexture
#define SC_USE_UV_TRANSFORM_sheenRoughnessTexture 0
#elif SC_USE_UV_TRANSFORM_sheenRoughnessTexture==1
#undef SC_USE_UV_TRANSFORM_sheenRoughnessTexture
#define SC_USE_UV_TRANSFORM_sheenRoughnessTexture 1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_U_sheenRoughnessTexture
#define SC_SOFTWARE_WRAP_MODE_U_sheenRoughnessTexture -1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_V_sheenRoughnessTexture
#define SC_SOFTWARE_WRAP_MODE_V_sheenRoughnessTexture -1
#endif
#ifndef SC_USE_UV_MIN_MAX_sheenRoughnessTexture
#define SC_USE_UV_MIN_MAX_sheenRoughnessTexture 0
#elif SC_USE_UV_MIN_MAX_sheenRoughnessTexture==1
#undef SC_USE_UV_MIN_MAX_sheenRoughnessTexture
#define SC_USE_UV_MIN_MAX_sheenRoughnessTexture 1
#endif
#ifndef SC_USE_CLAMP_TO_BORDER_sheenRoughnessTexture
#define SC_USE_CLAMP_TO_BORDER_sheenRoughnessTexture 0
#elif SC_USE_CLAMP_TO_BORDER_sheenRoughnessTexture==1
#undef SC_USE_CLAMP_TO_BORDER_sheenRoughnessTexture
#define SC_USE_CLAMP_TO_BORDER_sheenRoughnessTexture 1
#endif
#ifndef Tweak_N37
#define Tweak_N37 0
#endif
#ifndef ENABLE_CLEARCOAT_TEX
#define ENABLE_CLEARCOAT_TEX 0
#elif ENABLE_CLEARCOAT_TEX==1
#undef ENABLE_CLEARCOAT_TEX
#define ENABLE_CLEARCOAT_TEX 1
#endif
#ifndef SC_USE_UV_TRANSFORM_clearcoatTexture
#define SC_USE_UV_TRANSFORM_clearcoatTexture 0
#elif SC_USE_UV_TRANSFORM_clearcoatTexture==1
#undef SC_USE_UV_TRANSFORM_clearcoatTexture
#define SC_USE_UV_TRANSFORM_clearcoatTexture 1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_U_clearcoatTexture
#define SC_SOFTWARE_WRAP_MODE_U_clearcoatTexture -1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_V_clearcoatTexture
#define SC_SOFTWARE_WRAP_MODE_V_clearcoatTexture -1
#endif
#ifndef SC_USE_UV_MIN_MAX_clearcoatTexture
#define SC_USE_UV_MIN_MAX_clearcoatTexture 0
#elif SC_USE_UV_MIN_MAX_clearcoatTexture==1
#undef SC_USE_UV_MIN_MAX_clearcoatTexture
#define SC_USE_UV_MIN_MAX_clearcoatTexture 1
#endif
#ifndef SC_USE_CLAMP_TO_BORDER_clearcoatTexture
#define SC_USE_CLAMP_TO_BORDER_clearcoatTexture 0
#elif SC_USE_CLAMP_TO_BORDER_clearcoatTexture==1
#undef SC_USE_CLAMP_TO_BORDER_clearcoatTexture
#define SC_USE_CLAMP_TO_BORDER_clearcoatTexture 1
#endif
#ifndef Tweak_N44
#define Tweak_N44 0
#endif
#ifndef ENABLE_CLEARCOAT_ROUGHNESS_TEX
#define ENABLE_CLEARCOAT_ROUGHNESS_TEX 0
#elif ENABLE_CLEARCOAT_ROUGHNESS_TEX==1
#undef ENABLE_CLEARCOAT_ROUGHNESS_TEX
#define ENABLE_CLEARCOAT_ROUGHNESS_TEX 1
#endif
#ifndef SC_USE_UV_TRANSFORM_clearcoatRoughnessTexture
#define SC_USE_UV_TRANSFORM_clearcoatRoughnessTexture 0
#elif SC_USE_UV_TRANSFORM_clearcoatRoughnessTexture==1
#undef SC_USE_UV_TRANSFORM_clearcoatRoughnessTexture
#define SC_USE_UV_TRANSFORM_clearcoatRoughnessTexture 1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_U_clearcoatRoughnessTexture
#define SC_SOFTWARE_WRAP_MODE_U_clearcoatRoughnessTexture -1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_V_clearcoatRoughnessTexture
#define SC_SOFTWARE_WRAP_MODE_V_clearcoatRoughnessTexture -1
#endif
#ifndef SC_USE_UV_MIN_MAX_clearcoatRoughnessTexture
#define SC_USE_UV_MIN_MAX_clearcoatRoughnessTexture 0
#elif SC_USE_UV_MIN_MAX_clearcoatRoughnessTexture==1
#undef SC_USE_UV_MIN_MAX_clearcoatRoughnessTexture
#define SC_USE_UV_MIN_MAX_clearcoatRoughnessTexture 1
#endif
#ifndef SC_USE_CLAMP_TO_BORDER_clearcoatRoughnessTexture
#define SC_USE_CLAMP_TO_BORDER_clearcoatRoughnessTexture 0
#elif SC_USE_CLAMP_TO_BORDER_clearcoatRoughnessTexture==1
#undef SC_USE_CLAMP_TO_BORDER_clearcoatRoughnessTexture
#define SC_USE_CLAMP_TO_BORDER_clearcoatRoughnessTexture 1
#endif
#ifndef Tweak_N60
#define Tweak_N60 0
#endif
#ifndef ENABLE_CLEARCOAT_NORMAL_TEX
#define ENABLE_CLEARCOAT_NORMAL_TEX 0
#elif ENABLE_CLEARCOAT_NORMAL_TEX==1
#undef ENABLE_CLEARCOAT_NORMAL_TEX
#define ENABLE_CLEARCOAT_NORMAL_TEX 1
#endif
#ifndef SC_USE_UV_TRANSFORM_clearcoatNormalTexture
#define SC_USE_UV_TRANSFORM_clearcoatNormalTexture 0
#elif SC_USE_UV_TRANSFORM_clearcoatNormalTexture==1
#undef SC_USE_UV_TRANSFORM_clearcoatNormalTexture
#define SC_USE_UV_TRANSFORM_clearcoatNormalTexture 1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_U_clearcoatNormalTexture
#define SC_SOFTWARE_WRAP_MODE_U_clearcoatNormalTexture -1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_V_clearcoatNormalTexture
#define SC_SOFTWARE_WRAP_MODE_V_clearcoatNormalTexture -1
#endif
#ifndef SC_USE_UV_MIN_MAX_clearcoatNormalTexture
#define SC_USE_UV_MIN_MAX_clearcoatNormalTexture 0
#elif SC_USE_UV_MIN_MAX_clearcoatNormalTexture==1
#undef SC_USE_UV_MIN_MAX_clearcoatNormalTexture
#define SC_USE_UV_MIN_MAX_clearcoatNormalTexture 1
#endif
#ifndef SC_USE_CLAMP_TO_BORDER_clearcoatNormalTexture
#define SC_USE_CLAMP_TO_BORDER_clearcoatNormalTexture 0
#elif SC_USE_CLAMP_TO_BORDER_clearcoatNormalTexture==1
#undef SC_USE_CLAMP_TO_BORDER_clearcoatNormalTexture
#define SC_USE_CLAMP_TO_BORDER_clearcoatNormalTexture 1
#endif
#ifndef Tweak_N47
#define Tweak_N47 0
#endif
#ifndef ENABLE_TEXTURE_TRANSFORM
#define ENABLE_TEXTURE_TRANSFORM 0
#elif ENABLE_TEXTURE_TRANSFORM==1
#undef ENABLE_TEXTURE_TRANSFORM
#define ENABLE_TEXTURE_TRANSFORM 1
#endif
#ifndef ENABLE_EMISSIVE_TEXTURE_TRANSFORM
#define ENABLE_EMISSIVE_TEXTURE_TRANSFORM 0
#elif ENABLE_EMISSIVE_TEXTURE_TRANSFORM==1
#undef ENABLE_EMISSIVE_TEXTURE_TRANSFORM
#define ENABLE_EMISSIVE_TEXTURE_TRANSFORM 1
#endif
#ifndef ENABLE_NORMAL_TEXTURE_TRANSFORM
#define ENABLE_NORMAL_TEXTURE_TRANSFORM 0
#elif ENABLE_NORMAL_TEXTURE_TRANSFORM==1
#undef ENABLE_NORMAL_TEXTURE_TRANSFORM
#define ENABLE_NORMAL_TEXTURE_TRANSFORM 1
#endif
#ifndef ENABLE_METALLIC_ROUGHNESS_TEXTURE_TRANSFORM
#define ENABLE_METALLIC_ROUGHNESS_TEXTURE_TRANSFORM 0
#elif ENABLE_METALLIC_ROUGHNESS_TEXTURE_TRANSFORM==1
#undef ENABLE_METALLIC_ROUGHNESS_TEXTURE_TRANSFORM
#define ENABLE_METALLIC_ROUGHNESS_TEXTURE_TRANSFORM 1
#endif
#ifndef ENABLE_TRANSMISSION_TEXTURE_TRANSFORM
#define ENABLE_TRANSMISSION_TEXTURE_TRANSFORM 0
#elif ENABLE_TRANSMISSION_TEXTURE_TRANSFORM==1
#undef ENABLE_TRANSMISSION_TEXTURE_TRANSFORM
#define ENABLE_TRANSMISSION_TEXTURE_TRANSFORM 1
#endif
#ifndef ENABLE_SHEEN_COLOR_TEXTURE_TRANSFORM
#define ENABLE_SHEEN_COLOR_TEXTURE_TRANSFORM 0
#elif ENABLE_SHEEN_COLOR_TEXTURE_TRANSFORM==1
#undef ENABLE_SHEEN_COLOR_TEXTURE_TRANSFORM
#define ENABLE_SHEEN_COLOR_TEXTURE_TRANSFORM 1
#endif
#ifndef ENABLE_SHEEN_ROUGHNESS_TEXTURE_TRANSFORM
#define ENABLE_SHEEN_ROUGHNESS_TEXTURE_TRANSFORM 0
#elif ENABLE_SHEEN_ROUGHNESS_TEXTURE_TRANSFORM==1
#undef ENABLE_SHEEN_ROUGHNESS_TEXTURE_TRANSFORM
#define ENABLE_SHEEN_ROUGHNESS_TEXTURE_TRANSFORM 1
#endif
#ifndef ENABLE_CLEARCOAT_TEXTURE_TRANSFORM
#define ENABLE_CLEARCOAT_TEXTURE_TRANSFORM 0
#elif ENABLE_CLEARCOAT_TEXTURE_TRANSFORM==1
#undef ENABLE_CLEARCOAT_TEXTURE_TRANSFORM
#define ENABLE_CLEARCOAT_TEXTURE_TRANSFORM 1
#endif
#ifndef ENABLE_CLEARCOAT_NORMAL_TEXTURE_TRANSFORM
#define ENABLE_CLEARCOAT_NORMAL_TEXTURE_TRANSFORM 0
#elif ENABLE_CLEARCOAT_NORMAL_TEXTURE_TRANSFORM==1
#undef ENABLE_CLEARCOAT_NORMAL_TEXTURE_TRANSFORM
#define ENABLE_CLEARCOAT_NORMAL_TEXTURE_TRANSFORM 1
#endif
#ifndef ENABLE_CLEARCOAT_ROUGHNESS_TEXTURE_TRANSFORM
#define ENABLE_CLEARCOAT_ROUGHNESS_TEXTURE_TRANSFORM 0
#elif ENABLE_CLEARCOAT_ROUGHNESS_TEXTURE_TRANSFORM==1
#undef ENABLE_CLEARCOAT_ROUGHNESS_TEXTURE_TRANSFORM
#define ENABLE_CLEARCOAT_ROUGHNESS_TEXTURE_TRANSFORM 1
#endif
#ifndef ENABLE_VERTEX_COLOR_BASE
#define ENABLE_VERTEX_COLOR_BASE 0
#elif ENABLE_VERTEX_COLOR_BASE==1
#undef ENABLE_VERTEX_COLOR_BASE
#define ENABLE_VERTEX_COLOR_BASE 1
#endif
#ifndef ENABLE_BASE_TEX
#define ENABLE_BASE_TEX 0
#elif ENABLE_BASE_TEX==1
#undef ENABLE_BASE_TEX
#define ENABLE_BASE_TEX 1
#endif
#ifndef SC_USE_UV_TRANSFORM_baseColorTexture
#define SC_USE_UV_TRANSFORM_baseColorTexture 0
#elif SC_USE_UV_TRANSFORM_baseColorTexture==1
#undef SC_USE_UV_TRANSFORM_baseColorTexture
#define SC_USE_UV_TRANSFORM_baseColorTexture 1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_U_baseColorTexture
#define SC_SOFTWARE_WRAP_MODE_U_baseColorTexture -1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_V_baseColorTexture
#define SC_SOFTWARE_WRAP_MODE_V_baseColorTexture -1
#endif
#ifndef SC_USE_UV_MIN_MAX_baseColorTexture
#define SC_USE_UV_MIN_MAX_baseColorTexture 0
#elif SC_USE_UV_MIN_MAX_baseColorTexture==1
#undef SC_USE_UV_MIN_MAX_baseColorTexture
#define SC_USE_UV_MIN_MAX_baseColorTexture 1
#endif
#ifndef SC_USE_CLAMP_TO_BORDER_baseColorTexture
#define SC_USE_CLAMP_TO_BORDER_baseColorTexture 0
#elif SC_USE_CLAMP_TO_BORDER_baseColorTexture==1
#undef SC_USE_CLAMP_TO_BORDER_baseColorTexture
#define SC_USE_CLAMP_TO_BORDER_baseColorTexture 1
#endif
#ifndef NODE_7_DROPLIST_ITEM
#define NODE_7_DROPLIST_ITEM 0
#endif
#ifndef ENABLE_BASE_TEXTURE_TRANSFORM
#define ENABLE_BASE_TEXTURE_TRANSFORM 0
#elif ENABLE_BASE_TEXTURE_TRANSFORM==1
#undef ENABLE_BASE_TEXTURE_TRANSFORM
#define ENABLE_BASE_TEXTURE_TRANSFORM 1
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
uniform mat3 emissiveTextureTransform;
uniform vec4 emissiveTextureUvMinMax;
uniform vec4 emissiveTextureBorderColor;
uniform mat3 normalTextureTransform;
uniform vec4 normalTextureUvMinMax;
uniform vec4 normalTextureBorderColor;
uniform mat3 metallicRoughnessTextureTransform;
uniform vec4 metallicRoughnessTextureUvMinMax;
uniform vec4 metallicRoughnessTextureBorderColor;
uniform mat3 transmissionTextureTransform;
uniform vec4 transmissionTextureUvMinMax;
uniform vec4 transmissionTextureBorderColor;
uniform mat3 screenTextureTransform;
uniform vec4 screenTextureUvMinMax;
uniform vec4 screenTextureBorderColor;
uniform mat3 sheenColorTextureTransform;
uniform vec4 sheenColorTextureUvMinMax;
uniform vec4 sheenColorTextureBorderColor;
uniform mat3 sheenRoughnessTextureTransform;
uniform vec4 sheenRoughnessTextureUvMinMax;
uniform vec4 sheenRoughnessTextureBorderColor;
uniform mat3 clearcoatTextureTransform;
uniform vec4 clearcoatTextureUvMinMax;
uniform vec4 clearcoatTextureBorderColor;
uniform mat3 clearcoatRoughnessTextureTransform;
uniform vec4 clearcoatRoughnessTextureUvMinMax;
uniform vec4 clearcoatRoughnessTextureBorderColor;
uniform mat3 clearcoatNormalTextureTransform;
uniform vec4 clearcoatNormalTextureUvMinMax;
uniform vec4 clearcoatNormalTextureBorderColor;
uniform vec3 emissiveFactor;
uniform float normalTextureScale;
uniform float metallicFactor;
uniform float roughnessFactor;
uniform float occlusionTextureStrength;
uniform float transmissionFactor;
uniform vec3 sheenColorFactor;
uniform float sheenRoughnessFactor;
uniform float clearcoatFactor;
uniform float clearcoatRoughnessFactor;
uniform mat3 baseColorTextureTransform;
uniform vec4 baseColorTextureUvMinMax;
uniform vec4 baseColorTextureBorderColor;
uniform vec4 baseColorFactor;
uniform vec2 baseColorTexture_offset;
uniform vec2 baseColorTexture_scale;
uniform float baseColorTexture_rotation;
uniform vec2 emissiveTexture_offset;
uniform vec2 emissiveTexture_scale;
uniform float emissiveTexture_rotation;
uniform vec2 normalTexture_offset;
uniform vec2 normalTexture_scale;
uniform float normalTexture_rotation;
uniform vec2 metallicRoughnessTexture_offset;
uniform vec2 metallicRoughnessTexture_scale;
uniform float metallicRoughnessTexture_rotation;
uniform vec2 transmissionTexture_offset;
uniform vec2 transmissionTexture_scale;
uniform float transmissionTexture_rotation;
uniform vec2 sheenColorTexture_offset;
uniform vec2 sheenColorTexture_scale;
uniform float sheenColorTexture_rotation;
uniform vec2 sheenRoughnessTexture_offset;
uniform vec2 sheenRoughnessTexture_scale;
uniform float sheenRoughnessTexture_rotation;
uniform vec2 clearcoatTexture_offset;
uniform vec2 clearcoatTexture_scale;
uniform float clearcoatTexture_rotation;
uniform vec2 clearcoatNormalTexture_offset;
uniform vec2 clearcoatNormalTexture_scale;
uniform float clearcoatNormalTexture_rotation;
uniform vec2 clearcoatRoughnessTexture_offset;
uniform vec2 clearcoatRoughnessTexture_scale;
uniform float clearcoatRoughnessTexture_rotation;
uniform vec3 Port_SpecularAO_N036;
uniform vec3 Port_Albedo_N405;
uniform float Port_Opacity_N405;
uniform vec3 Port_Emissive_N405;
uniform float Port_Metallic_N405;
uniform vec3 Port_SpecularAO_N405;
uniform vec4 sc_Time;
uniform sc_Camera_t sc_Camera;
uniform int PreviewEnabled;
uniform usampler2D z_hitIdAndBarycentric;
uniform sampler2D z_rayDirections;
uniform sampler2D baseColorTexture;
uniform sampler2DArray baseColorTextureArrSC;
uniform sampler2D emissiveTexture;
uniform sampler2DArray emissiveTextureArrSC;
uniform sampler2D normalTexture;
uniform sampler2DArray normalTextureArrSC;
uniform sampler2D metallicRoughnessTexture;
uniform sampler2DArray metallicRoughnessTextureArrSC;
uniform sampler2D screenTexture;
uniform sampler2DArray screenTextureArrSC;
uniform sampler2D transmissionTexture;
uniform sampler2DArray transmissionTextureArrSC;
uniform sampler2D sheenColorTexture;
uniform sampler2DArray sheenColorTextureArrSC;
uniform sampler2D sheenRoughnessTexture;
uniform sampler2DArray sheenRoughnessTextureArrSC;
uniform sampler2D sc_EnvmapSpecular;
uniform sampler2DArray sc_EnvmapSpecularArrSC;
uniform sampler2D clearcoatTexture;
uniform sampler2DArray clearcoatTextureArrSC;
uniform sampler2D clearcoatRoughnessTexture;
uniform sampler2DArray clearcoatRoughnessTextureArrSC;
uniform sampler2D clearcoatNormalTexture;
uniform sampler2DArray clearcoatNormalTextureArrSC;
uniform sampler2D sc_SSAOTexture;
uniform sampler2D sc_ShadowTexture;
uniform sampler2D sc_RayTracedShadowTexture;
uniform sampler2DArray sc_RayTracedShadowTextureArrSC;
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
void Node40_Bool_Parameter(out float Output,ssGlobals Globals)
{
#if (ENABLE_VERTEX_COLOR_BASE)
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
void Node121_Bool_Parameter(out float Output,ssGlobals Globals)
{
#if (ENABLE_BASE_TEX)
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
void Node48_Bool_Parameter(out float Output,ssGlobals Globals)
{
#if (ENABLE_TEXTURE_TRANSFORM)
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
void Node88_Bool_Parameter(out float Output,ssGlobals Globals)
{
#if (ENABLE_BASE_TEXTURE_TRANSFORM)
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
vec2 N35_getUV(int pickUV)
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
return l9_2;
}
vec2 N35_uvTransform(vec2 uvIn,vec2 offset,vec2 scale,float rotation)
{
return (((mat3(vec3(1.0,0.0,0.0),vec3(0.0,1.0,0.0),vec3(offset.x,offset.y,1.0))*mat3(vec3(cos(rotation),sin(rotation),0.0),vec3(-sin(rotation),cos(rotation),0.0),vec3(0.0,0.0,1.0)))*mat3(vec3(scale.x,0.0,0.0),vec3(0.0,scale.y,0.0),vec3(0.0,0.0,1.0)))*vec3(uvIn,1.0)).xy;
}
int baseColorTextureGetStereoViewIndex()
{
int l9_0;
#if (baseColorTextureHasSwappedViews)
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
vec4 N35_BaseTexture_sample(vec2 coords)
{
vec4 l9_0;
#if (baseColorTextureLayout==2)
{
bool l9_1=(int(SC_USE_CLAMP_TO_BORDER_baseColorTexture)!=0)&&(!(int(SC_USE_UV_MIN_MAX_baseColorTexture)!=0));
float l9_2=coords.x;
sc_SoftwareWrapEarly(l9_2,ivec2(SC_SOFTWARE_WRAP_MODE_U_baseColorTexture,SC_SOFTWARE_WRAP_MODE_V_baseColorTexture).x);
float l9_3=l9_2;
float l9_4=coords.y;
sc_SoftwareWrapEarly(l9_4,ivec2(SC_SOFTWARE_WRAP_MODE_U_baseColorTexture,SC_SOFTWARE_WRAP_MODE_V_baseColorTexture).y);
float l9_5=l9_4;
vec2 l9_6;
float l9_7;
#if (SC_USE_UV_MIN_MAX_baseColorTexture)
{
bool l9_8;
#if (SC_USE_CLAMP_TO_BORDER_baseColorTexture)
{
l9_8=ivec2(SC_SOFTWARE_WRAP_MODE_U_baseColorTexture,SC_SOFTWARE_WRAP_MODE_V_baseColorTexture).x==3;
}
#else
{
l9_8=(int(SC_USE_CLAMP_TO_BORDER_baseColorTexture)!=0);
}
#endif
float l9_9=l9_3;
float l9_10=1.0;
sc_ClampUV(l9_9,baseColorTextureUvMinMax.x,baseColorTextureUvMinMax.z,l9_8,l9_10);
float l9_11=l9_9;
float l9_12=l9_10;
bool l9_13;
#if (SC_USE_CLAMP_TO_BORDER_baseColorTexture)
{
l9_13=ivec2(SC_SOFTWARE_WRAP_MODE_U_baseColorTexture,SC_SOFTWARE_WRAP_MODE_V_baseColorTexture).y==3;
}
#else
{
l9_13=(int(SC_USE_CLAMP_TO_BORDER_baseColorTexture)!=0);
}
#endif
float l9_14=l9_5;
float l9_15=l9_12;
sc_ClampUV(l9_14,baseColorTextureUvMinMax.y,baseColorTextureUvMinMax.w,l9_13,l9_15);
l9_7=l9_15;
l9_6=vec2(l9_11,l9_14);
}
#else
{
l9_7=1.0;
l9_6=vec2(l9_3,l9_5);
}
#endif
vec2 l9_16=sc_TransformUV(l9_6,(int(SC_USE_UV_TRANSFORM_baseColorTexture)!=0),baseColorTextureTransform);
float l9_17=l9_16.x;
float l9_18=l9_7;
sc_SoftwareWrapLate(l9_17,ivec2(SC_SOFTWARE_WRAP_MODE_U_baseColorTexture,SC_SOFTWARE_WRAP_MODE_V_baseColorTexture).x,l9_1,l9_18);
float l9_19=l9_16.y;
float l9_20=l9_18;
sc_SoftwareWrapLate(l9_19,ivec2(SC_SOFTWARE_WRAP_MODE_U_baseColorTexture,SC_SOFTWARE_WRAP_MODE_V_baseColorTexture).y,l9_1,l9_20);
float l9_21=l9_20;
vec3 l9_22=sc_SamplingCoordsViewToGlobal(vec2(l9_17,l9_19),baseColorTextureLayout,baseColorTextureGetStereoViewIndex());
vec4 l9_23=texture(baseColorTextureArrSC,l9_22,0.0);
vec4 l9_24;
#if (SC_USE_CLAMP_TO_BORDER_baseColorTexture)
{
l9_24=mix(baseColorTextureBorderColor,l9_23,vec4(l9_21));
}
#else
{
l9_24=l9_23;
}
#endif
l9_0=l9_24;
}
#else
{
bool l9_25=(int(SC_USE_CLAMP_TO_BORDER_baseColorTexture)!=0)&&(!(int(SC_USE_UV_MIN_MAX_baseColorTexture)!=0));
float l9_26=coords.x;
sc_SoftwareWrapEarly(l9_26,ivec2(SC_SOFTWARE_WRAP_MODE_U_baseColorTexture,SC_SOFTWARE_WRAP_MODE_V_baseColorTexture).x);
float l9_27=l9_26;
float l9_28=coords.y;
sc_SoftwareWrapEarly(l9_28,ivec2(SC_SOFTWARE_WRAP_MODE_U_baseColorTexture,SC_SOFTWARE_WRAP_MODE_V_baseColorTexture).y);
float l9_29=l9_28;
vec2 l9_30;
float l9_31;
#if (SC_USE_UV_MIN_MAX_baseColorTexture)
{
bool l9_32;
#if (SC_USE_CLAMP_TO_BORDER_baseColorTexture)
{
l9_32=ivec2(SC_SOFTWARE_WRAP_MODE_U_baseColorTexture,SC_SOFTWARE_WRAP_MODE_V_baseColorTexture).x==3;
}
#else
{
l9_32=(int(SC_USE_CLAMP_TO_BORDER_baseColorTexture)!=0);
}
#endif
float l9_33=l9_27;
float l9_34=1.0;
sc_ClampUV(l9_33,baseColorTextureUvMinMax.x,baseColorTextureUvMinMax.z,l9_32,l9_34);
float l9_35=l9_33;
float l9_36=l9_34;
bool l9_37;
#if (SC_USE_CLAMP_TO_BORDER_baseColorTexture)
{
l9_37=ivec2(SC_SOFTWARE_WRAP_MODE_U_baseColorTexture,SC_SOFTWARE_WRAP_MODE_V_baseColorTexture).y==3;
}
#else
{
l9_37=(int(SC_USE_CLAMP_TO_BORDER_baseColorTexture)!=0);
}
#endif
float l9_38=l9_29;
float l9_39=l9_36;
sc_ClampUV(l9_38,baseColorTextureUvMinMax.y,baseColorTextureUvMinMax.w,l9_37,l9_39);
l9_31=l9_39;
l9_30=vec2(l9_35,l9_38);
}
#else
{
l9_31=1.0;
l9_30=vec2(l9_27,l9_29);
}
#endif
vec2 l9_40=sc_TransformUV(l9_30,(int(SC_USE_UV_TRANSFORM_baseColorTexture)!=0),baseColorTextureTransform);
float l9_41=l9_40.x;
float l9_42=l9_31;
sc_SoftwareWrapLate(l9_41,ivec2(SC_SOFTWARE_WRAP_MODE_U_baseColorTexture,SC_SOFTWARE_WRAP_MODE_V_baseColorTexture).x,l9_25,l9_42);
float l9_43=l9_40.y;
float l9_44=l9_42;
sc_SoftwareWrapLate(l9_43,ivec2(SC_SOFTWARE_WRAP_MODE_U_baseColorTexture,SC_SOFTWARE_WRAP_MODE_V_baseColorTexture).y,l9_25,l9_44);
float l9_45=l9_44;
vec3 l9_46=sc_SamplingCoordsViewToGlobal(vec2(l9_41,l9_43),baseColorTextureLayout,baseColorTextureGetStereoViewIndex());
vec4 l9_47=texture(baseColorTexture,l9_46.xy,0.0);
vec4 l9_48;
#if (SC_USE_CLAMP_TO_BORDER_baseColorTexture)
{
l9_48=mix(baseColorTextureBorderColor,l9_47,vec4(l9_45));
}
#else
{
l9_48=l9_47;
}
#endif
l9_0=l9_48;
}
#endif
return l9_0;
}
vec4 ssSRGB_to_Linear(vec4 value)
{
vec4 l9_0;
#if (SC_DEVICE_CLASS>=2)
{
l9_0=vec4(pow(value.x,2.2),pow(value.y,2.2),pow(value.z,2.2),pow(value.w,2.2));
}
#else
{
l9_0=value*value;
}
#endif
return l9_0;
}
vec4 ssLinear_to_SRGB(vec4 value)
{
vec4 l9_0;
#if (SC_DEVICE_CLASS>=2)
{
l9_0=vec4(pow(value.x,0.45454544),pow(value.y,0.45454544),pow(value.z,0.45454544),pow(value.w,0.45454544));
}
#else
{
l9_0=sqrt(value);
}
#endif
return l9_0;
}
vec2 N3_getUV(int pickUV)
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
return l9_2;
}
vec2 N3_uvTransform(vec2 uvIn,vec2 offset,vec2 scale,float rotationAngle)
{
float l9_0=radians(rotationAngle);
float l9_1=cos(l9_0);
float l9_2=sin(l9_0);
return (((mat3(vec3(1.0,0.0,0.0),vec3(0.0,1.0,0.0),vec3(offset.x,offset.y,1.0))*mat3(vec3(l9_1,l9_2,0.0),vec3(-l9_2,l9_1,0.0),vec3(0.0,0.0,1.0)))*mat3(vec3(scale.x,0.0,0.0),vec3(0.0,scale.y,0.0),vec3(0.0,0.0,1.0)))*vec3(uvIn,1.0)).xy;
}
int emissiveTextureGetStereoViewIndex()
{
int l9_0;
#if (emissiveTextureHasSwappedViews)
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
int normalTextureGetStereoViewIndex()
{
int l9_0;
#if (normalTextureHasSwappedViews)
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
int metallicRoughnessTextureGetStereoViewIndex()
{
int l9_0;
#if (metallicRoughnessTextureHasSwappedViews)
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
int screenTextureGetStereoViewIndex()
{
int l9_0;
#if (screenTextureHasSwappedViews)
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
int transmissionTextureGetStereoViewIndex()
{
int l9_0;
#if (transmissionTextureHasSwappedViews)
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
vec3 ssLinear_to_SRGB(vec3 value)
{
vec3 l9_0;
#if (SC_DEVICE_CLASS>=2)
{
l9_0=vec3(pow(value.x,0.45454544),pow(value.y,0.45454544),pow(value.z,0.45454544));
}
#else
{
l9_0=sqrt(value);
}
#endif
return l9_0;
}
int sheenColorTextureGetStereoViewIndex()
{
int l9_0;
#if (sheenColorTextureHasSwappedViews)
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
int sheenRoughnessTextureGetStereoViewIndex()
{
int l9_0;
#if (sheenRoughnessTextureHasSwappedViews)
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
float ssSRGB_to_Linear(float value)
{
float l9_0;
#if (SC_DEVICE_CLASS>=2)
{
l9_0=pow(value,2.2);
}
#else
{
l9_0=value*value;
}
#endif
return l9_0;
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
vec3 sampleSpecularEnvTextureLod(vec3 R,float lod)
{
vec2 l9_0=calcPanoramicTexCoordsFromDir(R,sc_EnvmapRotation.y);
vec4 l9_1;
#if (SC_DEVICE_CLASS>=2)
{
float l9_2=floor(lod);
float l9_3=ceil(lod);
l9_1=mix(sc_EnvmapSpecularSampleViewIndexLevel(calcSeamlessPanoramicUvsForSampling(l9_0,sc_EnvmapSpecularSize.xy,l9_2),sc_EnvmapSpecularGetStereoViewIndex(),l9_2),sc_EnvmapSpecularSampleViewIndexLevel(calcSeamlessPanoramicUvsForSampling(l9_0,sc_EnvmapSpecularSize.xy,l9_3),sc_EnvmapSpecularGetStereoViewIndex(),l9_3),vec4(lod-l9_2));
}
#else
{
l9_1=sc_EnvmapSpecularSampleViewIndexLevel(l9_0,sc_EnvmapSpecularGetStereoViewIndex(),lod);
}
#endif
return l9_1.xyz*(1.0/l9_1.w);
}
float ssPow(float A,float B)
{
float l9_0;
if (A<=0.0)
{
l9_0=0.0;
}
else
{
l9_0=pow(A,B);
}
return l9_0;
}
float N3_charlieD(float roughness,float NdotH)
{
float l9_0=1.0/roughness;
return ((2.0+l9_0)*ssPow(1.0-(NdotH*NdotH),l9_0*0.5))/(2.0*3.1415927);
}
int clearcoatTextureGetStereoViewIndex()
{
int l9_0;
#if (clearcoatTextureHasSwappedViews)
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
int clearcoatRoughnessTextureGetStereoViewIndex()
{
int l9_0;
#if (clearcoatRoughnessTextureHasSwappedViews)
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
int clearcoatNormalTextureGetStereoViewIndex()
{
int l9_0;
#if (clearcoatNormalTextureHasSwappedViews)
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
void ngsAlphaTest(float opacity)
{
#if (sc_BlendMode_AlphaTest)
{
if (opacity<alphaTestThreshold)
{
discard;
}
}
#endif
#if (ENABLE_STIPPLE_PATTERN_TEST)
{
if (opacity<((mod(dot(floor(mod(gl_FragCoord.xy,vec2(4.0))),vec2(4.0,1.0))*9.0,16.0)+1.0)/17.0))
{
discard;
}
}
#endif
}
SurfaceProperties defaultSurfaceProperties()
{
return SurfaceProperties(vec3(0.0),1.0,vec3(0.0),vec3(0.0),vec3(0.0),0.0,0.0,vec3(0.0),vec3(1.0),vec3(1.0),vec3(1.0),vec3(0.0));
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
void deriveAlbedoAndSpecColorFromSurfaceProperties(SurfaceProperties surfaceProperties,out vec3 albedo,out vec3 specColor)
{
specColor=mix(vec3(0.039999999),surfaceProperties.albedo*surfaceProperties.metallic,vec3(surfaceProperties.metallic));
albedo=mix(surfaceProperties.albedo*(1.0-surfaceProperties.metallic),vec3(0.0),vec3(surfaceProperties.metallic));
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
vec3 evaluateShadow()
{
vec3 l9_0;
#if (sc_ProjectiveShadowsReceiver)
{
vec2 l9_1=abs(varShadowTex-vec2(0.5));
vec4 l9_2=texture(sc_ShadowTexture,varShadowTex)*step(max(l9_1.x,l9_1.y),0.5);
l9_0=mix(vec3(1.0),mix(sc_ShadowColor.xyz,sc_ShadowColor.xyz*l9_2.xyz,vec3(sc_ShadowColor.w)),vec3(l9_2.w*sc_ShadowDensity));
}
#else
{
l9_0=vec3(1.0);
}
#endif
return l9_0;
}
int sc_RayTracedShadowTextureGetStereoViewIndex()
{
int l9_0;
#if (sc_RayTracedShadowTextureHasSwappedViews)
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
vec4 sc_RayTracedShadowTextureSampleViewIndexBias(vec2 uv,int viewIndex,float bias)
{
vec4 l9_0;
#if (sc_RayTracedShadowTextureLayout==2)
{
l9_0=texture(sc_RayTracedShadowTextureArrSC,sc_SamplingCoordsViewToGlobal(uv,sc_RayTracedShadowTextureLayout,viewIndex),bias);
}
#else
{
l9_0=texture(sc_RayTracedShadowTexture,sc_SamplingCoordsViewToGlobal(uv,sc_RayTracedShadowTextureLayout,viewIndex).xy,bias);
}
#endif
return l9_0;
}
vec3 evaluateSh(vec3 L00,vec3 L1_1,vec3 L10,vec3 L11,vec3 L2_2,vec3 L2_1,vec3 L20,vec3 L21,vec3 L22,vec3 n)
{
return ((((((L22*0.42904299)*((n.x*n.x)-(n.y*n.y)))+((L20*0.74312502)*(n.z*n.z)))+(L00*0.88622701))-(L20*0.24770799))+((((L2_2*(n.x*n.y))+(L21*(n.x*n.z)))+(L2_1*(n.y*n.z)))*0.85808599))+((((L11*n.x)+(L1_1*n.y))+(L10*n.z))*1.0233279);
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
vec4 sc_EnvmapDiffuseSampleViewIndexBias(vec2 uv,int viewIndex,float bias)
{
vec4 l9_0;
#if (sc_EnvmapDiffuseLayout==2)
{
l9_0=texture(sc_EnvmapDiffuseArrSC,sc_SamplingCoordsViewToGlobal(uv,sc_EnvmapDiffuseLayout,viewIndex),bias);
}
#else
{
l9_0=texture(sc_EnvmapDiffuse,sc_SamplingCoordsViewToGlobal(uv,sc_EnvmapDiffuseLayout,viewIndex).xy,bias);
}
#endif
return l9_0;
}
vec4 sc_EnvmapDiffuseSampleViewIndexLevel(vec2 uv,int viewIndex,float level_)
{
vec4 l9_0;
#if (sc_EnvmapDiffuseLayout==2)
{
l9_0=textureLod(sc_EnvmapDiffuseArrSC,sc_SamplingCoordsViewToGlobal(uv,sc_EnvmapDiffuseLayout,viewIndex),level_);
}
#else
{
l9_0=textureLod(sc_EnvmapDiffuse,sc_SamplingCoordsViewToGlobal(uv,sc_EnvmapDiffuseLayout,viewIndex).xy,level_);
}
#endif
return l9_0;
}
vec3 sampleDiffuseEnvmap(vec3 N)
{
vec2 l9_0=calcPanoramicTexCoordsFromDir(N,sc_EnvmapRotation.y);
vec4 l9_1;
#if (sc_EnvLightMode==sc_AmbientLightMode_FromCamera)
{
vec2 l9_2;
#if (SC_DEVICE_CLASS>=2)
{
l9_2=calcSeamlessPanoramicUvsForSampling(l9_0,sc_EnvmapSpecularSize.xy,5.0);
}
#else
{
l9_2=l9_0;
}
#endif
l9_1=sc_EnvmapSpecularSampleViewIndexBias(l9_2,sc_EnvmapSpecularGetStereoViewIndex(),13.0);
}
#else
{
vec4 l9_3;
#if ((sc_MaxTextureImageUnits>8)&&sc_HasDiffuseEnvmap)
{
vec2 l9_4=calcSeamlessPanoramicUvsForSampling(l9_0,sc_EnvmapDiffuseSize.xy,0.0);
vec4 l9_5;
if (isProxyMode)
{
l9_5=sc_EnvmapDiffuseSampleViewIndexLevel(l9_4,sc_EnvmapDiffuseGetStereoViewIndex(),0.0);
}
else
{
l9_5=sc_EnvmapDiffuseSampleViewIndexBias(l9_4,sc_EnvmapDiffuseGetStereoViewIndex(),-13.0);
}
l9_3=l9_5;
}
#else
{
l9_3=sc_EnvmapSpecularSampleViewIndexBias(l9_0,sc_EnvmapSpecularGetStereoViewIndex(),13.0);
}
#endif
l9_1=l9_3;
}
#endif
return (l9_1.xyz*(1.0/l9_1.w))*sc_EnvmapExposure;
}
int sc_RayTracedDiffIndTextureGetStereoViewIndex()
{
int l9_0;
#if (sc_RayTracedDiffIndTextureHasSwappedViews)
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
vec4 sc_RayTracedDiffIndTextureSampleViewIndexBias(vec2 uv,int viewIndex,float bias)
{
vec4 l9_0;
#if (sc_RayTracedDiffIndTextureLayout==2)
{
l9_0=texture(sc_RayTracedDiffIndTextureArrSC,sc_SamplingCoordsViewToGlobal(uv,sc_RayTracedDiffIndTextureLayout,viewIndex),bias);
}
#else
{
l9_0=texture(sc_RayTracedDiffIndTexture,sc_SamplingCoordsViewToGlobal(uv,sc_RayTracedDiffIndTextureLayout,viewIndex).xy,bias);
}
#endif
return l9_0;
}
vec4 sampleRayTracedIndirectDiffuse()
{
if (receivesRayTracedDiffuseIndirect)
{
return sc_RayTracedDiffIndTextureSampleViewIndexBias(gl_FragCoord.xy*sc_CurrentRenderTargetDims.zw,sc_RayTracedDiffIndTextureGetStereoViewIndex(),0.0);
}
return vec4(0.0);
}
vec3 DiffuseTermSG(sc_SphericalGaussianLight_t lightingLobe,vec3 normal)
{
vec3 l9_0=lightingLobe.axis;
vec3 l9_1=normal;
float l9_2=dot(l9_0,l9_1);
float l9_3=lightingLobe.sharpness;
float l9_4=exp(-l9_3);
float l9_5=l9_4*l9_4;
float l9_6=1.0/l9_3;
float l9_7=(1.0+(2.0*l9_5))-l9_6;
float l9_8=sqrt(1.0-l9_7);
float l9_9=0.36000001*l9_2;
float l9_10=(1.0/(4.0*0.36000001))*l9_8;
float l9_11=l9_9+l9_10;
float l9_12;
if (step(abs(l9_9),l9_10)>0.5)
{
l9_12=(l9_11*l9_11)/l9_8;
}
else
{
l9_12=clamp(l9_2,0.0,1.0);
}
return (((lightingLobe.color/vec3(lightingLobe.sharpness))*6.2831855)*((l9_7*l9_12)+(((l9_4-l9_5)*l9_6)-l9_5)))/vec3(3.1415927);
}
vec3 calculateLightEstimationDiffuse(vec3 N)
{
vec3 l9_0;
l9_0=sc_LightEstimationData.ambientLight;
sc_SphericalGaussianLight_t param;
vec3 param_1;
int l9_1=0;
for (int snapLoopIndex=0; snapLoopIndex==0; snapLoopIndex+=0)
{
if (l9_1<sc_LightEstimationSGCount)
{
l9_0+=DiffuseTermSG(sc_LightEstimationData.sg[l9_1],N);
l9_1++;
continue;
}
else
{
break;
}
}
return l9_0;
}
vec3 calculateDiffuseIrradiance(vec3 N)
{
vec3 l9_0;
#if ((sc_EnvLightMode==sc_AmbientLightMode_EnvironmentMap)||(sc_EnvLightMode==sc_AmbientLightMode_FromCamera))
{
l9_0=sampleDiffuseEnvmap(N);
}
#else
{
vec3 l9_1;
#if (sc_EnvLightMode==sc_AmbientLightMode_SphericalHarmonics)
{
l9_1=evaluateSh(sc_Sh[0],sc_Sh[1],sc_Sh[2],sc_Sh[3],sc_Sh[4],sc_Sh[5],sc_Sh[6],sc_Sh[7],sc_Sh[8],-N)*sc_ShIntensity;
}
#else
{
l9_1=vec3(0.0);
}
#endif
l9_0=l9_1;
}
#endif
vec3 l9_2;
if (receivesRayTracedDiffuseIndirect)
{
vec4 l9_3=sampleRayTracedIndirectDiffuse();
l9_2=mix(l9_0,l9_3.xyz,vec3(l9_3.w));
}
else
{
l9_2=l9_0;
}
vec3 l9_4;
#if (sc_AmbientLightsCount>0)
{
vec3 l9_5;
#if (sc_AmbientLightMode0==sc_AmbientLightMode_Constant)
{
l9_5=l9_2+(sc_AmbientLights[0].color*sc_AmbientLights[0].intensity);
}
#else
{
vec3 l9_6=l9_2;
l9_6.x=l9_2.x+(1e-06*sc_AmbientLights[0].color.x);
l9_5=l9_6;
}
#endif
l9_4=l9_5;
}
#else
{
l9_4=l9_2;
}
#endif
vec3 l9_7;
#if (sc_AmbientLightsCount>1)
{
vec3 l9_8;
#if (sc_AmbientLightMode1==sc_AmbientLightMode_Constant)
{
l9_8=l9_4+(sc_AmbientLights[1].color*sc_AmbientLights[1].intensity);
}
#else
{
vec3 l9_9=l9_4;
l9_9.x=l9_4.x+(1e-06*sc_AmbientLights[1].color.x);
l9_8=l9_9;
}
#endif
l9_7=l9_8;
}
#else
{
l9_7=l9_4;
}
#endif
vec3 l9_10;
#if (sc_AmbientLightsCount>2)
{
vec3 l9_11;
#if (sc_AmbientLightMode2==sc_AmbientLightMode_Constant)
{
l9_11=l9_7+(sc_AmbientLights[2].color*sc_AmbientLights[2].intensity);
}
#else
{
vec3 l9_12=l9_7;
l9_12.x=l9_7.x+(1e-06*sc_AmbientLights[2].color.x);
l9_11=l9_12;
}
#endif
l9_10=l9_11;
}
#else
{
l9_10=l9_7;
}
#endif
vec3 l9_13;
#if (sc_LightEstimation)
{
l9_13=l9_10+calculateLightEstimationDiffuse(N);
}
#else
{
l9_13=l9_10;
}
#endif
return l9_13;
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
int sc_RayTracedReflectionTextureGetStereoViewIndex()
{
int l9_0;
#if (sc_RayTracedReflectionTextureHasSwappedViews)
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
vec4 sc_RayTracedReflectionTextureSampleViewIndexBias(vec2 uv,int viewIndex,float bias)
{
vec4 l9_0;
#if (sc_RayTracedReflectionTextureLayout==2)
{
l9_0=texture(sc_RayTracedReflectionTextureArrSC,sc_SamplingCoordsViewToGlobal(uv,sc_RayTracedReflectionTextureLayout,viewIndex),bias);
}
#else
{
l9_0=texture(sc_RayTracedReflectionTexture,sc_SamplingCoordsViewToGlobal(uv,sc_RayTracedReflectionTextureLayout,viewIndex).xy,bias);
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
return sc_RayTracedReflectionTextureSampleViewIndexBias(gl_FragCoord.xy*sc_CurrentRenderTargetDims.zw,sc_RayTracedReflectionTextureGetStereoViewIndex(),0.0);
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
vec3 calculateIndirectSpecularEnvmap(SurfaceProperties surfaceProperties,vec3 V)
{
vec3 l9_0=surfaceProperties.normal;
vec3 l9_1=sampleSpecularEnvTextureLod(getSpecularDominantDir(l9_0,reflect(-V,l9_0),surfaceProperties.roughness),clamp(pow(surfaceProperties.roughness,0.66666669),0.0,1.0)*5.0);
vec3 l9_2=(l9_1*sc_EnvmapExposure)+vec3(1e-06);
vec3 l9_3;
if (receivesRayTracedReflections)
{
vec4 l9_4=sampleRayTracedReflections();
l9_3=mix(l9_2,l9_4.xyz,vec3(l9_4.w));
}
else
{
l9_3=l9_2;
}
return l9_3*envBRDFApprox(surfaceProperties,abs(dot(l9_0,V)));
}
sc_SphericalGaussianLight_t DistributionTermSG(vec3 direction,float roughness)
{
float l9_0=roughness*roughness;
return sc_SphericalGaussianLight_t(vec3(1.0/(3.1415927*l9_0)),2.0/l9_0,direction);
}
sc_SphericalGaussianLight_t WarpDistributionSG(sc_SphericalGaussianLight_t ndf,vec3 view)
{
return sc_SphericalGaussianLight_t(ndf.color,ndf.sharpness/(4.0*max(dot(ndf.axis,view),9.9999997e-05)),reflect(-view,ndf.axis));
}
vec3 SGInnerProduct(sc_SphericalGaussianLight_t lhs,sc_SphericalGaussianLight_t rhs)
{
float l9_0=length((lhs.axis*lhs.sharpness)+(rhs.axis*rhs.sharpness));
return ((((lhs.color*exp((l9_0-lhs.sharpness)-rhs.sharpness))*rhs.color)*6.2831855)*(1.0-exp((-2.0)*l9_0)))/vec3(l9_0);
}
vec3 SpecularTermSG(sc_SphericalGaussianLight_t light,vec3 normal,float roughness,vec3 view,vec3 specColor)
{
sc_SphericalGaussianLight_t l9_0=WarpDistributionSG(DistributionTermSG(normal,roughness),view);
vec3 l9_1=l9_0.axis;
float l9_2=roughness*roughness;
float l9_3=clamp(dot(normal,l9_1),0.0,1.0);
float l9_4=clamp(dot(normal,view),0.0,1.0);
float l9_5=1.0-l9_2;
return ((SGInnerProduct(l9_0,light)*((1.0/(l9_3+sqrt(l9_2+((l9_5*l9_3)*l9_3))))*(1.0/(l9_4+sqrt(l9_2+((l9_5*l9_4)*l9_4))))))*(specColor+((vec3(1.0)-specColor)*pow(1.0-clamp(dot(l9_1,normalize(l9_1+view)),0.0,1.0),5.0))))*l9_3;
}
vec3 calculateLightEstimationSpecular(SurfaceProperties surfaceProperties,vec3 V)
{
float l9_0=surfaceProperties.roughness;
float l9_1=surfaceProperties.roughness;
vec3 l9_2;
l9_2=sc_LightEstimationData.ambientLight*surfaceProperties.specColor;
sc_SphericalGaussianLight_t param;
vec3 param_1;
float param_2;
vec3 param_3;
vec3 param_4;
int l9_3=0;
for (int snapLoopIndex=0; snapLoopIndex==0; snapLoopIndex+=0)
{
if (l9_3<sc_LightEstimationSGCount)
{
l9_2+=SpecularTermSG(sc_LightEstimationData.sg[l9_3],surfaceProperties.normal,clamp(l9_0*l9_1,0.0099999998,1.0),V,surfaceProperties.specColor);
l9_3++;
continue;
}
else
{
break;
}
}
return l9_2;
}
vec3 calculateIndirectSpecular(SurfaceProperties surfaceProperties,vec3 V)
{
vec3 l9_0;
#if ((sc_EnvLightMode==sc_AmbientLightMode_EnvironmentMap)||(sc_EnvLightMode==sc_AmbientLightMode_FromCamera))
{
l9_0=vec3(0.0)+calculateIndirectSpecularEnvmap(surfaceProperties,V);
}
#else
{
l9_0=vec3(0.0);
}
#endif
vec3 l9_1;
#if (sc_LightEstimation)
{
l9_1=l9_0+calculateLightEstimationSpecular(surfaceProperties,V);
}
#else
{
l9_1=l9_0;
}
#endif
return l9_1;
}
LightingComponents evaluateLighting(SurfaceProperties surfaceProperties)
{
vec3 l9_0=surfaceProperties.viewDirWS;
vec4 bakedShadows=vec4(surfaceProperties.bakedShadows,1.0);
vec3 l9_1;
vec3 l9_2;
vec3 l9_3;
vec3 l9_4;
int l9_5;
vec3 l9_6;
vec3 l9_7;
#if (sc_DirectionalLightsCount>0)
{
vec3 l9_8;
vec3 l9_9;
vec3 l9_10;
vec3 l9_11;
int l9_12;
vec3 l9_13;
vec3 l9_14;
l9_14=vec3(1.0);
l9_13=vec3(0.0);
l9_12=0;
l9_11=vec3(0.0);
l9_10=vec3(0.0);
l9_9=vec3(0.0);
l9_8=vec3(0.0);
LightingComponents param;
LightProperties param_1;
SurfaceProperties param_2;
vec3 param_3;
int l9_15=0;
for (int snapLoopIndex=0; snapLoopIndex==0; snapLoopIndex+=0)
{
if (l9_15<sc_DirectionalLightsCount)
{
LightingComponents l9_16=accumulateLight(LightingComponents(l9_8,l9_9,l9_14,l9_13,l9_11,l9_10),LightProperties(sc_DirectionalLights[l9_15].direction,sc_DirectionalLights[l9_15].color.xyz,sc_DirectionalLights[l9_15].color.w*bakedShadows[(l9_12<3) ? l9_12 : 3]),surfaceProperties,l9_0);
l9_14=l9_16.indirectDiffuse;
l9_13=l9_16.indirectSpecular;
l9_12++;
l9_11=l9_16.emitted;
l9_10=l9_16.transmitted;
l9_9=l9_16.directSpecular;
l9_8=l9_16.directDiffuse;
l9_15++;
continue;
}
else
{
break;
}
}
l9_7=l9_14;
l9_6=l9_13;
l9_5=l9_12;
l9_4=l9_11;
l9_3=l9_10;
l9_2=l9_9;
l9_1=l9_8;
}
#else
{
l9_7=vec3(1.0);
l9_6=vec3(0.0);
l9_5=0;
l9_4=vec3(0.0);
l9_3=vec3(0.0);
l9_2=vec3(0.0);
l9_1=vec3(0.0);
}
#endif
vec3 l9_17;
vec3 l9_18;
vec3 l9_19;
vec3 l9_20;
#if (sc_PointLightsCount>0)
{
vec3 l9_21;
vec3 l9_22;
vec3 l9_23;
vec3 l9_24;
vec3 l9_25;
vec3 l9_26;
l9_26=l9_7;
l9_25=l9_6;
l9_24=l9_4;
l9_23=l9_3;
l9_22=l9_2;
l9_21=l9_1;
int l9_27;
vec3 l9_28;
vec3 l9_29;
vec3 l9_30;
vec3 l9_31;
vec3 l9_32;
vec3 l9_33;
int l9_34=0;
int l9_35=l9_5;
for (int snapLoopIndex=0; snapLoopIndex==0; snapLoopIndex+=0)
{
if (l9_34<sc_PointLightsCount)
{
vec3 l9_36=surfaceProperties.positionWS;
vec3 l9_37=sc_PointLights[l9_34].position-l9_36;
vec3 l9_38=normalize(l9_37);
float l9_39=bakedShadows[(l9_35<3) ? l9_35 : 3];
float l9_40=clamp((dot(l9_38,sc_PointLights[l9_34].direction)*sc_PointLights[l9_34].angleScale)+sc_PointLights[l9_34].angleOffset,0.0,1.0);
float l9_41=(sc_PointLights[l9_34].color.w*l9_39)*(l9_40*l9_40);
float l9_42;
if (sc_PointLights[l9_34].falloffEnabled)
{
l9_42=l9_41*computeDistanceAttenuation(length(l9_37),sc_PointLights[l9_34].falloffEndDistance);
}
else
{
l9_42=l9_41;
}
l9_27=l9_35+1;
LightingComponents l9_43=accumulateLight(LightingComponents(l9_21,l9_22,l9_26,l9_25,l9_24,l9_23),LightProperties(l9_38,sc_PointLights[l9_34].color.xyz,l9_42),surfaceProperties,l9_0);
l9_28=l9_43.directDiffuse;
l9_29=l9_43.directSpecular;
l9_30=l9_43.indirectDiffuse;
l9_31=l9_43.indirectSpecular;
l9_32=l9_43.emitted;
l9_33=l9_43.transmitted;
l9_26=l9_30;
l9_25=l9_31;
l9_35=l9_27;
l9_24=l9_32;
l9_23=l9_33;
l9_22=l9_29;
l9_21=l9_28;
l9_34++;
continue;
}
else
{
break;
}
}
l9_20=l9_24;
l9_19=l9_23;
l9_18=l9_22;
l9_17=l9_21;
}
#else
{
l9_20=l9_4;
l9_19=l9_3;
l9_18=l9_2;
l9_17=l9_1;
}
#endif
vec3 l9_44;
vec3 l9_45;
#if (sc_ProjectiveShadowsReceiver)
{
vec3 l9_46=evaluateShadow();
l9_45=l9_18*l9_46;
l9_44=l9_17*l9_46;
}
#else
{
l9_45=l9_18;
l9_44=l9_17;
}
#endif
vec3 l9_47;
vec3 l9_48;
if (receivesRayTracedShadows)
{
vec3 l9_49=vec3(1.0)-vec3(sc_RayTracedShadowTextureSampleViewIndexBias(gl_FragCoord.xy*sc_CurrentRenderTargetDims.zw,sc_RayTracedShadowTextureGetStereoViewIndex(),0.0).x);
l9_48=l9_44*l9_49;
l9_47=l9_45*l9_49;
}
else
{
l9_48=l9_44;
l9_47=l9_45;
}
return LightingComponents(l9_48,l9_47,calculateDiffuseIrradiance(surfaceProperties.normal),calculateIndirectSpecular(surfaceProperties,l9_0),l9_20,l9_19);
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
int sc_RayTracedAoTextureGetStereoViewIndex()
{
int l9_0;
#if (sc_RayTracedAoTextureHasSwappedViews)
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
vec4 sc_RayTracedAoTextureSampleViewIndexBias(vec2 uv,int viewIndex,float bias)
{
vec4 l9_0;
#if (sc_RayTracedAoTextureLayout==2)
{
l9_0=texture(sc_RayTracedAoTextureArrSC,sc_SamplingCoordsViewToGlobal(uv,sc_RayTracedAoTextureLayout,viewIndex),bias);
}
#else
{
l9_0=texture(sc_RayTracedAoTexture,sc_SamplingCoordsViewToGlobal(uv,sc_RayTracedAoTextureLayout,viewIndex).xy,bias);
}
#endif
return l9_0;
}
float sampleRayTracedAo()
{
if (receivesRayTracedAo)
{
return sc_RayTracedAoTextureSampleViewIndexBias(gl_FragCoord.xy*sc_CurrentRenderTargetDims.zw,sc_RayTracedAoTextureGetStereoViewIndex(),0.0).x;
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
vec3 combineSurfacePropertiesWithLighting(SurfaceProperties surfaceProperties,LightingComponents lighting,bool enablePremultipliedAlpha)
{
vec3 l9_0;
if (receivesRayTracedAo)
{
l9_0=surfaceProperties.albedo*(lighting.directDiffuse+(lighting.indirectDiffuse*vec3(1.0-sampleRayTracedAo())));
}
else
{
l9_0=surfaceProperties.albedo*(lighting.directDiffuse+(lighting.indirectDiffuse*surfaceProperties.ao));
}
vec3 l9_1=lighting.directSpecular;
vec3 l9_2=lighting.indirectSpecular;
vec3 l9_3=surfaceProperties.specularAo;
vec3 l9_4=surfaceProperties.emissive;
vec3 l9_5=lighting.transmitted;
vec3 l9_6;
if (enablePremultipliedAlpha)
{
l9_6=l9_0*srgbToLinear(surfaceProperties.opacity);
}
else
{
l9_6=l9_0;
}
return ((l9_6+(l9_1+(l9_2*l9_3)))+l9_4)+l9_5;
}
vec3 linearToneMapping(vec3 x)
{
return (x*((x*1.8)+vec3(1.4)))/((x*((x*1.8)+vec3(0.5)))+vec3(1.5));
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
SurfaceProperties l9_0=defaultSurfaceProperties();
vec3 l9_1=l9_0.bakedShadows;
float l9_2=opacity;
vec3 l9_3=ssSRGB_to_Linear(albedo);
vec3 l9_4=normal;
vec3 l9_5=normalize(l9_4);
vec3 l9_6=position;
vec3 l9_7=viewDir;
vec3 l9_8=ssSRGB_to_Linear(emissive);
float l9_9=metallic;
float l9_10=roughness;
vec3 l9_11=ao;
vec3 l9_12=specularAO;
vec3 l9_13;
#if (sc_SSAOEnabled)
{
l9_13=evaluateSSAO(l9_6);
}
#else
{
l9_13=l9_11;
}
#endif
vec3 l9_14;
vec3 l9_15;
deriveAlbedoAndSpecColorFromSurfaceProperties(SurfaceProperties(l9_3,l9_2,l9_5,l9_6,l9_7,l9_9,l9_10,l9_8,l9_13,l9_12,l9_1,l9_0.specColor),l9_14,l9_15);
vec3 l9_16=l9_14;
vec3 l9_17=l9_15;
LightingComponents l9_18=evaluateLighting(SurfaceProperties(l9_16,l9_2,l9_5,l9_6,l9_7,l9_9,l9_10,l9_8,l9_13,l9_12,l9_1,l9_17));
float l9_19;
vec3 l9_20;
vec3 l9_21;
vec3 l9_22;
#if (sc_BlendMode_ColoredGlass)
{
l9_22=vec3(0.0);
l9_21=vec3(0.0);
l9_20=ssSRGB_to_Linear(sc_GetFramebufferColor().xyz)*mix(vec3(1.0),l9_16,vec3(l9_2));
l9_19=1.0;
}
#else
{
l9_22=l9_18.directDiffuse;
l9_21=l9_18.indirectDiffuse;
l9_20=l9_18.transmitted;
l9_19=l9_2;
}
#endif
bool l9_23;
#if (sc_BlendMode_PremultipliedAlpha)
{
l9_23=true;
}
#else
{
l9_23=false;
}
#endif
vec3 l9_24=combineSurfacePropertiesWithLighting(SurfaceProperties(l9_16,l9_19,l9_5,l9_6,l9_7,l9_9,l9_10,l9_8,l9_13,l9_12,l9_1,l9_17),LightingComponents(l9_22,l9_18.directSpecular,l9_21,l9_18.indirectSpecular,l9_18.emitted,l9_20),l9_23);
float l9_25=l9_24.x;
vec4 l9_26=vec4(l9_25,l9_24.yz,l9_19);
vec4 l9_27;
#if (sc_IsEditor)
{
vec4 l9_28=l9_26;
l9_28.x=l9_25+((l9_13.x*l9_12.x)*9.9999997e-06);
l9_27=l9_28;
}
#else
{
l9_27=l9_26;
}
#endif
if (isProxyMode)
{
return l9_27;
}
vec4 l9_29;
#if (!sc_BlendMode_Multiply)
{
vec3 l9_30=linearToneMapping(l9_27.xyz);
l9_29=vec4(l9_30.x,l9_30.y,l9_30.z,l9_27.w);
}
#else
{
l9_29=l9_27;
}
#endif
vec3 l9_31=vec3(linearToSrgb(l9_29.x),linearToSrgb(l9_29.y),linearToSrgb(l9_29.z));
return vec4(l9_31.x,l9_31.y,l9_31.z,l9_29.w);
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
vec4 l9_0;
vec2 l9_1;
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
l9_1=((l9_14.xy/vec2(l9_14.w))*0.5)+vec2(0.5);
l9_0=l9_9.color;
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
l9_1=sc_ScreenCoordsGlobalToView(gl_FragCoord.xy*sc_CurrentRenderTargetDims.zw);
l9_0=varColor;
}
ssGlobals l9_17=ssGlobals(sc_Time.x,sc_Time.y,0.0,vec3(0.0),l9_8,l9_7,l9_7,l9_6,l9_5,l9_4,l9_3,l9_2,l9_1,l9_0);
vec4 l9_18;
#if (ENABLE_GLTF_LIGHTING)
{
float l9_19;
Node40_Bool_Parameter(l9_19,l9_17);
float l9_20;
Node121_Bool_Parameter(l9_20,l9_17);
float l9_21;
Node48_Bool_Parameter(l9_21,l9_17);
float l9_22;
Node88_Bool_Parameter(l9_22,l9_17);
tempGlobals=l9_17;
vec4 l9_23;
#if (ENABLE_BASE_TEX)
{
vec2 l9_24=N35_getUV(NODE_7_DROPLIST_ITEM);
vec2 l9_25;
if ((int(ENABLE_TEXTURE_TRANSFORM)!=0)&&(int(ENABLE_BASE_TEXTURE_TRANSFORM)!=0))
{
l9_25=N35_uvTransform(l9_24,baseColorTexture_offset,baseColorTexture_scale,baseColorTexture_rotation);
}
else
{
l9_25=l9_24;
}
l9_23=baseColorFactor*ssSRGB_to_Linear(N35_BaseTexture_sample(l9_25));
}
#else
{
l9_23=baseColorFactor;
}
#endif
vec4 l9_26;
#if (ENABLE_VERTEX_COLOR_BASE)
{
l9_26=l9_23*tempGlobals.VertexColor;
}
#else
{
l9_26=l9_23;
}
#endif
tempGlobals=l9_17;
vec3 l9_27;
#if (ENABLE_EMISSIVE)
{
vec2 l9_28=N3_getUV(NODE_10_DROPLIST_ITEM);
vec2 l9_29;
if ((int(ENABLE_TEXTURE_TRANSFORM)!=0)&&(int(ENABLE_EMISSIVE_TEXTURE_TRANSFORM)!=0))
{
l9_29=N3_uvTransform(l9_28,emissiveTexture_offset,emissiveTexture_scale,emissiveTexture_rotation);
}
else
{
l9_29=l9_28;
}
vec4 l9_30;
#if (emissiveTextureLayout==2)
{
bool l9_31=(int(SC_USE_CLAMP_TO_BORDER_emissiveTexture)!=0)&&(!(int(SC_USE_UV_MIN_MAX_emissiveTexture)!=0));
float l9_32=l9_29.x;
sc_SoftwareWrapEarly(l9_32,ivec2(SC_SOFTWARE_WRAP_MODE_U_emissiveTexture,SC_SOFTWARE_WRAP_MODE_V_emissiveTexture).x);
float l9_33=l9_32;
float l9_34=l9_29.y;
sc_SoftwareWrapEarly(l9_34,ivec2(SC_SOFTWARE_WRAP_MODE_U_emissiveTexture,SC_SOFTWARE_WRAP_MODE_V_emissiveTexture).y);
float l9_35=l9_34;
vec2 l9_36;
float l9_37;
#if (SC_USE_UV_MIN_MAX_emissiveTexture)
{
bool l9_38;
#if (SC_USE_CLAMP_TO_BORDER_emissiveTexture)
{
l9_38=ivec2(SC_SOFTWARE_WRAP_MODE_U_emissiveTexture,SC_SOFTWARE_WRAP_MODE_V_emissiveTexture).x==3;
}
#else
{
l9_38=(int(SC_USE_CLAMP_TO_BORDER_emissiveTexture)!=0);
}
#endif
float l9_39=l9_33;
float l9_40=1.0;
sc_ClampUV(l9_39,emissiveTextureUvMinMax.x,emissiveTextureUvMinMax.z,l9_38,l9_40);
float l9_41=l9_39;
float l9_42=l9_40;
bool l9_43;
#if (SC_USE_CLAMP_TO_BORDER_emissiveTexture)
{
l9_43=ivec2(SC_SOFTWARE_WRAP_MODE_U_emissiveTexture,SC_SOFTWARE_WRAP_MODE_V_emissiveTexture).y==3;
}
#else
{
l9_43=(int(SC_USE_CLAMP_TO_BORDER_emissiveTexture)!=0);
}
#endif
float l9_44=l9_35;
float l9_45=l9_42;
sc_ClampUV(l9_44,emissiveTextureUvMinMax.y,emissiveTextureUvMinMax.w,l9_43,l9_45);
l9_37=l9_45;
l9_36=vec2(l9_41,l9_44);
}
#else
{
l9_37=1.0;
l9_36=vec2(l9_33,l9_35);
}
#endif
vec2 l9_46=sc_TransformUV(l9_36,(int(SC_USE_UV_TRANSFORM_emissiveTexture)!=0),emissiveTextureTransform);
float l9_47=l9_46.x;
float l9_48=l9_37;
sc_SoftwareWrapLate(l9_47,ivec2(SC_SOFTWARE_WRAP_MODE_U_emissiveTexture,SC_SOFTWARE_WRAP_MODE_V_emissiveTexture).x,l9_31,l9_48);
float l9_49=l9_46.y;
float l9_50=l9_48;
sc_SoftwareWrapLate(l9_49,ivec2(SC_SOFTWARE_WRAP_MODE_U_emissiveTexture,SC_SOFTWARE_WRAP_MODE_V_emissiveTexture).y,l9_31,l9_50);
float l9_51=l9_50;
vec3 l9_52=sc_SamplingCoordsViewToGlobal(vec2(l9_47,l9_49),emissiveTextureLayout,emissiveTextureGetStereoViewIndex());
vec4 l9_53=texture(emissiveTextureArrSC,l9_52,0.0);
vec4 l9_54;
#if (SC_USE_CLAMP_TO_BORDER_emissiveTexture)
{
l9_54=mix(emissiveTextureBorderColor,l9_53,vec4(l9_51));
}
#else
{
l9_54=l9_53;
}
#endif
l9_30=l9_54;
}
#else
{
bool l9_55=(int(SC_USE_CLAMP_TO_BORDER_emissiveTexture)!=0)&&(!(int(SC_USE_UV_MIN_MAX_emissiveTexture)!=0));
float l9_56=l9_29.x;
sc_SoftwareWrapEarly(l9_56,ivec2(SC_SOFTWARE_WRAP_MODE_U_emissiveTexture,SC_SOFTWARE_WRAP_MODE_V_emissiveTexture).x);
float l9_57=l9_56;
float l9_58=l9_29.y;
sc_SoftwareWrapEarly(l9_58,ivec2(SC_SOFTWARE_WRAP_MODE_U_emissiveTexture,SC_SOFTWARE_WRAP_MODE_V_emissiveTexture).y);
float l9_59=l9_58;
vec2 l9_60;
float l9_61;
#if (SC_USE_UV_MIN_MAX_emissiveTexture)
{
bool l9_62;
#if (SC_USE_CLAMP_TO_BORDER_emissiveTexture)
{
l9_62=ivec2(SC_SOFTWARE_WRAP_MODE_U_emissiveTexture,SC_SOFTWARE_WRAP_MODE_V_emissiveTexture).x==3;
}
#else
{
l9_62=(int(SC_USE_CLAMP_TO_BORDER_emissiveTexture)!=0);
}
#endif
float l9_63=l9_57;
float l9_64=1.0;
sc_ClampUV(l9_63,emissiveTextureUvMinMax.x,emissiveTextureUvMinMax.z,l9_62,l9_64);
float l9_65=l9_63;
float l9_66=l9_64;
bool l9_67;
#if (SC_USE_CLAMP_TO_BORDER_emissiveTexture)
{
l9_67=ivec2(SC_SOFTWARE_WRAP_MODE_U_emissiveTexture,SC_SOFTWARE_WRAP_MODE_V_emissiveTexture).y==3;
}
#else
{
l9_67=(int(SC_USE_CLAMP_TO_BORDER_emissiveTexture)!=0);
}
#endif
float l9_68=l9_59;
float l9_69=l9_66;
sc_ClampUV(l9_68,emissiveTextureUvMinMax.y,emissiveTextureUvMinMax.w,l9_67,l9_69);
l9_61=l9_69;
l9_60=vec2(l9_65,l9_68);
}
#else
{
l9_61=1.0;
l9_60=vec2(l9_57,l9_59);
}
#endif
vec2 l9_70=sc_TransformUV(l9_60,(int(SC_USE_UV_TRANSFORM_emissiveTexture)!=0),emissiveTextureTransform);
float l9_71=l9_70.x;
float l9_72=l9_61;
sc_SoftwareWrapLate(l9_71,ivec2(SC_SOFTWARE_WRAP_MODE_U_emissiveTexture,SC_SOFTWARE_WRAP_MODE_V_emissiveTexture).x,l9_55,l9_72);
float l9_73=l9_70.y;
float l9_74=l9_72;
sc_SoftwareWrapLate(l9_73,ivec2(SC_SOFTWARE_WRAP_MODE_U_emissiveTexture,SC_SOFTWARE_WRAP_MODE_V_emissiveTexture).y,l9_55,l9_74);
float l9_75=l9_74;
vec3 l9_76=sc_SamplingCoordsViewToGlobal(vec2(l9_71,l9_73),emissiveTextureLayout,emissiveTextureGetStereoViewIndex());
vec4 l9_77=texture(emissiveTexture,l9_76.xy,0.0);
vec4 l9_78;
#if (SC_USE_CLAMP_TO_BORDER_emissiveTexture)
{
l9_78=mix(emissiveTextureBorderColor,l9_77,vec4(l9_75));
}
#else
{
l9_78=l9_77;
}
#endif
l9_30=l9_78;
}
#endif
l9_27=ssSRGB_to_Linear(l9_30.xyz)*ssSRGB_to_Linear(emissiveFactor);
}
#else
{
l9_27=emissiveFactor;
}
#endif
vec3 l9_79=tempGlobals.VertexNormal_WorldSpace;
vec3 l9_80=normalize(l9_79);
vec3 l9_81;
#if (ENABLE_NORMALMAP)
{
vec2 l9_82=N3_getUV(NODE_8_DROPLIST_ITEM);
vec2 l9_83;
if ((int(ENABLE_TEXTURE_TRANSFORM)!=0)&&(int(ENABLE_NORMAL_TEXTURE_TRANSFORM)!=0))
{
l9_83=N3_uvTransform(l9_82,normalTexture_offset,normalTexture_scale,normalTexture_rotation);
}
else
{
l9_83=l9_82;
}
vec4 l9_84;
#if (normalTextureLayout==2)
{
bool l9_85=(int(SC_USE_CLAMP_TO_BORDER_normalTexture)!=0)&&(!(int(SC_USE_UV_MIN_MAX_normalTexture)!=0));
float l9_86=l9_83.x;
sc_SoftwareWrapEarly(l9_86,ivec2(SC_SOFTWARE_WRAP_MODE_U_normalTexture,SC_SOFTWARE_WRAP_MODE_V_normalTexture).x);
float l9_87=l9_86;
float l9_88=l9_83.y;
sc_SoftwareWrapEarly(l9_88,ivec2(SC_SOFTWARE_WRAP_MODE_U_normalTexture,SC_SOFTWARE_WRAP_MODE_V_normalTexture).y);
float l9_89=l9_88;
vec2 l9_90;
float l9_91;
#if (SC_USE_UV_MIN_MAX_normalTexture)
{
bool l9_92;
#if (SC_USE_CLAMP_TO_BORDER_normalTexture)
{
l9_92=ivec2(SC_SOFTWARE_WRAP_MODE_U_normalTexture,SC_SOFTWARE_WRAP_MODE_V_normalTexture).x==3;
}
#else
{
l9_92=(int(SC_USE_CLAMP_TO_BORDER_normalTexture)!=0);
}
#endif
float l9_93=l9_87;
float l9_94=1.0;
sc_ClampUV(l9_93,normalTextureUvMinMax.x,normalTextureUvMinMax.z,l9_92,l9_94);
float l9_95=l9_93;
float l9_96=l9_94;
bool l9_97;
#if (SC_USE_CLAMP_TO_BORDER_normalTexture)
{
l9_97=ivec2(SC_SOFTWARE_WRAP_MODE_U_normalTexture,SC_SOFTWARE_WRAP_MODE_V_normalTexture).y==3;
}
#else
{
l9_97=(int(SC_USE_CLAMP_TO_BORDER_normalTexture)!=0);
}
#endif
float l9_98=l9_89;
float l9_99=l9_96;
sc_ClampUV(l9_98,normalTextureUvMinMax.y,normalTextureUvMinMax.w,l9_97,l9_99);
l9_91=l9_99;
l9_90=vec2(l9_95,l9_98);
}
#else
{
l9_91=1.0;
l9_90=vec2(l9_87,l9_89);
}
#endif
vec2 l9_100=sc_TransformUV(l9_90,(int(SC_USE_UV_TRANSFORM_normalTexture)!=0),normalTextureTransform);
float l9_101=l9_100.x;
float l9_102=l9_91;
sc_SoftwareWrapLate(l9_101,ivec2(SC_SOFTWARE_WRAP_MODE_U_normalTexture,SC_SOFTWARE_WRAP_MODE_V_normalTexture).x,l9_85,l9_102);
float l9_103=l9_100.y;
float l9_104=l9_102;
sc_SoftwareWrapLate(l9_103,ivec2(SC_SOFTWARE_WRAP_MODE_U_normalTexture,SC_SOFTWARE_WRAP_MODE_V_normalTexture).y,l9_85,l9_104);
float l9_105=l9_104;
vec3 l9_106=sc_SamplingCoordsViewToGlobal(vec2(l9_101,l9_103),normalTextureLayout,normalTextureGetStereoViewIndex());
vec4 l9_107=texture(normalTextureArrSC,l9_106,0.0);
vec4 l9_108;
#if (SC_USE_CLAMP_TO_BORDER_normalTexture)
{
l9_108=mix(normalTextureBorderColor,l9_107,vec4(l9_105));
}
#else
{
l9_108=l9_107;
}
#endif
l9_84=l9_108;
}
#else
{
bool l9_109=(int(SC_USE_CLAMP_TO_BORDER_normalTexture)!=0)&&(!(int(SC_USE_UV_MIN_MAX_normalTexture)!=0));
float l9_110=l9_83.x;
sc_SoftwareWrapEarly(l9_110,ivec2(SC_SOFTWARE_WRAP_MODE_U_normalTexture,SC_SOFTWARE_WRAP_MODE_V_normalTexture).x);
float l9_111=l9_110;
float l9_112=l9_83.y;
sc_SoftwareWrapEarly(l9_112,ivec2(SC_SOFTWARE_WRAP_MODE_U_normalTexture,SC_SOFTWARE_WRAP_MODE_V_normalTexture).y);
float l9_113=l9_112;
vec2 l9_114;
float l9_115;
#if (SC_USE_UV_MIN_MAX_normalTexture)
{
bool l9_116;
#if (SC_USE_CLAMP_TO_BORDER_normalTexture)
{
l9_116=ivec2(SC_SOFTWARE_WRAP_MODE_U_normalTexture,SC_SOFTWARE_WRAP_MODE_V_normalTexture).x==3;
}
#else
{
l9_116=(int(SC_USE_CLAMP_TO_BORDER_normalTexture)!=0);
}
#endif
float l9_117=l9_111;
float l9_118=1.0;
sc_ClampUV(l9_117,normalTextureUvMinMax.x,normalTextureUvMinMax.z,l9_116,l9_118);
float l9_119=l9_117;
float l9_120=l9_118;
bool l9_121;
#if (SC_USE_CLAMP_TO_BORDER_normalTexture)
{
l9_121=ivec2(SC_SOFTWARE_WRAP_MODE_U_normalTexture,SC_SOFTWARE_WRAP_MODE_V_normalTexture).y==3;
}
#else
{
l9_121=(int(SC_USE_CLAMP_TO_BORDER_normalTexture)!=0);
}
#endif
float l9_122=l9_113;
float l9_123=l9_120;
sc_ClampUV(l9_122,normalTextureUvMinMax.y,normalTextureUvMinMax.w,l9_121,l9_123);
l9_115=l9_123;
l9_114=vec2(l9_119,l9_122);
}
#else
{
l9_115=1.0;
l9_114=vec2(l9_111,l9_113);
}
#endif
vec2 l9_124=sc_TransformUV(l9_114,(int(SC_USE_UV_TRANSFORM_normalTexture)!=0),normalTextureTransform);
float l9_125=l9_124.x;
float l9_126=l9_115;
sc_SoftwareWrapLate(l9_125,ivec2(SC_SOFTWARE_WRAP_MODE_U_normalTexture,SC_SOFTWARE_WRAP_MODE_V_normalTexture).x,l9_109,l9_126);
float l9_127=l9_124.y;
float l9_128=l9_126;
sc_SoftwareWrapLate(l9_127,ivec2(SC_SOFTWARE_WRAP_MODE_U_normalTexture,SC_SOFTWARE_WRAP_MODE_V_normalTexture).y,l9_109,l9_128);
float l9_129=l9_128;
vec3 l9_130=sc_SamplingCoordsViewToGlobal(vec2(l9_125,l9_127),normalTextureLayout,normalTextureGetStereoViewIndex());
vec4 l9_131=texture(normalTexture,l9_130.xy,0.0);
vec4 l9_132;
#if (SC_USE_CLAMP_TO_BORDER_normalTexture)
{
l9_132=mix(normalTextureBorderColor,l9_131,vec4(l9_129));
}
#else
{
l9_132=l9_131;
}
#endif
l9_84=l9_132;
}
#endif
l9_81=normalize(mat3(tempGlobals.VertexTangent_WorldSpace,tempGlobals.VertexBinormal_WorldSpace,l9_80)*mix(vec3(0.0,0.0,1.0),(l9_84.xyz*1.9921875)-vec3(1.0),vec3(normalTextureScale)));
}
#else
{
l9_81=l9_80;
}
#endif
float l9_133;
vec4 l9_134;
float l9_135;
#if (ENABLE_METALLIC_ROUGHNESS_TEX)
{
vec2 l9_136=N3_getUV(NODE_11_DROPLIST_ITEM);
vec2 l9_137;
if ((int(ENABLE_TEXTURE_TRANSFORM)!=0)&&(int(ENABLE_METALLIC_ROUGHNESS_TEXTURE_TRANSFORM)!=0))
{
l9_137=N3_uvTransform(l9_136,metallicRoughnessTexture_offset,metallicRoughnessTexture_scale,metallicRoughnessTexture_rotation);
}
else
{
l9_137=l9_136;
}
vec4 l9_138;
#if (metallicRoughnessTextureLayout==2)
{
bool l9_139=(int(SC_USE_CLAMP_TO_BORDER_metallicRoughnessTexture)!=0)&&(!(int(SC_USE_UV_MIN_MAX_metallicRoughnessTexture)!=0));
float l9_140=l9_137.x;
sc_SoftwareWrapEarly(l9_140,ivec2(SC_SOFTWARE_WRAP_MODE_U_metallicRoughnessTexture,SC_SOFTWARE_WRAP_MODE_V_metallicRoughnessTexture).x);
float l9_141=l9_140;
float l9_142=l9_137.y;
sc_SoftwareWrapEarly(l9_142,ivec2(SC_SOFTWARE_WRAP_MODE_U_metallicRoughnessTexture,SC_SOFTWARE_WRAP_MODE_V_metallicRoughnessTexture).y);
float l9_143=l9_142;
vec2 l9_144;
float l9_145;
#if (SC_USE_UV_MIN_MAX_metallicRoughnessTexture)
{
bool l9_146;
#if (SC_USE_CLAMP_TO_BORDER_metallicRoughnessTexture)
{
l9_146=ivec2(SC_SOFTWARE_WRAP_MODE_U_metallicRoughnessTexture,SC_SOFTWARE_WRAP_MODE_V_metallicRoughnessTexture).x==3;
}
#else
{
l9_146=(int(SC_USE_CLAMP_TO_BORDER_metallicRoughnessTexture)!=0);
}
#endif
float l9_147=l9_141;
float l9_148=1.0;
sc_ClampUV(l9_147,metallicRoughnessTextureUvMinMax.x,metallicRoughnessTextureUvMinMax.z,l9_146,l9_148);
float l9_149=l9_147;
float l9_150=l9_148;
bool l9_151;
#if (SC_USE_CLAMP_TO_BORDER_metallicRoughnessTexture)
{
l9_151=ivec2(SC_SOFTWARE_WRAP_MODE_U_metallicRoughnessTexture,SC_SOFTWARE_WRAP_MODE_V_metallicRoughnessTexture).y==3;
}
#else
{
l9_151=(int(SC_USE_CLAMP_TO_BORDER_metallicRoughnessTexture)!=0);
}
#endif
float l9_152=l9_143;
float l9_153=l9_150;
sc_ClampUV(l9_152,metallicRoughnessTextureUvMinMax.y,metallicRoughnessTextureUvMinMax.w,l9_151,l9_153);
l9_145=l9_153;
l9_144=vec2(l9_149,l9_152);
}
#else
{
l9_145=1.0;
l9_144=vec2(l9_141,l9_143);
}
#endif
vec2 l9_154=sc_TransformUV(l9_144,(int(SC_USE_UV_TRANSFORM_metallicRoughnessTexture)!=0),metallicRoughnessTextureTransform);
float l9_155=l9_154.x;
float l9_156=l9_145;
sc_SoftwareWrapLate(l9_155,ivec2(SC_SOFTWARE_WRAP_MODE_U_metallicRoughnessTexture,SC_SOFTWARE_WRAP_MODE_V_metallicRoughnessTexture).x,l9_139,l9_156);
float l9_157=l9_154.y;
float l9_158=l9_156;
sc_SoftwareWrapLate(l9_157,ivec2(SC_SOFTWARE_WRAP_MODE_U_metallicRoughnessTexture,SC_SOFTWARE_WRAP_MODE_V_metallicRoughnessTexture).y,l9_139,l9_158);
float l9_159=l9_158;
vec3 l9_160=sc_SamplingCoordsViewToGlobal(vec2(l9_155,l9_157),metallicRoughnessTextureLayout,metallicRoughnessTextureGetStereoViewIndex());
vec4 l9_161=texture(metallicRoughnessTextureArrSC,l9_160,0.0);
vec4 l9_162;
#if (SC_USE_CLAMP_TO_BORDER_metallicRoughnessTexture)
{
l9_162=mix(metallicRoughnessTextureBorderColor,l9_161,vec4(l9_159));
}
#else
{
l9_162=l9_161;
}
#endif
l9_138=l9_162;
}
#else
{
bool l9_163=(int(SC_USE_CLAMP_TO_BORDER_metallicRoughnessTexture)!=0)&&(!(int(SC_USE_UV_MIN_MAX_metallicRoughnessTexture)!=0));
float l9_164=l9_137.x;
sc_SoftwareWrapEarly(l9_164,ivec2(SC_SOFTWARE_WRAP_MODE_U_metallicRoughnessTexture,SC_SOFTWARE_WRAP_MODE_V_metallicRoughnessTexture).x);
float l9_165=l9_164;
float l9_166=l9_137.y;
sc_SoftwareWrapEarly(l9_166,ivec2(SC_SOFTWARE_WRAP_MODE_U_metallicRoughnessTexture,SC_SOFTWARE_WRAP_MODE_V_metallicRoughnessTexture).y);
float l9_167=l9_166;
vec2 l9_168;
float l9_169;
#if (SC_USE_UV_MIN_MAX_metallicRoughnessTexture)
{
bool l9_170;
#if (SC_USE_CLAMP_TO_BORDER_metallicRoughnessTexture)
{
l9_170=ivec2(SC_SOFTWARE_WRAP_MODE_U_metallicRoughnessTexture,SC_SOFTWARE_WRAP_MODE_V_metallicRoughnessTexture).x==3;
}
#else
{
l9_170=(int(SC_USE_CLAMP_TO_BORDER_metallicRoughnessTexture)!=0);
}
#endif
float l9_171=l9_165;
float l9_172=1.0;
sc_ClampUV(l9_171,metallicRoughnessTextureUvMinMax.x,metallicRoughnessTextureUvMinMax.z,l9_170,l9_172);
float l9_173=l9_171;
float l9_174=l9_172;
bool l9_175;
#if (SC_USE_CLAMP_TO_BORDER_metallicRoughnessTexture)
{
l9_175=ivec2(SC_SOFTWARE_WRAP_MODE_U_metallicRoughnessTexture,SC_SOFTWARE_WRAP_MODE_V_metallicRoughnessTexture).y==3;
}
#else
{
l9_175=(int(SC_USE_CLAMP_TO_BORDER_metallicRoughnessTexture)!=0);
}
#endif
float l9_176=l9_167;
float l9_177=l9_174;
sc_ClampUV(l9_176,metallicRoughnessTextureUvMinMax.y,metallicRoughnessTextureUvMinMax.w,l9_175,l9_177);
l9_169=l9_177;
l9_168=vec2(l9_173,l9_176);
}
#else
{
l9_169=1.0;
l9_168=vec2(l9_165,l9_167);
}
#endif
vec2 l9_178=sc_TransformUV(l9_168,(int(SC_USE_UV_TRANSFORM_metallicRoughnessTexture)!=0),metallicRoughnessTextureTransform);
float l9_179=l9_178.x;
float l9_180=l9_169;
sc_SoftwareWrapLate(l9_179,ivec2(SC_SOFTWARE_WRAP_MODE_U_metallicRoughnessTexture,SC_SOFTWARE_WRAP_MODE_V_metallicRoughnessTexture).x,l9_163,l9_180);
float l9_181=l9_178.y;
float l9_182=l9_180;
sc_SoftwareWrapLate(l9_181,ivec2(SC_SOFTWARE_WRAP_MODE_U_metallicRoughnessTexture,SC_SOFTWARE_WRAP_MODE_V_metallicRoughnessTexture).y,l9_163,l9_182);
float l9_183=l9_182;
vec3 l9_184=sc_SamplingCoordsViewToGlobal(vec2(l9_179,l9_181),metallicRoughnessTextureLayout,metallicRoughnessTextureGetStereoViewIndex());
vec4 l9_185=texture(metallicRoughnessTexture,l9_184.xy,0.0);
vec4 l9_186;
#if (SC_USE_CLAMP_TO_BORDER_metallicRoughnessTexture)
{
l9_186=mix(metallicRoughnessTextureBorderColor,l9_185,vec4(l9_183));
}
#else
{
l9_186=l9_185;
}
#endif
l9_138=l9_186;
}
#endif
vec4 l9_187=vec4(0.0);
l9_187.w=occlusionTextureStrength;
vec3 l9_188=vec3(1.0+(occlusionTextureStrength*(l9_138.z-1.0)));
l9_135=roughnessFactor*l9_138.y;
l9_134=vec4(l9_188.x,l9_188.y,l9_188.z,l9_187.w);
l9_133=metallicFactor*l9_138.x;
}
#else
{
l9_135=roughnessFactor;
l9_134=vec4(1.0,1.0,1.0,0.0);
l9_133=metallicFactor;
}
#endif
vec3 l9_189;
vec3 l9_190;
vec3 l9_191;
#if (ENABLE_TRANSMISSION)
{
vec2 l9_192=tempGlobals.gScreenCoord;
vec4 l9_193;
#if (screenTextureLayout==2)
{
bool l9_194=(int(SC_USE_CLAMP_TO_BORDER_screenTexture)!=0)&&(!(int(SC_USE_UV_MIN_MAX_screenTexture)!=0));
float l9_195=l9_192.x;
sc_SoftwareWrapEarly(l9_195,ivec2(SC_SOFTWARE_WRAP_MODE_U_screenTexture,SC_SOFTWARE_WRAP_MODE_V_screenTexture).x);
float l9_196=l9_195;
float l9_197=l9_192.y;
sc_SoftwareWrapEarly(l9_197,ivec2(SC_SOFTWARE_WRAP_MODE_U_screenTexture,SC_SOFTWARE_WRAP_MODE_V_screenTexture).y);
float l9_198=l9_197;
vec2 l9_199;
float l9_200;
#if (SC_USE_UV_MIN_MAX_screenTexture)
{
bool l9_201;
#if (SC_USE_CLAMP_TO_BORDER_screenTexture)
{
l9_201=ivec2(SC_SOFTWARE_WRAP_MODE_U_screenTexture,SC_SOFTWARE_WRAP_MODE_V_screenTexture).x==3;
}
#else
{
l9_201=(int(SC_USE_CLAMP_TO_BORDER_screenTexture)!=0);
}
#endif
float l9_202=l9_196;
float l9_203=1.0;
sc_ClampUV(l9_202,screenTextureUvMinMax.x,screenTextureUvMinMax.z,l9_201,l9_203);
float l9_204=l9_202;
float l9_205=l9_203;
bool l9_206;
#if (SC_USE_CLAMP_TO_BORDER_screenTexture)
{
l9_206=ivec2(SC_SOFTWARE_WRAP_MODE_U_screenTexture,SC_SOFTWARE_WRAP_MODE_V_screenTexture).y==3;
}
#else
{
l9_206=(int(SC_USE_CLAMP_TO_BORDER_screenTexture)!=0);
}
#endif
float l9_207=l9_198;
float l9_208=l9_205;
sc_ClampUV(l9_207,screenTextureUvMinMax.y,screenTextureUvMinMax.w,l9_206,l9_208);
l9_200=l9_208;
l9_199=vec2(l9_204,l9_207);
}
#else
{
l9_200=1.0;
l9_199=vec2(l9_196,l9_198);
}
#endif
vec2 l9_209=sc_TransformUV(l9_199,(int(SC_USE_UV_TRANSFORM_screenTexture)!=0),screenTextureTransform);
float l9_210=l9_209.x;
float l9_211=l9_200;
sc_SoftwareWrapLate(l9_210,ivec2(SC_SOFTWARE_WRAP_MODE_U_screenTexture,SC_SOFTWARE_WRAP_MODE_V_screenTexture).x,l9_194,l9_211);
float l9_212=l9_209.y;
float l9_213=l9_211;
sc_SoftwareWrapLate(l9_212,ivec2(SC_SOFTWARE_WRAP_MODE_U_screenTexture,SC_SOFTWARE_WRAP_MODE_V_screenTexture).y,l9_194,l9_213);
float l9_214=l9_213;
vec3 l9_215=sc_SamplingCoordsViewToGlobal(vec2(l9_210,l9_212),screenTextureLayout,screenTextureGetStereoViewIndex());
vec4 l9_216=texture(screenTextureArrSC,l9_215,0.0);
vec4 l9_217;
#if (SC_USE_CLAMP_TO_BORDER_screenTexture)
{
l9_217=mix(screenTextureBorderColor,l9_216,vec4(l9_214));
}
#else
{
l9_217=l9_216;
}
#endif
l9_193=l9_217;
}
#else
{
bool l9_218=(int(SC_USE_CLAMP_TO_BORDER_screenTexture)!=0)&&(!(int(SC_USE_UV_MIN_MAX_screenTexture)!=0));
float l9_219=l9_192.x;
sc_SoftwareWrapEarly(l9_219,ivec2(SC_SOFTWARE_WRAP_MODE_U_screenTexture,SC_SOFTWARE_WRAP_MODE_V_screenTexture).x);
float l9_220=l9_219;
float l9_221=l9_192.y;
sc_SoftwareWrapEarly(l9_221,ivec2(SC_SOFTWARE_WRAP_MODE_U_screenTexture,SC_SOFTWARE_WRAP_MODE_V_screenTexture).y);
float l9_222=l9_221;
vec2 l9_223;
float l9_224;
#if (SC_USE_UV_MIN_MAX_screenTexture)
{
bool l9_225;
#if (SC_USE_CLAMP_TO_BORDER_screenTexture)
{
l9_225=ivec2(SC_SOFTWARE_WRAP_MODE_U_screenTexture,SC_SOFTWARE_WRAP_MODE_V_screenTexture).x==3;
}
#else
{
l9_225=(int(SC_USE_CLAMP_TO_BORDER_screenTexture)!=0);
}
#endif
float l9_226=l9_220;
float l9_227=1.0;
sc_ClampUV(l9_226,screenTextureUvMinMax.x,screenTextureUvMinMax.z,l9_225,l9_227);
float l9_228=l9_226;
float l9_229=l9_227;
bool l9_230;
#if (SC_USE_CLAMP_TO_BORDER_screenTexture)
{
l9_230=ivec2(SC_SOFTWARE_WRAP_MODE_U_screenTexture,SC_SOFTWARE_WRAP_MODE_V_screenTexture).y==3;
}
#else
{
l9_230=(int(SC_USE_CLAMP_TO_BORDER_screenTexture)!=0);
}
#endif
float l9_231=l9_222;
float l9_232=l9_229;
sc_ClampUV(l9_231,screenTextureUvMinMax.y,screenTextureUvMinMax.w,l9_230,l9_232);
l9_224=l9_232;
l9_223=vec2(l9_228,l9_231);
}
#else
{
l9_224=1.0;
l9_223=vec2(l9_220,l9_222);
}
#endif
vec2 l9_233=sc_TransformUV(l9_223,(int(SC_USE_UV_TRANSFORM_screenTexture)!=0),screenTextureTransform);
float l9_234=l9_233.x;
float l9_235=l9_224;
sc_SoftwareWrapLate(l9_234,ivec2(SC_SOFTWARE_WRAP_MODE_U_screenTexture,SC_SOFTWARE_WRAP_MODE_V_screenTexture).x,l9_218,l9_235);
float l9_236=l9_233.y;
float l9_237=l9_235;
sc_SoftwareWrapLate(l9_236,ivec2(SC_SOFTWARE_WRAP_MODE_U_screenTexture,SC_SOFTWARE_WRAP_MODE_V_screenTexture).y,l9_218,l9_237);
float l9_238=l9_237;
vec3 l9_239=sc_SamplingCoordsViewToGlobal(vec2(l9_234,l9_236),screenTextureLayout,screenTextureGetStereoViewIndex());
vec4 l9_240=texture(screenTexture,l9_239.xy,0.0);
vec4 l9_241;
#if (SC_USE_CLAMP_TO_BORDER_screenTexture)
{
l9_241=mix(screenTextureBorderColor,l9_240,vec4(l9_238));
}
#else
{
l9_241=l9_240;
}
#endif
l9_193=l9_241;
}
#endif
vec3 l9_242=ssSRGB_to_Linear(l9_193.xyz);
float l9_243;
#if (ENABLE_TRANSMISSION_TEX)
{
vec2 l9_244=N3_getUV(Tweak_N30);
vec2 l9_245;
if ((int(ENABLE_TEXTURE_TRANSFORM)!=0)&&(int(ENABLE_TRANSMISSION_TEXTURE_TRANSFORM)!=0))
{
l9_245=N3_uvTransform(l9_244,transmissionTexture_offset,transmissionTexture_scale,transmissionTexture_rotation);
}
else
{
l9_245=l9_244;
}
vec4 l9_246;
#if (transmissionTextureLayout==2)
{
bool l9_247=(int(SC_USE_CLAMP_TO_BORDER_transmissionTexture)!=0)&&(!(int(SC_USE_UV_MIN_MAX_transmissionTexture)!=0));
float l9_248=l9_245.x;
sc_SoftwareWrapEarly(l9_248,ivec2(SC_SOFTWARE_WRAP_MODE_U_transmissionTexture,SC_SOFTWARE_WRAP_MODE_V_transmissionTexture).x);
float l9_249=l9_248;
float l9_250=l9_245.y;
sc_SoftwareWrapEarly(l9_250,ivec2(SC_SOFTWARE_WRAP_MODE_U_transmissionTexture,SC_SOFTWARE_WRAP_MODE_V_transmissionTexture).y);
float l9_251=l9_250;
vec2 l9_252;
float l9_253;
#if (SC_USE_UV_MIN_MAX_transmissionTexture)
{
bool l9_254;
#if (SC_USE_CLAMP_TO_BORDER_transmissionTexture)
{
l9_254=ivec2(SC_SOFTWARE_WRAP_MODE_U_transmissionTexture,SC_SOFTWARE_WRAP_MODE_V_transmissionTexture).x==3;
}
#else
{
l9_254=(int(SC_USE_CLAMP_TO_BORDER_transmissionTexture)!=0);
}
#endif
float l9_255=l9_249;
float l9_256=1.0;
sc_ClampUV(l9_255,transmissionTextureUvMinMax.x,transmissionTextureUvMinMax.z,l9_254,l9_256);
float l9_257=l9_255;
float l9_258=l9_256;
bool l9_259;
#if (SC_USE_CLAMP_TO_BORDER_transmissionTexture)
{
l9_259=ivec2(SC_SOFTWARE_WRAP_MODE_U_transmissionTexture,SC_SOFTWARE_WRAP_MODE_V_transmissionTexture).y==3;
}
#else
{
l9_259=(int(SC_USE_CLAMP_TO_BORDER_transmissionTexture)!=0);
}
#endif
float l9_260=l9_251;
float l9_261=l9_258;
sc_ClampUV(l9_260,transmissionTextureUvMinMax.y,transmissionTextureUvMinMax.w,l9_259,l9_261);
l9_253=l9_261;
l9_252=vec2(l9_257,l9_260);
}
#else
{
l9_253=1.0;
l9_252=vec2(l9_249,l9_251);
}
#endif
vec2 l9_262=sc_TransformUV(l9_252,(int(SC_USE_UV_TRANSFORM_transmissionTexture)!=0),transmissionTextureTransform);
float l9_263=l9_262.x;
float l9_264=l9_253;
sc_SoftwareWrapLate(l9_263,ivec2(SC_SOFTWARE_WRAP_MODE_U_transmissionTexture,SC_SOFTWARE_WRAP_MODE_V_transmissionTexture).x,l9_247,l9_264);
float l9_265=l9_262.y;
float l9_266=l9_264;
sc_SoftwareWrapLate(l9_265,ivec2(SC_SOFTWARE_WRAP_MODE_U_transmissionTexture,SC_SOFTWARE_WRAP_MODE_V_transmissionTexture).y,l9_247,l9_266);
float l9_267=l9_266;
vec3 l9_268=sc_SamplingCoordsViewToGlobal(vec2(l9_263,l9_265),transmissionTextureLayout,transmissionTextureGetStereoViewIndex());
vec4 l9_269=texture(transmissionTextureArrSC,l9_268,0.0);
vec4 l9_270;
#if (SC_USE_CLAMP_TO_BORDER_transmissionTexture)
{
l9_270=mix(transmissionTextureBorderColor,l9_269,vec4(l9_267));
}
#else
{
l9_270=l9_269;
}
#endif
l9_246=l9_270;
}
#else
{
bool l9_271=(int(SC_USE_CLAMP_TO_BORDER_transmissionTexture)!=0)&&(!(int(SC_USE_UV_MIN_MAX_transmissionTexture)!=0));
float l9_272=l9_245.x;
sc_SoftwareWrapEarly(l9_272,ivec2(SC_SOFTWARE_WRAP_MODE_U_transmissionTexture,SC_SOFTWARE_WRAP_MODE_V_transmissionTexture).x);
float l9_273=l9_272;
float l9_274=l9_245.y;
sc_SoftwareWrapEarly(l9_274,ivec2(SC_SOFTWARE_WRAP_MODE_U_transmissionTexture,SC_SOFTWARE_WRAP_MODE_V_transmissionTexture).y);
float l9_275=l9_274;
vec2 l9_276;
float l9_277;
#if (SC_USE_UV_MIN_MAX_transmissionTexture)
{
bool l9_278;
#if (SC_USE_CLAMP_TO_BORDER_transmissionTexture)
{
l9_278=ivec2(SC_SOFTWARE_WRAP_MODE_U_transmissionTexture,SC_SOFTWARE_WRAP_MODE_V_transmissionTexture).x==3;
}
#else
{
l9_278=(int(SC_USE_CLAMP_TO_BORDER_transmissionTexture)!=0);
}
#endif
float l9_279=l9_273;
float l9_280=1.0;
sc_ClampUV(l9_279,transmissionTextureUvMinMax.x,transmissionTextureUvMinMax.z,l9_278,l9_280);
float l9_281=l9_279;
float l9_282=l9_280;
bool l9_283;
#if (SC_USE_CLAMP_TO_BORDER_transmissionTexture)
{
l9_283=ivec2(SC_SOFTWARE_WRAP_MODE_U_transmissionTexture,SC_SOFTWARE_WRAP_MODE_V_transmissionTexture).y==3;
}
#else
{
l9_283=(int(SC_USE_CLAMP_TO_BORDER_transmissionTexture)!=0);
}
#endif
float l9_284=l9_275;
float l9_285=l9_282;
sc_ClampUV(l9_284,transmissionTextureUvMinMax.y,transmissionTextureUvMinMax.w,l9_283,l9_285);
l9_277=l9_285;
l9_276=vec2(l9_281,l9_284);
}
#else
{
l9_277=1.0;
l9_276=vec2(l9_273,l9_275);
}
#endif
vec2 l9_286=sc_TransformUV(l9_276,(int(SC_USE_UV_TRANSFORM_transmissionTexture)!=0),transmissionTextureTransform);
float l9_287=l9_286.x;
float l9_288=l9_277;
sc_SoftwareWrapLate(l9_287,ivec2(SC_SOFTWARE_WRAP_MODE_U_transmissionTexture,SC_SOFTWARE_WRAP_MODE_V_transmissionTexture).x,l9_271,l9_288);
float l9_289=l9_286.y;
float l9_290=l9_288;
sc_SoftwareWrapLate(l9_289,ivec2(SC_SOFTWARE_WRAP_MODE_U_transmissionTexture,SC_SOFTWARE_WRAP_MODE_V_transmissionTexture).y,l9_271,l9_290);
float l9_291=l9_290;
vec3 l9_292=sc_SamplingCoordsViewToGlobal(vec2(l9_287,l9_289),transmissionTextureLayout,transmissionTextureGetStereoViewIndex());
vec4 l9_293=texture(transmissionTexture,l9_292.xy,0.0);
vec4 l9_294;
#if (SC_USE_CLAMP_TO_BORDER_transmissionTexture)
{
l9_294=mix(transmissionTextureBorderColor,l9_293,vec4(l9_291));
}
#else
{
l9_294=l9_293;
}
#endif
l9_246=l9_294;
}
#endif
l9_243=l9_246.x;
}
#else
{
l9_243=1.0;
}
#endif
vec3 l9_295=vec3(l9_243*transmissionFactor);
vec3 l9_296=vec3(l9_133);
l9_191=l9_242;
l9_190=mix(mix(vec3(0.0),l9_26.xyz,l9_295)*l9_242,vec3(0.0),l9_296)+l9_27;
l9_189=mix(mix(l9_26.xyz,vec3(0.0),l9_295),l9_26.xyz,l9_296);
}
#else
{
l9_191=vec3(0.0);
l9_190=l9_27;
l9_189=l9_26.xyz;
}
#endif
vec3 l9_297=ssLinear_to_SRGB(l9_189);
float l9_298;
#if (SC_DEVICE_CLASS>=2)
{
l9_298=pow(l9_26.w,0.45454544);
}
#else
{
l9_298=sqrt(l9_26.w);
}
#endif
vec3 l9_299=ssLinear_to_SRGB(l9_190);
vec4 l9_300;
#if (ENABLE_SHEEN)
{
vec3 l9_301;
#if (ENABLE_SHEEN_COLOR_TEX)
{
vec2 l9_302=N3_getUV(Tweak_N32);
vec2 l9_303;
if ((int(ENABLE_TEXTURE_TRANSFORM)!=0)&&(int(ENABLE_SHEEN_COLOR_TEXTURE_TRANSFORM)!=0))
{
l9_303=N3_uvTransform(l9_302,sheenColorTexture_offset,sheenColorTexture_scale,sheenColorTexture_rotation);
}
else
{
l9_303=l9_302;
}
vec4 l9_304;
#if (sheenColorTextureLayout==2)
{
bool l9_305=(int(SC_USE_CLAMP_TO_BORDER_sheenColorTexture)!=0)&&(!(int(SC_USE_UV_MIN_MAX_sheenColorTexture)!=0));
float l9_306=l9_303.x;
sc_SoftwareWrapEarly(l9_306,ivec2(SC_SOFTWARE_WRAP_MODE_U_sheenColorTexture,SC_SOFTWARE_WRAP_MODE_V_sheenColorTexture).x);
float l9_307=l9_306;
float l9_308=l9_303.y;
sc_SoftwareWrapEarly(l9_308,ivec2(SC_SOFTWARE_WRAP_MODE_U_sheenColorTexture,SC_SOFTWARE_WRAP_MODE_V_sheenColorTexture).y);
float l9_309=l9_308;
vec2 l9_310;
float l9_311;
#if (SC_USE_UV_MIN_MAX_sheenColorTexture)
{
bool l9_312;
#if (SC_USE_CLAMP_TO_BORDER_sheenColorTexture)
{
l9_312=ivec2(SC_SOFTWARE_WRAP_MODE_U_sheenColorTexture,SC_SOFTWARE_WRAP_MODE_V_sheenColorTexture).x==3;
}
#else
{
l9_312=(int(SC_USE_CLAMP_TO_BORDER_sheenColorTexture)!=0);
}
#endif
float l9_313=l9_307;
float l9_314=1.0;
sc_ClampUV(l9_313,sheenColorTextureUvMinMax.x,sheenColorTextureUvMinMax.z,l9_312,l9_314);
float l9_315=l9_313;
float l9_316=l9_314;
bool l9_317;
#if (SC_USE_CLAMP_TO_BORDER_sheenColorTexture)
{
l9_317=ivec2(SC_SOFTWARE_WRAP_MODE_U_sheenColorTexture,SC_SOFTWARE_WRAP_MODE_V_sheenColorTexture).y==3;
}
#else
{
l9_317=(int(SC_USE_CLAMP_TO_BORDER_sheenColorTexture)!=0);
}
#endif
float l9_318=l9_309;
float l9_319=l9_316;
sc_ClampUV(l9_318,sheenColorTextureUvMinMax.y,sheenColorTextureUvMinMax.w,l9_317,l9_319);
l9_311=l9_319;
l9_310=vec2(l9_315,l9_318);
}
#else
{
l9_311=1.0;
l9_310=vec2(l9_307,l9_309);
}
#endif
vec2 l9_320=sc_TransformUV(l9_310,(int(SC_USE_UV_TRANSFORM_sheenColorTexture)!=0),sheenColorTextureTransform);
float l9_321=l9_320.x;
float l9_322=l9_311;
sc_SoftwareWrapLate(l9_321,ivec2(SC_SOFTWARE_WRAP_MODE_U_sheenColorTexture,SC_SOFTWARE_WRAP_MODE_V_sheenColorTexture).x,l9_305,l9_322);
float l9_323=l9_320.y;
float l9_324=l9_322;
sc_SoftwareWrapLate(l9_323,ivec2(SC_SOFTWARE_WRAP_MODE_U_sheenColorTexture,SC_SOFTWARE_WRAP_MODE_V_sheenColorTexture).y,l9_305,l9_324);
float l9_325=l9_324;
vec3 l9_326=sc_SamplingCoordsViewToGlobal(vec2(l9_321,l9_323),sheenColorTextureLayout,sheenColorTextureGetStereoViewIndex());
vec4 l9_327=texture(sheenColorTextureArrSC,l9_326,0.0);
vec4 l9_328;
#if (SC_USE_CLAMP_TO_BORDER_sheenColorTexture)
{
l9_328=mix(sheenColorTextureBorderColor,l9_327,vec4(l9_325));
}
#else
{
l9_328=l9_327;
}
#endif
l9_304=l9_328;
}
#else
{
bool l9_329=(int(SC_USE_CLAMP_TO_BORDER_sheenColorTexture)!=0)&&(!(int(SC_USE_UV_MIN_MAX_sheenColorTexture)!=0));
float l9_330=l9_303.x;
sc_SoftwareWrapEarly(l9_330,ivec2(SC_SOFTWARE_WRAP_MODE_U_sheenColorTexture,SC_SOFTWARE_WRAP_MODE_V_sheenColorTexture).x);
float l9_331=l9_330;
float l9_332=l9_303.y;
sc_SoftwareWrapEarly(l9_332,ivec2(SC_SOFTWARE_WRAP_MODE_U_sheenColorTexture,SC_SOFTWARE_WRAP_MODE_V_sheenColorTexture).y);
float l9_333=l9_332;
vec2 l9_334;
float l9_335;
#if (SC_USE_UV_MIN_MAX_sheenColorTexture)
{
bool l9_336;
#if (SC_USE_CLAMP_TO_BORDER_sheenColorTexture)
{
l9_336=ivec2(SC_SOFTWARE_WRAP_MODE_U_sheenColorTexture,SC_SOFTWARE_WRAP_MODE_V_sheenColorTexture).x==3;
}
#else
{
l9_336=(int(SC_USE_CLAMP_TO_BORDER_sheenColorTexture)!=0);
}
#endif
float l9_337=l9_331;
float l9_338=1.0;
sc_ClampUV(l9_337,sheenColorTextureUvMinMax.x,sheenColorTextureUvMinMax.z,l9_336,l9_338);
float l9_339=l9_337;
float l9_340=l9_338;
bool l9_341;
#if (SC_USE_CLAMP_TO_BORDER_sheenColorTexture)
{
l9_341=ivec2(SC_SOFTWARE_WRAP_MODE_U_sheenColorTexture,SC_SOFTWARE_WRAP_MODE_V_sheenColorTexture).y==3;
}
#else
{
l9_341=(int(SC_USE_CLAMP_TO_BORDER_sheenColorTexture)!=0);
}
#endif
float l9_342=l9_333;
float l9_343=l9_340;
sc_ClampUV(l9_342,sheenColorTextureUvMinMax.y,sheenColorTextureUvMinMax.w,l9_341,l9_343);
l9_335=l9_343;
l9_334=vec2(l9_339,l9_342);
}
#else
{
l9_335=1.0;
l9_334=vec2(l9_331,l9_333);
}
#endif
vec2 l9_344=sc_TransformUV(l9_334,(int(SC_USE_UV_TRANSFORM_sheenColorTexture)!=0),sheenColorTextureTransform);
float l9_345=l9_344.x;
float l9_346=l9_335;
sc_SoftwareWrapLate(l9_345,ivec2(SC_SOFTWARE_WRAP_MODE_U_sheenColorTexture,SC_SOFTWARE_WRAP_MODE_V_sheenColorTexture).x,l9_329,l9_346);
float l9_347=l9_344.y;
float l9_348=l9_346;
sc_SoftwareWrapLate(l9_347,ivec2(SC_SOFTWARE_WRAP_MODE_U_sheenColorTexture,SC_SOFTWARE_WRAP_MODE_V_sheenColorTexture).y,l9_329,l9_348);
float l9_349=l9_348;
vec3 l9_350=sc_SamplingCoordsViewToGlobal(vec2(l9_345,l9_347),sheenColorTextureLayout,sheenColorTextureGetStereoViewIndex());
vec4 l9_351=texture(sheenColorTexture,l9_350.xy,0.0);
vec4 l9_352;
#if (SC_USE_CLAMP_TO_BORDER_sheenColorTexture)
{
l9_352=mix(sheenColorTextureBorderColor,l9_351,vec4(l9_349));
}
#else
{
l9_352=l9_351;
}
#endif
l9_304=l9_352;
}
#endif
l9_301=sheenColorFactor*ssSRGB_to_Linear(l9_304.xyz);
}
#else
{
l9_301=sheenColorFactor;
}
#endif
float l9_353;
#if (ENABLE_SHEEN_ROUGHNESS_TEX)
{
vec2 l9_354=N3_getUV(Tweak_N37);
vec2 l9_355;
if ((int(ENABLE_TEXTURE_TRANSFORM)!=0)&&(int(ENABLE_SHEEN_ROUGHNESS_TEXTURE_TRANSFORM)!=0))
{
l9_355=N3_uvTransform(l9_354,sheenRoughnessTexture_offset,sheenRoughnessTexture_scale,sheenRoughnessTexture_rotation);
}
else
{
l9_355=l9_354;
}
vec4 l9_356;
#if (sheenRoughnessTextureLayout==2)
{
bool l9_357=(int(SC_USE_CLAMP_TO_BORDER_sheenRoughnessTexture)!=0)&&(!(int(SC_USE_UV_MIN_MAX_sheenRoughnessTexture)!=0));
float l9_358=l9_355.x;
sc_SoftwareWrapEarly(l9_358,ivec2(SC_SOFTWARE_WRAP_MODE_U_sheenRoughnessTexture,SC_SOFTWARE_WRAP_MODE_V_sheenRoughnessTexture).x);
float l9_359=l9_358;
float l9_360=l9_355.y;
sc_SoftwareWrapEarly(l9_360,ivec2(SC_SOFTWARE_WRAP_MODE_U_sheenRoughnessTexture,SC_SOFTWARE_WRAP_MODE_V_sheenRoughnessTexture).y);
float l9_361=l9_360;
vec2 l9_362;
float l9_363;
#if (SC_USE_UV_MIN_MAX_sheenRoughnessTexture)
{
bool l9_364;
#if (SC_USE_CLAMP_TO_BORDER_sheenRoughnessTexture)
{
l9_364=ivec2(SC_SOFTWARE_WRAP_MODE_U_sheenRoughnessTexture,SC_SOFTWARE_WRAP_MODE_V_sheenRoughnessTexture).x==3;
}
#else
{
l9_364=(int(SC_USE_CLAMP_TO_BORDER_sheenRoughnessTexture)!=0);
}
#endif
float l9_365=l9_359;
float l9_366=1.0;
sc_ClampUV(l9_365,sheenRoughnessTextureUvMinMax.x,sheenRoughnessTextureUvMinMax.z,l9_364,l9_366);
float l9_367=l9_365;
float l9_368=l9_366;
bool l9_369;
#if (SC_USE_CLAMP_TO_BORDER_sheenRoughnessTexture)
{
l9_369=ivec2(SC_SOFTWARE_WRAP_MODE_U_sheenRoughnessTexture,SC_SOFTWARE_WRAP_MODE_V_sheenRoughnessTexture).y==3;
}
#else
{
l9_369=(int(SC_USE_CLAMP_TO_BORDER_sheenRoughnessTexture)!=0);
}
#endif
float l9_370=l9_361;
float l9_371=l9_368;
sc_ClampUV(l9_370,sheenRoughnessTextureUvMinMax.y,sheenRoughnessTextureUvMinMax.w,l9_369,l9_371);
l9_363=l9_371;
l9_362=vec2(l9_367,l9_370);
}
#else
{
l9_363=1.0;
l9_362=vec2(l9_359,l9_361);
}
#endif
vec2 l9_372=sc_TransformUV(l9_362,(int(SC_USE_UV_TRANSFORM_sheenRoughnessTexture)!=0),sheenRoughnessTextureTransform);
float l9_373=l9_372.x;
float l9_374=l9_363;
sc_SoftwareWrapLate(l9_373,ivec2(SC_SOFTWARE_WRAP_MODE_U_sheenRoughnessTexture,SC_SOFTWARE_WRAP_MODE_V_sheenRoughnessTexture).x,l9_357,l9_374);
float l9_375=l9_372.y;
float l9_376=l9_374;
sc_SoftwareWrapLate(l9_375,ivec2(SC_SOFTWARE_WRAP_MODE_U_sheenRoughnessTexture,SC_SOFTWARE_WRAP_MODE_V_sheenRoughnessTexture).y,l9_357,l9_376);
float l9_377=l9_376;
vec3 l9_378=sc_SamplingCoordsViewToGlobal(vec2(l9_373,l9_375),sheenRoughnessTextureLayout,sheenRoughnessTextureGetStereoViewIndex());
vec4 l9_379=texture(sheenRoughnessTextureArrSC,l9_378,0.0);
vec4 l9_380;
#if (SC_USE_CLAMP_TO_BORDER_sheenRoughnessTexture)
{
l9_380=mix(sheenRoughnessTextureBorderColor,l9_379,vec4(l9_377));
}
#else
{
l9_380=l9_379;
}
#endif
l9_356=l9_380;
}
#else
{
bool l9_381=(int(SC_USE_CLAMP_TO_BORDER_sheenRoughnessTexture)!=0)&&(!(int(SC_USE_UV_MIN_MAX_sheenRoughnessTexture)!=0));
float l9_382=l9_355.x;
sc_SoftwareWrapEarly(l9_382,ivec2(SC_SOFTWARE_WRAP_MODE_U_sheenRoughnessTexture,SC_SOFTWARE_WRAP_MODE_V_sheenRoughnessTexture).x);
float l9_383=l9_382;
float l9_384=l9_355.y;
sc_SoftwareWrapEarly(l9_384,ivec2(SC_SOFTWARE_WRAP_MODE_U_sheenRoughnessTexture,SC_SOFTWARE_WRAP_MODE_V_sheenRoughnessTexture).y);
float l9_385=l9_384;
vec2 l9_386;
float l9_387;
#if (SC_USE_UV_MIN_MAX_sheenRoughnessTexture)
{
bool l9_388;
#if (SC_USE_CLAMP_TO_BORDER_sheenRoughnessTexture)
{
l9_388=ivec2(SC_SOFTWARE_WRAP_MODE_U_sheenRoughnessTexture,SC_SOFTWARE_WRAP_MODE_V_sheenRoughnessTexture).x==3;
}
#else
{
l9_388=(int(SC_USE_CLAMP_TO_BORDER_sheenRoughnessTexture)!=0);
}
#endif
float l9_389=l9_383;
float l9_390=1.0;
sc_ClampUV(l9_389,sheenRoughnessTextureUvMinMax.x,sheenRoughnessTextureUvMinMax.z,l9_388,l9_390);
float l9_391=l9_389;
float l9_392=l9_390;
bool l9_393;
#if (SC_USE_CLAMP_TO_BORDER_sheenRoughnessTexture)
{
l9_393=ivec2(SC_SOFTWARE_WRAP_MODE_U_sheenRoughnessTexture,SC_SOFTWARE_WRAP_MODE_V_sheenRoughnessTexture).y==3;
}
#else
{
l9_393=(int(SC_USE_CLAMP_TO_BORDER_sheenRoughnessTexture)!=0);
}
#endif
float l9_394=l9_385;
float l9_395=l9_392;
sc_ClampUV(l9_394,sheenRoughnessTextureUvMinMax.y,sheenRoughnessTextureUvMinMax.w,l9_393,l9_395);
l9_387=l9_395;
l9_386=vec2(l9_391,l9_394);
}
#else
{
l9_387=1.0;
l9_386=vec2(l9_383,l9_385);
}
#endif
vec2 l9_396=sc_TransformUV(l9_386,(int(SC_USE_UV_TRANSFORM_sheenRoughnessTexture)!=0),sheenRoughnessTextureTransform);
float l9_397=l9_396.x;
float l9_398=l9_387;
sc_SoftwareWrapLate(l9_397,ivec2(SC_SOFTWARE_WRAP_MODE_U_sheenRoughnessTexture,SC_SOFTWARE_WRAP_MODE_V_sheenRoughnessTexture).x,l9_381,l9_398);
float l9_399=l9_396.y;
float l9_400=l9_398;
sc_SoftwareWrapLate(l9_399,ivec2(SC_SOFTWARE_WRAP_MODE_U_sheenRoughnessTexture,SC_SOFTWARE_WRAP_MODE_V_sheenRoughnessTexture).y,l9_381,l9_400);
float l9_401=l9_400;
vec3 l9_402=sc_SamplingCoordsViewToGlobal(vec2(l9_397,l9_399),sheenRoughnessTextureLayout,sheenRoughnessTextureGetStereoViewIndex());
vec4 l9_403=texture(sheenRoughnessTexture,l9_402.xy,0.0);
vec4 l9_404;
#if (SC_USE_CLAMP_TO_BORDER_sheenRoughnessTexture)
{
l9_404=mix(sheenRoughnessTextureBorderColor,l9_403,vec4(l9_401));
}
#else
{
l9_404=l9_403;
}
#endif
l9_356=l9_404;
}
#endif
l9_353=sheenRoughnessFactor*ssSRGB_to_Linear(l9_356.w);
}
#else
{
l9_353=sheenRoughnessFactor;
}
#endif
float l9_405=max(l9_353,9.9999997e-05);
vec3 l9_406=tempGlobals.ViewDirWS;
float l9_407=dot(l9_81,l9_406);
float l9_408=max(clamp(l9_407,0.0,1.0),9.9999997e-05);
float l9_409=l9_405*l9_405;
vec3 l9_410=reflect(-l9_406,l9_81);
bool l9_411=l9_405<0.25;
float l9_412;
if (l9_411)
{
l9_412=(((-339.20001)*l9_409)+(161.39999*l9_405))-25.9;
}
else
{
l9_412=(((-8.4799995)*l9_409)+(14.3*l9_405))-9.9499998;
}
float l9_413;
if (l9_411)
{
l9_413=((44.0*l9_409)-(23.700001*l9_405))+3.26;
}
else
{
l9_413=((1.97*l9_409)-(3.27*l9_405))+0.72000003;
}
float l9_414=l9_412*l9_408;
float l9_415=l9_414+l9_413;
float l9_416;
if (l9_411)
{
l9_416=0.0;
}
else
{
l9_416=0.1*(l9_405-0.25);
}
float l9_417=exp(l9_415)+l9_416;
vec3 l9_418=sampleSpecularEnvTextureLod(normalize(l9_410),3.0+((((l9_405*4.0)-0.0)*2.0)/5.000001));
vec3 l9_419=((l9_418*sc_EnvmapExposure)+vec3(1e-06))*l9_301;
vec3 l9_420=(vec3(0.0)+(l9_419*clamp(l9_417*3.1415927,0.0,1.0))).xyz;
vec3 l9_421;
if (sc_DirectionalLightsCount>0)
{
vec3 l9_422;
l9_422=vec3(0.0);
vec3 l9_423;
int l9_424=0;
bool l9_425;
for (int snapLoopIndex=0; snapLoopIndex==0; snapLoopIndex+=0)
{
l9_425=l9_424<sc_DirectionalLightsCount;
if (l9_425)
{
vec3 l9_426;
if (l9_425)
{
l9_426=sc_DirectionalLights[l9_424].color.xyz;
}
else
{
l9_426=vec3(0.0);
}
float l9_427;
if (l9_425)
{
l9_427=sc_DirectionalLights[l9_424].color.w;
}
else
{
l9_427=0.0;
}
vec3 l9_428=l9_426*l9_427;
vec3 l9_429;
if (l9_425)
{
l9_429=-sc_DirectionalLights[l9_424].direction;
}
else
{
l9_429=vec3(0.0);
}
vec3 l9_430=normalize(-l9_429);
float l9_431=clamp(dot(l9_81,l9_430),0.0,1.0);
l9_423=l9_422+(((((l9_428*3.1415901)*l9_301)*N3_charlieD(l9_409,clamp(dot(l9_81,normalize(l9_430+l9_406)),0.0,1.0)))*(1.0/(4.0*((l9_431+l9_408)-(l9_431*l9_408)))))*l9_431);
l9_422=l9_423;
l9_424++;
continue;
}
else
{
break;
}
}
l9_421=l9_422;
}
else
{
l9_421=vec3(0.0);
}
vec3 l9_432;
if (sc_PointLightsCount>0)
{
vec3 l9_433;
l9_433=l9_421;
vec3 l9_434;
int l9_435=0;
bool l9_436;
for (int snapLoopIndex=0; snapLoopIndex==0; snapLoopIndex+=0)
{
l9_436=l9_435<sc_PointLightsCount;
if (l9_436)
{
vec3 l9_437;
if (l9_436)
{
l9_437=sc_PointLights[l9_435].color.xyz;
}
else
{
l9_437=vec3(0.0);
}
float l9_438;
if (l9_436)
{
l9_438=sc_PointLights[l9_435].color.w;
}
else
{
l9_438=0.0;
}
vec3 l9_439=l9_437*l9_438;
vec3 l9_440;
if (l9_436)
{
l9_440=sc_PointLights[l9_435].position;
}
else
{
l9_440=vec3(0.0);
}
vec3 l9_441=normalize(l9_440-tempGlobals.SurfacePosition_WorldSpace);
float l9_442=clamp(dot(l9_81,l9_441),0.0,1.0);
l9_434=l9_433+(((((l9_439*3.1415901)*l9_301)*N3_charlieD(l9_409,clamp(dot(l9_81,normalize(l9_441+l9_406)),0.0,1.0)))*(1.0/(4.0*((l9_442+l9_408)-(l9_442*l9_408)))))*l9_442);
l9_433=l9_434;
l9_435++;
continue;
}
else
{
break;
}
}
l9_432=l9_433;
}
else
{
l9_432=l9_421;
}
vec3 l9_443;
if (sc_AmbientLightsCount>0)
{
vec3 l9_444;
l9_444=l9_432;
vec3 l9_445;
int l9_446=0;
bool l9_447;
for (int snapLoopIndex=0; snapLoopIndex==0; snapLoopIndex+=0)
{
l9_447=l9_446<sc_AmbientLightsCount;
if (l9_447)
{
vec3 l9_448;
if (l9_447)
{
l9_448=sc_AmbientLights[l9_446].color;
}
else
{
l9_448=vec3(0.0);
}
float l9_449;
if (l9_447)
{
l9_449=sc_AmbientLights[l9_446].intensity;
}
else
{
l9_449=0.0;
}
l9_445=l9_444+(((l9_448*l9_449)/vec3(3.1415901))*l9_301);
l9_444=l9_445;
l9_446++;
continue;
}
else
{
break;
}
}
l9_443=l9_444;
}
else
{
l9_443=l9_432;
}
vec3 l9_450=mix(l9_420,l9_420*l9_134.xyz,vec3(l9_134.w)).xyz+l9_443;
vec4 l9_451=vec4(l9_450.x,l9_450.y,l9_450.z,vec4(0.0).w);
l9_451.w=1.0-(max(max(l9_301.x,l9_301.y),l9_301.z)*0.15700001);
l9_300=l9_451;
}
#else
{
l9_300=vec4(0.0);
}
#endif
float l9_452;
vec3 l9_453;
float l9_454;
#if (ENABLE_CLEARCOAT)
{
float l9_455;
#if (ENABLE_CLEARCOAT_TEX)
{
vec2 l9_456=N3_getUV(Tweak_N44);
vec2 l9_457;
if ((int(ENABLE_TEXTURE_TRANSFORM)!=0)&&(int(ENABLE_CLEARCOAT_TEXTURE_TRANSFORM)!=0))
{
l9_457=N3_uvTransform(l9_456,clearcoatTexture_offset,clearcoatTexture_scale,clearcoatTexture_rotation);
}
else
{
l9_457=l9_456;
}
vec4 l9_458;
#if (clearcoatTextureLayout==2)
{
bool l9_459=(int(SC_USE_CLAMP_TO_BORDER_clearcoatTexture)!=0)&&(!(int(SC_USE_UV_MIN_MAX_clearcoatTexture)!=0));
float l9_460=l9_457.x;
sc_SoftwareWrapEarly(l9_460,ivec2(SC_SOFTWARE_WRAP_MODE_U_clearcoatTexture,SC_SOFTWARE_WRAP_MODE_V_clearcoatTexture).x);
float l9_461=l9_460;
float l9_462=l9_457.y;
sc_SoftwareWrapEarly(l9_462,ivec2(SC_SOFTWARE_WRAP_MODE_U_clearcoatTexture,SC_SOFTWARE_WRAP_MODE_V_clearcoatTexture).y);
float l9_463=l9_462;
vec2 l9_464;
float l9_465;
#if (SC_USE_UV_MIN_MAX_clearcoatTexture)
{
bool l9_466;
#if (SC_USE_CLAMP_TO_BORDER_clearcoatTexture)
{
l9_466=ivec2(SC_SOFTWARE_WRAP_MODE_U_clearcoatTexture,SC_SOFTWARE_WRAP_MODE_V_clearcoatTexture).x==3;
}
#else
{
l9_466=(int(SC_USE_CLAMP_TO_BORDER_clearcoatTexture)!=0);
}
#endif
float l9_467=l9_461;
float l9_468=1.0;
sc_ClampUV(l9_467,clearcoatTextureUvMinMax.x,clearcoatTextureUvMinMax.z,l9_466,l9_468);
float l9_469=l9_467;
float l9_470=l9_468;
bool l9_471;
#if (SC_USE_CLAMP_TO_BORDER_clearcoatTexture)
{
l9_471=ivec2(SC_SOFTWARE_WRAP_MODE_U_clearcoatTexture,SC_SOFTWARE_WRAP_MODE_V_clearcoatTexture).y==3;
}
#else
{
l9_471=(int(SC_USE_CLAMP_TO_BORDER_clearcoatTexture)!=0);
}
#endif
float l9_472=l9_463;
float l9_473=l9_470;
sc_ClampUV(l9_472,clearcoatTextureUvMinMax.y,clearcoatTextureUvMinMax.w,l9_471,l9_473);
l9_465=l9_473;
l9_464=vec2(l9_469,l9_472);
}
#else
{
l9_465=1.0;
l9_464=vec2(l9_461,l9_463);
}
#endif
vec2 l9_474=sc_TransformUV(l9_464,(int(SC_USE_UV_TRANSFORM_clearcoatTexture)!=0),clearcoatTextureTransform);
float l9_475=l9_474.x;
float l9_476=l9_465;
sc_SoftwareWrapLate(l9_475,ivec2(SC_SOFTWARE_WRAP_MODE_U_clearcoatTexture,SC_SOFTWARE_WRAP_MODE_V_clearcoatTexture).x,l9_459,l9_476);
float l9_477=l9_474.y;
float l9_478=l9_476;
sc_SoftwareWrapLate(l9_477,ivec2(SC_SOFTWARE_WRAP_MODE_U_clearcoatTexture,SC_SOFTWARE_WRAP_MODE_V_clearcoatTexture).y,l9_459,l9_478);
float l9_479=l9_478;
vec3 l9_480=sc_SamplingCoordsViewToGlobal(vec2(l9_475,l9_477),clearcoatTextureLayout,clearcoatTextureGetStereoViewIndex());
vec4 l9_481=texture(clearcoatTextureArrSC,l9_480,0.0);
vec4 l9_482;
#if (SC_USE_CLAMP_TO_BORDER_clearcoatTexture)
{
l9_482=mix(clearcoatTextureBorderColor,l9_481,vec4(l9_479));
}
#else
{
l9_482=l9_481;
}
#endif
l9_458=l9_482;
}
#else
{
bool l9_483=(int(SC_USE_CLAMP_TO_BORDER_clearcoatTexture)!=0)&&(!(int(SC_USE_UV_MIN_MAX_clearcoatTexture)!=0));
float l9_484=l9_457.x;
sc_SoftwareWrapEarly(l9_484,ivec2(SC_SOFTWARE_WRAP_MODE_U_clearcoatTexture,SC_SOFTWARE_WRAP_MODE_V_clearcoatTexture).x);
float l9_485=l9_484;
float l9_486=l9_457.y;
sc_SoftwareWrapEarly(l9_486,ivec2(SC_SOFTWARE_WRAP_MODE_U_clearcoatTexture,SC_SOFTWARE_WRAP_MODE_V_clearcoatTexture).y);
float l9_487=l9_486;
vec2 l9_488;
float l9_489;
#if (SC_USE_UV_MIN_MAX_clearcoatTexture)
{
bool l9_490;
#if (SC_USE_CLAMP_TO_BORDER_clearcoatTexture)
{
l9_490=ivec2(SC_SOFTWARE_WRAP_MODE_U_clearcoatTexture,SC_SOFTWARE_WRAP_MODE_V_clearcoatTexture).x==3;
}
#else
{
l9_490=(int(SC_USE_CLAMP_TO_BORDER_clearcoatTexture)!=0);
}
#endif
float l9_491=l9_485;
float l9_492=1.0;
sc_ClampUV(l9_491,clearcoatTextureUvMinMax.x,clearcoatTextureUvMinMax.z,l9_490,l9_492);
float l9_493=l9_491;
float l9_494=l9_492;
bool l9_495;
#if (SC_USE_CLAMP_TO_BORDER_clearcoatTexture)
{
l9_495=ivec2(SC_SOFTWARE_WRAP_MODE_U_clearcoatTexture,SC_SOFTWARE_WRAP_MODE_V_clearcoatTexture).y==3;
}
#else
{
l9_495=(int(SC_USE_CLAMP_TO_BORDER_clearcoatTexture)!=0);
}
#endif
float l9_496=l9_487;
float l9_497=l9_494;
sc_ClampUV(l9_496,clearcoatTextureUvMinMax.y,clearcoatTextureUvMinMax.w,l9_495,l9_497);
l9_489=l9_497;
l9_488=vec2(l9_493,l9_496);
}
#else
{
l9_489=1.0;
l9_488=vec2(l9_485,l9_487);
}
#endif
vec2 l9_498=sc_TransformUV(l9_488,(int(SC_USE_UV_TRANSFORM_clearcoatTexture)!=0),clearcoatTextureTransform);
float l9_499=l9_498.x;
float l9_500=l9_489;
sc_SoftwareWrapLate(l9_499,ivec2(SC_SOFTWARE_WRAP_MODE_U_clearcoatTexture,SC_SOFTWARE_WRAP_MODE_V_clearcoatTexture).x,l9_483,l9_500);
float l9_501=l9_498.y;
float l9_502=l9_500;
sc_SoftwareWrapLate(l9_501,ivec2(SC_SOFTWARE_WRAP_MODE_U_clearcoatTexture,SC_SOFTWARE_WRAP_MODE_V_clearcoatTexture).y,l9_483,l9_502);
float l9_503=l9_502;
vec3 l9_504=sc_SamplingCoordsViewToGlobal(vec2(l9_499,l9_501),clearcoatTextureLayout,clearcoatTextureGetStereoViewIndex());
vec4 l9_505=texture(clearcoatTexture,l9_504.xy,0.0);
vec4 l9_506;
#if (SC_USE_CLAMP_TO_BORDER_clearcoatTexture)
{
l9_506=mix(clearcoatTextureBorderColor,l9_505,vec4(l9_503));
}
#else
{
l9_506=l9_505;
}
#endif
l9_458=l9_506;
}
#endif
l9_455=ssSRGB_to_Linear(l9_458.x);
}
#else
{
l9_455=1.0;
}
#endif
float l9_507=l9_455*clearcoatFactor;
float l9_508;
#if (ENABLE_CLEARCOAT_ROUGHNESS_TEX)
{
vec2 l9_509=N3_getUV(Tweak_N60);
vec2 l9_510;
if ((int(ENABLE_TEXTURE_TRANSFORM)!=0)&&(int(ENABLE_CLEARCOAT_ROUGHNESS_TEXTURE_TRANSFORM)!=0))
{
l9_510=N3_uvTransform(l9_509,clearcoatRoughnessTexture_offset,clearcoatRoughnessTexture_scale,clearcoatRoughnessTexture_rotation);
}
else
{
l9_510=l9_509;
}
vec4 l9_511;
#if (clearcoatRoughnessTextureLayout==2)
{
bool l9_512=(int(SC_USE_CLAMP_TO_BORDER_clearcoatRoughnessTexture)!=0)&&(!(int(SC_USE_UV_MIN_MAX_clearcoatRoughnessTexture)!=0));
float l9_513=l9_510.x;
sc_SoftwareWrapEarly(l9_513,ivec2(SC_SOFTWARE_WRAP_MODE_U_clearcoatRoughnessTexture,SC_SOFTWARE_WRAP_MODE_V_clearcoatRoughnessTexture).x);
float l9_514=l9_513;
float l9_515=l9_510.y;
sc_SoftwareWrapEarly(l9_515,ivec2(SC_SOFTWARE_WRAP_MODE_U_clearcoatRoughnessTexture,SC_SOFTWARE_WRAP_MODE_V_clearcoatRoughnessTexture).y);
float l9_516=l9_515;
vec2 l9_517;
float l9_518;
#if (SC_USE_UV_MIN_MAX_clearcoatRoughnessTexture)
{
bool l9_519;
#if (SC_USE_CLAMP_TO_BORDER_clearcoatRoughnessTexture)
{
l9_519=ivec2(SC_SOFTWARE_WRAP_MODE_U_clearcoatRoughnessTexture,SC_SOFTWARE_WRAP_MODE_V_clearcoatRoughnessTexture).x==3;
}
#else
{
l9_519=(int(SC_USE_CLAMP_TO_BORDER_clearcoatRoughnessTexture)!=0);
}
#endif
float l9_520=l9_514;
float l9_521=1.0;
sc_ClampUV(l9_520,clearcoatRoughnessTextureUvMinMax.x,clearcoatRoughnessTextureUvMinMax.z,l9_519,l9_521);
float l9_522=l9_520;
float l9_523=l9_521;
bool l9_524;
#if (SC_USE_CLAMP_TO_BORDER_clearcoatRoughnessTexture)
{
l9_524=ivec2(SC_SOFTWARE_WRAP_MODE_U_clearcoatRoughnessTexture,SC_SOFTWARE_WRAP_MODE_V_clearcoatRoughnessTexture).y==3;
}
#else
{
l9_524=(int(SC_USE_CLAMP_TO_BORDER_clearcoatRoughnessTexture)!=0);
}
#endif
float l9_525=l9_516;
float l9_526=l9_523;
sc_ClampUV(l9_525,clearcoatRoughnessTextureUvMinMax.y,clearcoatRoughnessTextureUvMinMax.w,l9_524,l9_526);
l9_518=l9_526;
l9_517=vec2(l9_522,l9_525);
}
#else
{
l9_518=1.0;
l9_517=vec2(l9_514,l9_516);
}
#endif
vec2 l9_527=sc_TransformUV(l9_517,(int(SC_USE_UV_TRANSFORM_clearcoatRoughnessTexture)!=0),clearcoatRoughnessTextureTransform);
float l9_528=l9_527.x;
float l9_529=l9_518;
sc_SoftwareWrapLate(l9_528,ivec2(SC_SOFTWARE_WRAP_MODE_U_clearcoatRoughnessTexture,SC_SOFTWARE_WRAP_MODE_V_clearcoatRoughnessTexture).x,l9_512,l9_529);
float l9_530=l9_527.y;
float l9_531=l9_529;
sc_SoftwareWrapLate(l9_530,ivec2(SC_SOFTWARE_WRAP_MODE_U_clearcoatRoughnessTexture,SC_SOFTWARE_WRAP_MODE_V_clearcoatRoughnessTexture).y,l9_512,l9_531);
float l9_532=l9_531;
vec3 l9_533=sc_SamplingCoordsViewToGlobal(vec2(l9_528,l9_530),clearcoatRoughnessTextureLayout,clearcoatRoughnessTextureGetStereoViewIndex());
vec4 l9_534=texture(clearcoatRoughnessTextureArrSC,l9_533,0.0);
vec4 l9_535;
#if (SC_USE_CLAMP_TO_BORDER_clearcoatRoughnessTexture)
{
l9_535=mix(clearcoatRoughnessTextureBorderColor,l9_534,vec4(l9_532));
}
#else
{
l9_535=l9_534;
}
#endif
l9_511=l9_535;
}
#else
{
bool l9_536=(int(SC_USE_CLAMP_TO_BORDER_clearcoatRoughnessTexture)!=0)&&(!(int(SC_USE_UV_MIN_MAX_clearcoatRoughnessTexture)!=0));
float l9_537=l9_510.x;
sc_SoftwareWrapEarly(l9_537,ivec2(SC_SOFTWARE_WRAP_MODE_U_clearcoatRoughnessTexture,SC_SOFTWARE_WRAP_MODE_V_clearcoatRoughnessTexture).x);
float l9_538=l9_537;
float l9_539=l9_510.y;
sc_SoftwareWrapEarly(l9_539,ivec2(SC_SOFTWARE_WRAP_MODE_U_clearcoatRoughnessTexture,SC_SOFTWARE_WRAP_MODE_V_clearcoatRoughnessTexture).y);
float l9_540=l9_539;
vec2 l9_541;
float l9_542;
#if (SC_USE_UV_MIN_MAX_clearcoatRoughnessTexture)
{
bool l9_543;
#if (SC_USE_CLAMP_TO_BORDER_clearcoatRoughnessTexture)
{
l9_543=ivec2(SC_SOFTWARE_WRAP_MODE_U_clearcoatRoughnessTexture,SC_SOFTWARE_WRAP_MODE_V_clearcoatRoughnessTexture).x==3;
}
#else
{
l9_543=(int(SC_USE_CLAMP_TO_BORDER_clearcoatRoughnessTexture)!=0);
}
#endif
float l9_544=l9_538;
float l9_545=1.0;
sc_ClampUV(l9_544,clearcoatRoughnessTextureUvMinMax.x,clearcoatRoughnessTextureUvMinMax.z,l9_543,l9_545);
float l9_546=l9_544;
float l9_547=l9_545;
bool l9_548;
#if (SC_USE_CLAMP_TO_BORDER_clearcoatRoughnessTexture)
{
l9_548=ivec2(SC_SOFTWARE_WRAP_MODE_U_clearcoatRoughnessTexture,SC_SOFTWARE_WRAP_MODE_V_clearcoatRoughnessTexture).y==3;
}
#else
{
l9_548=(int(SC_USE_CLAMP_TO_BORDER_clearcoatRoughnessTexture)!=0);
}
#endif
float l9_549=l9_540;
float l9_550=l9_547;
sc_ClampUV(l9_549,clearcoatRoughnessTextureUvMinMax.y,clearcoatRoughnessTextureUvMinMax.w,l9_548,l9_550);
l9_542=l9_550;
l9_541=vec2(l9_546,l9_549);
}
#else
{
l9_542=1.0;
l9_541=vec2(l9_538,l9_540);
}
#endif
vec2 l9_551=sc_TransformUV(l9_541,(int(SC_USE_UV_TRANSFORM_clearcoatRoughnessTexture)!=0),clearcoatRoughnessTextureTransform);
float l9_552=l9_551.x;
float l9_553=l9_542;
sc_SoftwareWrapLate(l9_552,ivec2(SC_SOFTWARE_WRAP_MODE_U_clearcoatRoughnessTexture,SC_SOFTWARE_WRAP_MODE_V_clearcoatRoughnessTexture).x,l9_536,l9_553);
float l9_554=l9_551.y;
float l9_555=l9_553;
sc_SoftwareWrapLate(l9_554,ivec2(SC_SOFTWARE_WRAP_MODE_U_clearcoatRoughnessTexture,SC_SOFTWARE_WRAP_MODE_V_clearcoatRoughnessTexture).y,l9_536,l9_555);
float l9_556=l9_555;
vec3 l9_557=sc_SamplingCoordsViewToGlobal(vec2(l9_552,l9_554),clearcoatRoughnessTextureLayout,clearcoatRoughnessTextureGetStereoViewIndex());
vec4 l9_558=texture(clearcoatRoughnessTexture,l9_557.xy,0.0);
vec4 l9_559;
#if (SC_USE_CLAMP_TO_BORDER_clearcoatRoughnessTexture)
{
l9_559=mix(clearcoatRoughnessTextureBorderColor,l9_558,vec4(l9_556));
}
#else
{
l9_559=l9_558;
}
#endif
l9_511=l9_559;
}
#endif
l9_508=ssSRGB_to_Linear(l9_511.y);
}
#else
{
l9_508=1.0;
}
#endif
float l9_560=l9_508*clearcoatRoughnessFactor;
vec3 l9_561;
#if (ENABLE_CLEARCOAT_NORMAL_TEX)
{
vec2 l9_562=N3_getUV(Tweak_N47);
vec2 l9_563;
if ((int(ENABLE_TEXTURE_TRANSFORM)!=0)&&(int(ENABLE_CLEARCOAT_NORMAL_TEXTURE_TRANSFORM)!=0))
{
l9_563=N3_uvTransform(l9_562,clearcoatNormalTexture_offset,clearcoatNormalTexture_scale,clearcoatNormalTexture_rotation);
}
else
{
l9_563=l9_562;
}
vec4 l9_564;
#if (clearcoatNormalTextureLayout==2)
{
bool l9_565=(int(SC_USE_CLAMP_TO_BORDER_clearcoatNormalTexture)!=0)&&(!(int(SC_USE_UV_MIN_MAX_clearcoatNormalTexture)!=0));
float l9_566=l9_563.x;
sc_SoftwareWrapEarly(l9_566,ivec2(SC_SOFTWARE_WRAP_MODE_U_clearcoatNormalTexture,SC_SOFTWARE_WRAP_MODE_V_clearcoatNormalTexture).x);
float l9_567=l9_566;
float l9_568=l9_563.y;
sc_SoftwareWrapEarly(l9_568,ivec2(SC_SOFTWARE_WRAP_MODE_U_clearcoatNormalTexture,SC_SOFTWARE_WRAP_MODE_V_clearcoatNormalTexture).y);
float l9_569=l9_568;
vec2 l9_570;
float l9_571;
#if (SC_USE_UV_MIN_MAX_clearcoatNormalTexture)
{
bool l9_572;
#if (SC_USE_CLAMP_TO_BORDER_clearcoatNormalTexture)
{
l9_572=ivec2(SC_SOFTWARE_WRAP_MODE_U_clearcoatNormalTexture,SC_SOFTWARE_WRAP_MODE_V_clearcoatNormalTexture).x==3;
}
#else
{
l9_572=(int(SC_USE_CLAMP_TO_BORDER_clearcoatNormalTexture)!=0);
}
#endif
float l9_573=l9_567;
float l9_574=1.0;
sc_ClampUV(l9_573,clearcoatNormalTextureUvMinMax.x,clearcoatNormalTextureUvMinMax.z,l9_572,l9_574);
float l9_575=l9_573;
float l9_576=l9_574;
bool l9_577;
#if (SC_USE_CLAMP_TO_BORDER_clearcoatNormalTexture)
{
l9_577=ivec2(SC_SOFTWARE_WRAP_MODE_U_clearcoatNormalTexture,SC_SOFTWARE_WRAP_MODE_V_clearcoatNormalTexture).y==3;
}
#else
{
l9_577=(int(SC_USE_CLAMP_TO_BORDER_clearcoatNormalTexture)!=0);
}
#endif
float l9_578=l9_569;
float l9_579=l9_576;
sc_ClampUV(l9_578,clearcoatNormalTextureUvMinMax.y,clearcoatNormalTextureUvMinMax.w,l9_577,l9_579);
l9_571=l9_579;
l9_570=vec2(l9_575,l9_578);
}
#else
{
l9_571=1.0;
l9_570=vec2(l9_567,l9_569);
}
#endif
vec2 l9_580=sc_TransformUV(l9_570,(int(SC_USE_UV_TRANSFORM_clearcoatNormalTexture)!=0),clearcoatNormalTextureTransform);
float l9_581=l9_580.x;
float l9_582=l9_571;
sc_SoftwareWrapLate(l9_581,ivec2(SC_SOFTWARE_WRAP_MODE_U_clearcoatNormalTexture,SC_SOFTWARE_WRAP_MODE_V_clearcoatNormalTexture).x,l9_565,l9_582);
float l9_583=l9_580.y;
float l9_584=l9_582;
sc_SoftwareWrapLate(l9_583,ivec2(SC_SOFTWARE_WRAP_MODE_U_clearcoatNormalTexture,SC_SOFTWARE_WRAP_MODE_V_clearcoatNormalTexture).y,l9_565,l9_584);
float l9_585=l9_584;
vec3 l9_586=sc_SamplingCoordsViewToGlobal(vec2(l9_581,l9_583),clearcoatNormalTextureLayout,clearcoatNormalTextureGetStereoViewIndex());
vec4 l9_587=texture(clearcoatNormalTextureArrSC,l9_586,0.0);
vec4 l9_588;
#if (SC_USE_CLAMP_TO_BORDER_clearcoatNormalTexture)
{
l9_588=mix(clearcoatNormalTextureBorderColor,l9_587,vec4(l9_585));
}
#else
{
l9_588=l9_587;
}
#endif
l9_564=l9_588;
}
#else
{
bool l9_589=(int(SC_USE_CLAMP_TO_BORDER_clearcoatNormalTexture)!=0)&&(!(int(SC_USE_UV_MIN_MAX_clearcoatNormalTexture)!=0));
float l9_590=l9_563.x;
sc_SoftwareWrapEarly(l9_590,ivec2(SC_SOFTWARE_WRAP_MODE_U_clearcoatNormalTexture,SC_SOFTWARE_WRAP_MODE_V_clearcoatNormalTexture).x);
float l9_591=l9_590;
float l9_592=l9_563.y;
sc_SoftwareWrapEarly(l9_592,ivec2(SC_SOFTWARE_WRAP_MODE_U_clearcoatNormalTexture,SC_SOFTWARE_WRAP_MODE_V_clearcoatNormalTexture).y);
float l9_593=l9_592;
vec2 l9_594;
float l9_595;
#if (SC_USE_UV_MIN_MAX_clearcoatNormalTexture)
{
bool l9_596;
#if (SC_USE_CLAMP_TO_BORDER_clearcoatNormalTexture)
{
l9_596=ivec2(SC_SOFTWARE_WRAP_MODE_U_clearcoatNormalTexture,SC_SOFTWARE_WRAP_MODE_V_clearcoatNormalTexture).x==3;
}
#else
{
l9_596=(int(SC_USE_CLAMP_TO_BORDER_clearcoatNormalTexture)!=0);
}
#endif
float l9_597=l9_591;
float l9_598=1.0;
sc_ClampUV(l9_597,clearcoatNormalTextureUvMinMax.x,clearcoatNormalTextureUvMinMax.z,l9_596,l9_598);
float l9_599=l9_597;
float l9_600=l9_598;
bool l9_601;
#if (SC_USE_CLAMP_TO_BORDER_clearcoatNormalTexture)
{
l9_601=ivec2(SC_SOFTWARE_WRAP_MODE_U_clearcoatNormalTexture,SC_SOFTWARE_WRAP_MODE_V_clearcoatNormalTexture).y==3;
}
#else
{
l9_601=(int(SC_USE_CLAMP_TO_BORDER_clearcoatNormalTexture)!=0);
}
#endif
float l9_602=l9_593;
float l9_603=l9_600;
sc_ClampUV(l9_602,clearcoatNormalTextureUvMinMax.y,clearcoatNormalTextureUvMinMax.w,l9_601,l9_603);
l9_595=l9_603;
l9_594=vec2(l9_599,l9_602);
}
#else
{
l9_595=1.0;
l9_594=vec2(l9_591,l9_593);
}
#endif
vec2 l9_604=sc_TransformUV(l9_594,(int(SC_USE_UV_TRANSFORM_clearcoatNormalTexture)!=0),clearcoatNormalTextureTransform);
float l9_605=l9_604.x;
float l9_606=l9_595;
sc_SoftwareWrapLate(l9_605,ivec2(SC_SOFTWARE_WRAP_MODE_U_clearcoatNormalTexture,SC_SOFTWARE_WRAP_MODE_V_clearcoatNormalTexture).x,l9_589,l9_606);
float l9_607=l9_604.y;
float l9_608=l9_606;
sc_SoftwareWrapLate(l9_607,ivec2(SC_SOFTWARE_WRAP_MODE_U_clearcoatNormalTexture,SC_SOFTWARE_WRAP_MODE_V_clearcoatNormalTexture).y,l9_589,l9_608);
float l9_609=l9_608;
vec3 l9_610=sc_SamplingCoordsViewToGlobal(vec2(l9_605,l9_607),clearcoatNormalTextureLayout,clearcoatNormalTextureGetStereoViewIndex());
vec4 l9_611=texture(clearcoatNormalTexture,l9_610.xy,0.0);
vec4 l9_612;
#if (SC_USE_CLAMP_TO_BORDER_clearcoatNormalTexture)
{
l9_612=mix(clearcoatNormalTextureBorderColor,l9_611,vec4(l9_609));
}
#else
{
l9_612=l9_611;
}
#endif
l9_564=l9_612;
}
#endif
l9_561=l9_564.xyz*0.9921875;
}
#else
{
l9_561=vec3(0.0,0.0,1.0);
}
#endif
l9_454=l9_560;
l9_453=l9_561;
l9_452=l9_507;
}
#else
{
l9_454=0.0;
l9_453=vec3(0.0);
l9_452=0.0;
}
#endif
vec3 l9_613;
#if (!sc_ProjectiveShadowsCaster)
{
l9_613=l9_81;
}
#else
{
l9_613=vec3(0.0);
}
#endif
float l9_614=clamp(l9_298,0.0,1.0);
ngsAlphaTest(l9_614);
vec3 l9_615=max(l9_297,vec3(0.0));
vec4 l9_616;
#if (sc_ProjectiveShadowsCaster)
{
l9_616=vec4(l9_615,l9_614);
}
#else
{
l9_616=ngsCalculateLighting(l9_615,l9_614,l9_613,l9_7,l9_8,max(l9_299,vec3(0.0)),clamp(l9_133,0.0,1.0),clamp(l9_135,0.0,1.0),clamp(l9_134.xyz,vec3(0.0),vec3(1.0)),Port_SpecularAO_N036);
}
#endif
vec4 l9_617=max(l9_616,vec4(0.0));
vec3 l9_618;
#if (!sc_ProjectiveShadowsCaster)
{
l9_618=mat3(l9_5,l9_4,l9_6)*l9_453;
}
#else
{
l9_618=vec3(0.0);
}
#endif
ngsAlphaTest(Port_Opacity_N405);
vec4 l9_619;
#if (sc_ProjectiveShadowsCaster)
{
l9_619=vec4(Port_Albedo_N405,Port_Opacity_N405);
}
#else
{
l9_619=ngsCalculateLighting(Port_Albedo_N405,Port_Opacity_N405,l9_618,l9_7,l9_8,Port_Emissive_N405,Port_Metallic_N405,clamp(l9_454,0.0,1.0),vec3(1.0),Port_SpecularAO_N405);
}
#endif
vec4 l9_620=max(l9_619,vec4(0.0));
tempGlobals=l9_17;
vec4 l9_621;
if (((int(ENABLE_SHEEN)!=0)||(int(ENABLE_TRANSMISSION)!=0))||(int(ENABLE_CLEARCOAT)!=0))
{
vec4 l9_622=ssSRGB_to_Linear(l9_617);
vec4 l9_623;
#if (ENABLE_SHEEN)
{
vec3 l9_624=(l9_622.xyz*l9_300.w)+l9_300.xyz;
l9_623=vec4(l9_624.x,l9_624.y,l9_624.z,l9_622.w);
}
#else
{
l9_623=l9_622;
}
#endif
vec4 l9_625;
#if (ENABLE_TRANSMISSION)
{
vec4 l9_626=mix(vec4(l9_191,1.0),l9_623,vec4(ssSRGB_to_Linear(l9_298)));
l9_626.w=1.0;
l9_625=l9_626;
}
#else
{
l9_625=l9_623;
}
#endif
vec4 l9_627;
#if (ENABLE_CLEARCOAT)
{
vec3 l9_628=l9_625.xyz+(ssSRGB_to_Linear(l9_620)*l9_452).xyz;
l9_627=vec4(l9_628.x,l9_628.y,l9_628.z,l9_625.w);
}
#else
{
l9_627=l9_625;
}
#endif
l9_621=ssLinear_to_SRGB(l9_627);
}
else
{
l9_621=l9_617;
}
l9_18=l9_621;
}
#else
{
float l9_629;
Node40_Bool_Parameter(l9_629,l9_17);
float l9_630;
Node121_Bool_Parameter(l9_630,l9_17);
float l9_631;
Node48_Bool_Parameter(l9_631,l9_17);
float l9_632;
Node88_Bool_Parameter(l9_632,l9_17);
tempGlobals=l9_17;
vec4 l9_633;
#if (ENABLE_BASE_TEX)
{
vec2 l9_634=N35_getUV(NODE_7_DROPLIST_ITEM);
vec2 l9_635;
if ((int(ENABLE_TEXTURE_TRANSFORM)!=0)&&(int(ENABLE_BASE_TEXTURE_TRANSFORM)!=0))
{
l9_635=N35_uvTransform(l9_634,baseColorTexture_offset,baseColorTexture_scale,baseColorTexture_rotation);
}
else
{
l9_635=l9_634;
}
l9_633=baseColorFactor*ssSRGB_to_Linear(N35_BaseTexture_sample(l9_635));
}
#else
{
l9_633=baseColorFactor;
}
#endif
vec4 l9_636;
#if (ENABLE_VERTEX_COLOR_BASE)
{
l9_636=l9_633*tempGlobals.VertexColor;
}
#else
{
l9_636=l9_633;
}
#endif
l9_18=ssLinear_to_SRGB(l9_636);
}
#endif
if (isProxyMode)
{
vec4 l9_637;
#if (sc_ProxyAlphaOne)
{
vec4 l9_638=l9_18;
l9_638.w=1.0;
l9_637=l9_638;
}
#else
{
l9_637=l9_18;
}
#endif
sc_writeFragData0Internal(max(l9_637,vec4(0.0)),sc_UniformConstants.x,sc_ShaderCacheConstant);
return;
}
vec4 l9_639;
#if (sc_ProjectiveShadowsCaster)
{
float l9_640;
#if (((sc_BlendMode_Normal||sc_BlendMode_AlphaToCoverage)||sc_BlendMode_PremultipliedAlphaHardware)||sc_BlendMode_PremultipliedAlphaAuto)
{
l9_640=l9_18.w;
}
#else
{
float l9_641;
#if (sc_BlendMode_PremultipliedAlpha)
{
l9_641=clamp(l9_18.w*2.0,0.0,1.0);
}
#else
{
float l9_642;
#if (sc_BlendMode_AddWithAlphaFactor)
{
l9_642=clamp(dot(l9_18.xyz,vec3(l9_18.w)),0.0,1.0);
}
#else
{
float l9_643;
#if (sc_BlendMode_AlphaTest)
{
l9_643=1.0;
}
#else
{
float l9_644;
#if (sc_BlendMode_Multiply)
{
l9_644=(1.0-dot(l9_18.xyz,vec3(0.33333001)))*l9_18.w;
}
#else
{
float l9_645;
#if (sc_BlendMode_MultiplyOriginal)
{
l9_645=(1.0-clamp(dot(l9_18.xyz,vec3(1.0)),0.0,1.0))*l9_18.w;
}
#else
{
float l9_646;
#if (sc_BlendMode_ColoredGlass)
{
l9_646=clamp(dot(l9_18.xyz,vec3(1.0)),0.0,1.0)*l9_18.w;
}
#else
{
float l9_647;
#if (sc_BlendMode_Add)
{
l9_647=clamp(dot(l9_18.xyz,vec3(1.0)),0.0,1.0);
}
#else
{
float l9_648;
#if (sc_BlendMode_AddWithAlphaFactor)
{
l9_648=clamp(dot(l9_18.xyz,vec3(1.0)),0.0,1.0)*l9_18.w;
}
#else
{
float l9_649;
#if (sc_BlendMode_Screen)
{
l9_649=dot(l9_18.xyz,vec3(0.33333001))*l9_18.w;
}
#else
{
float l9_650;
#if (sc_BlendMode_Min)
{
l9_650=1.0-clamp(dot(l9_18.xyz,vec3(1.0)),0.0,1.0);
}
#else
{
float l9_651;
#if (sc_BlendMode_Max)
{
l9_651=clamp(dot(l9_18.xyz,vec3(1.0)),0.0,1.0);
}
#else
{
l9_651=1.0;
}
#endif
l9_650=l9_651;
}
#endif
l9_649=l9_650;
}
#endif
l9_648=l9_649;
}
#endif
l9_647=l9_648;
}
#endif
l9_646=l9_647;
}
#endif
l9_645=l9_646;
}
#endif
l9_644=l9_645;
}
#endif
l9_643=l9_644;
}
#endif
l9_642=l9_643;
}
#endif
l9_641=l9_642;
}
#endif
l9_640=l9_641;
}
#endif
l9_639=vec4(mix(sc_ShadowColor.xyz,sc_ShadowColor.xyz*l9_18.xyz,vec3(sc_ShadowColor.w)),sc_ShadowDensity*l9_640);
}
#else
{
vec4 l9_652;
#if (sc_RenderAlphaToColor)
{
l9_652=vec4(l9_18.w);
}
#else
{
vec4 l9_653;
#if (sc_BlendMode_Custom)
{
vec3 l9_654=sc_GetFramebufferColor().xyz;
vec3 l9_655=mix(l9_654,definedBlend(l9_654,l9_18.xyz).xyz,vec3(l9_18.w));
vec4 l9_656=vec4(l9_655.x,l9_655.y,l9_655.z,vec4(0.0).w);
l9_656.w=1.0;
l9_653=l9_656;
}
#else
{
vec4 l9_657;
#if (sc_BlendMode_MultiplyOriginal)
{
l9_657=vec4(mix(vec3(1.0),l9_18.xyz,vec3(l9_18.w)),l9_18.w);
}
#else
{
vec4 l9_658;
#if (sc_BlendMode_Screen||sc_BlendMode_PremultipliedAlphaAuto)
{
float l9_659;
#if (sc_BlendMode_PremultipliedAlphaAuto)
{
l9_659=clamp(l9_18.w,0.0,1.0);
}
#else
{
l9_659=l9_18.w;
}
#endif
l9_658=vec4(l9_18.xyz*l9_659,l9_659);
}
#else
{
l9_658=l9_18;
}
#endif
l9_657=l9_658;
}
#endif
l9_653=l9_657;
}
#endif
l9_652=l9_653;
}
#endif
l9_639=l9_652;
}
#endif
vec4 l9_660;
if (PreviewEnabled==1)
{
vec4 l9_661;
if (((PreviewVertexSaved*1.0)!=0.0) ? true : false)
{
l9_661=PreviewVertexColor;
}
else
{
l9_661=vec4(0.0);
}
l9_660=l9_661;
}
else
{
l9_660=l9_639;
}
vec4 l9_662;
#if (sc_ShaderComplexityAnalyzer)
{
l9_662=vec4(shaderComplexityValue/255.0,0.0,0.0,1.0);
}
#else
{
l9_662=vec4(0.0);
}
#endif
vec4 l9_663;
if (l9_662.w>0.0)
{
l9_663=l9_662;
}
else
{
l9_663=l9_660;
}
vec4 l9_664=outputMotionVectorsIfNeeded(varPos,max(l9_663,vec4(0.0)));
vec4 l9_665=clamp(l9_664,vec4(0.0),vec4(1.0));
#if (sc_OITDepthBoundsPass)
{
#if (sc_OITDepthBoundsPass)
{
float l9_666=clamp(viewSpaceDepth()/1000.0,0.0,1.0);
sc_writeFragData0Internal(vec4(max(0.0,1.0-(l9_666-0.0039215689)),min(1.0,l9_666+0.0039215689),0.0,0.0),sc_UniformConstants.x,sc_ShaderCacheConstant);
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
vec2 l9_667=sc_ScreenCoordsGlobalToView(gl_FragCoord.xy*sc_CurrentRenderTargetDims.zw);
#if (sc_OITMaxLayers4Plus1)
{
if ((gl_FragCoord.z-texture(sc_OITFrontDepthTexture,l9_667).x)<=getFrontLayerZTestEpsilon())
{
discard;
}
}
#endif
int l9_668=encodeDepth(viewSpaceDepth(),texture(sc_OITFilteredDepthBoundsTexture,l9_667).xy);
float l9_669=packValue(l9_668);
int l9_676=int(l9_665.w*255.0);
float l9_677=packValue(l9_676);
sc_writeFragData0Internal(vec4(packValue(l9_668),packValue(l9_668),packValue(l9_668),packValue(l9_668)),sc_UniformConstants.x,sc_ShaderCacheConstant);
sc_writeFragData1(vec4(l9_669,packValue(l9_668),packValue(l9_668),packValue(l9_668)));
sc_writeFragData2(vec4(l9_677,packValue(l9_676),packValue(l9_676),packValue(l9_676)));
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
vec2 l9_680=sc_ScreenCoordsGlobalToView(gl_FragCoord.xy*sc_CurrentRenderTargetDims.zw);
#if (sc_OITMaxLayers4Plus1)
{
if ((gl_FragCoord.z-texture(sc_OITFrontDepthTexture,l9_680).x)<=getFrontLayerZTestEpsilon())
{
discard;
}
}
#endif
int l9_681[8];
int l9_682[8];
int l9_683=0;
for (int snapLoopIndex=0; snapLoopIndex==0; snapLoopIndex+=0)
{
if (l9_683<8)
{
l9_681[l9_683]=0;
l9_682[l9_683]=0;
l9_683++;
continue;
}
else
{
break;
}
}
int l9_684;
#if (sc_OITMaxLayers8)
{
l9_684=2;
}
#else
{
l9_684=1;
}
#endif
int l9_685=0;
for (int snapLoopIndex=0; snapLoopIndex==0; snapLoopIndex+=0)
{
if (l9_685<l9_684)
{
vec4 l9_686;
vec4 l9_687;
vec4 l9_688;
if (l9_685==0)
{
l9_688=texture(sc_OITAlpha0,l9_680);
l9_687=texture(sc_OITDepthLow0,l9_680);
l9_686=texture(sc_OITDepthHigh0,l9_680);
}
else
{
l9_688=vec4(0.0);
l9_687=vec4(0.0);
l9_686=vec4(0.0);
}
vec4 l9_689;
vec4 l9_690;
vec4 l9_691;
if (l9_685==1)
{
l9_691=texture(sc_OITAlpha1,l9_680);
l9_690=texture(sc_OITDepthLow1,l9_680);
l9_689=texture(sc_OITDepthHigh1,l9_680);
}
else
{
l9_691=l9_688;
l9_690=l9_687;
l9_689=l9_686;
}
if (any(notEqual(l9_689,vec4(0.0)))||any(notEqual(l9_690,vec4(0.0))))
{
int l9_692[8]=l9_681;
unpackValues(l9_689.w,l9_685,l9_692);
unpackValues(l9_689.z,l9_685,l9_692);
unpackValues(l9_689.y,l9_685,l9_692);
unpackValues(l9_689.x,l9_685,l9_692);
unpackValues(l9_690.w,l9_685,l9_692);
unpackValues(l9_690.z,l9_685,l9_692);
unpackValues(l9_690.y,l9_685,l9_692);
unpackValues(l9_690.x,l9_685,l9_692);
int l9_701[8]=l9_682;
unpackValues(l9_691.w,l9_685,l9_701);
unpackValues(l9_691.z,l9_685,l9_701);
unpackValues(l9_691.y,l9_685,l9_701);
unpackValues(l9_691.x,l9_685,l9_701);
}
l9_685++;
continue;
}
else
{
break;
}
}
vec4 l9_706=texture(sc_OITFilteredDepthBoundsTexture,l9_680);
vec2 l9_707=l9_706.xy;
int l9_708;
#if (sc_SkinBonesCount>0)
{
l9_708=encodeDepth(((1.0-l9_706.x)*1000.0)+getDepthOrderingEpsilon(),l9_707);
}
#else
{
l9_708=0;
}
#endif
int l9_709=encodeDepth(viewSpaceDepth(),l9_707);
vec4 l9_710;
l9_710=l9_665*l9_665.w;
vec4 l9_711;
int l9_712=0;
for (int snapLoopIndex=0; snapLoopIndex==0; snapLoopIndex+=0)
{
if (l9_712<8)
{
int l9_713=l9_681[l9_712];
int l9_714=l9_709-l9_708;
bool l9_715=l9_713<l9_714;
bool l9_716;
if (l9_715)
{
l9_716=l9_681[l9_712]>0;
}
else
{
l9_716=l9_715;
}
if (l9_716)
{
vec3 l9_717=l9_710.xyz*(1.0-(float(l9_682[l9_712])/255.0));
l9_711=vec4(l9_717.x,l9_717.y,l9_717.z,l9_710.w);
}
else
{
l9_711=l9_710;
}
l9_710=l9_711;
l9_712++;
continue;
}
else
{
break;
}
}
sc_writeFragData0Internal(l9_710,sc_UniformConstants.x,sc_ShaderCacheConstant);
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
sc_writeFragData0Internal(l9_665,sc_UniformConstants.x,sc_ShaderCacheConstant);
}
#endif
}
#else
{
sc_writeFragData0Internal(l9_664,sc_UniformConstants.x,sc_ShaderCacheConstant);
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
