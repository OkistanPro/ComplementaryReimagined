#define TEXSYN_PI 3.14159265359

uniform sampler2D synMask;

void SquareGrid(vec2 uv, out vec2 weights, out ivec2 vertex1, out ivec2 vertex2)
{
    // New code for pixelated transitions
    // Scale UV to a 16x16 grid
    // Aligns the UV coordinates to a 16x16 grid
    // En multipliant les coordonnées UV par 16 puis en prenant la valeur floor,
    // nous alignons effectivement les coordonnées UV sur le plus proche intervalle de 1/16ème.
    uv = floor(uv * 16.0) / 16.0;

    // Calculate sine values
    vec2 sinuv = sin(uv * TEXSYN_PI);
    vec2 sinuv2 = sinuv * sinuv;

    vertex1 = ivec2(0, 0);

    // Calculate weights based on the sine values
    weights.x = sinuv2.x * sinuv2.y + 0.001;

    // Adjust UV for the second vertex
    vec2 uv2 = uv - vec2(0.5, 0.5);
    vertex2 = ivec2(floor(uv2)) * ivec2(2, 2) + ivec2(1, 1);
    sinuv = sin(uv2 * TEXSYN_PI);
    sinuv2 = sinuv * sinuv;

    weights.y = sinuv2.x * sinuv2.y + 0.001;
}


// see https://www.shadertoy.com/view/XlGcRh
uvec2 pcg2d(uvec2 v)
{
    v = v * 1664525u + 1013904223u;

    v.x += v.y * 1664525u;
    v.y += v.x * 1664525u;

    v = v ^ (v>>16u);

    v.x += v.y * 1664525u;
    v.y += v.x * 1664525u;

    v = v ^ (v>>16u);

    return v;
}

// see https://stackoverflow.com/questions/4200224/random-noise-functions-for-glsl
float floatConstruct(uint m) {
    const uint ieeeMantissa = 0x007FFFFFu; // binary32 mantissa bitmask
    const uint ieeeOne      = 0x3F800000u; // 1.0 in IEEE binary32

    m &= ieeeMantissa;                     // Keep only mantissa bits (fractional part)
    m |= ieeeOne;                          // Add fractional part to 1.0

    float  f = uintBitsToFloat(m);         // Range [1:2]
    return f - 1.0;                        // Range [0:1]
}

vec2 hash22u(uvec2 p)
{
    uvec2 hash = pcg2d(p);
    return vec2(floatConstruct(hash.x), floatConstruct(hash.y));
}

vec2 offsetToXxX(vec2 nbBlocks, in vec2 offset, in vec2 uv, float offsetAdjust, float heightAdjust)
{
    offset = floor(offset * offsetAdjust) / offsetAdjust ; // Align to sub textures in the atlas

    // Align the offset to the brick grid
    offset.y = floor(offset.y / heightAdjust) * heightAdjust; // Align to brick height grid
	
    vec2 uvCeil = ceil(uv);

    uv += offset;
    uv.x = float(uv.x < uvCeil.x) * uv.x + float(uv.x >= uvCeil.x) * (uv.x - 1.0); 
    uv.y = float(uv.y < uvCeil.y) * uv.y + float(uv.y >= uvCeil.y) * (uv.y - 1.0);

    return fract(uv);
}

//offsetToXxX(nbBlocks, offset, uv, 16.0, 0.25)
//vec2 offsetTo16x16(vec2 nbBlocks, in vec2 offset, in vec2 uv)

//offsetToXxX(nbBlocks, offset, uv, 2.0, 0.5)
//vec2 offsetTo2x2(vec2 nbBlocks, in vec2 offset, in vec2 uv)

//offsetToXxX(nbBlocks, offset, uv, 16.0, 1.0)
//vec2 offsetTo16x16Normal(vec2 nbBlocks, in vec2 offset, in vec2 uv)

#if ANISOTROPIC_FILTER == 0

vec4 TilingAndBlending(in sampler2D sampler, in vec2 uv, in ivec3 blockPos, float offsetAdjust, float heightAdjust)
{
    // Dynamically determine the atlas size
    vec2 atlasSize = vec2(textureSize(sampler, 0));
    vec2 nbBlocks = atlasSize / 16.0;
    ivec2 tile1;
    ivec2 tile2;
    vec2 weights;

    vec2 blockUV = uv * nbBlocks;
    vec2 blockUVFract = fract(blockUV);
    vec2 blockUVFloor = floor(blockUV);

    SquareGrid(blockUVFract, weights, tile1, tile2); // Weight is normalized for 16x16 pixels per cube
    float W = length(weights);

    ivec2 uniqueID = ivec2(blockPos.x + blockPos.y, blockPos.z);
    tile1 = uniqueID * ivec2(2, 2);
    tile2 = uniqueID * ivec2(2, 2) + tile2;

    vec2 offset1 = hash22u(uvec2(tile1));
    vec2 offset2 = hash22u(uvec2(tile2));

    vec2 uvContent1 = offsetToXxX(nbBlocks, offset1, blockUVFract, offsetAdjust, heightAdjust);
    vec2 uvContent2 = offsetToXxX(nbBlocks, offset2, blockUVFract, offsetAdjust, heightAdjust);

    uvContent1 = (uvContent1 + blockUVFloor) / nbBlocks;
    uvContent2 = (uvContent2 + blockUVFloor) / nbBlocks;

    vec4 mean = textureLod(sampler, uv, 4);

    //vec4 content1 = texture2DLod(sampler, uvContent1, 0.0) - mean;
    //vec4 content2 = texture2DLod(sampler, uvContent2, 0.0) - mean;

    vec4 content1 = texelFetch(tex, ivec2(uvContent1 * atlasSize), 0) - mean; // usage de texelFetch pour éviter des artefacts avec floor()
    vec4 content2 = texelFetch(tex, ivec2(uvContent2 * atlasSize), 0) - mean;

    vec4 value = content1 * weights.x + content2 * weights.y;
    return value / W + mean;
}

#else

vec4 TilingAndBlendingAF(in sampler2D sampler, in vec2 uv, in ivec3 blockPos, float offsetAdjust, float heightAdjust)
{
    // Dynamically determine the atlas size
    vec2 atlasSize = vec2(textureSize(sampler, 0));
    vec2 nbBlocks = atlasSize / 16.0;
    ivec2 tile1;
    ivec2 tile2;
    vec2 weights;

    vec2 blockUV = uv * nbBlocks;
    vec2 blockUVFract = fract(blockUV);
    vec2 blockUVFloor = floor(blockUV);

    SquareGrid(blockUVFract, weights, tile1, tile2); // Weight is normalized for 16x16 pixels per cube
    float W = length(weights);

    ivec2 uniqueID = ivec2(blockPos.x + blockPos.y, blockPos.z);
    tile1 = uniqueID * ivec2(2, 2);
    tile2 = uniqueID * ivec2(2, 2) + tile2;

    vec2 offset1 = hash22u(uvec2(tile1));
    vec2 offset2 = hash22u(uvec2(tile2));

    vec2 uvContent1 = offsetToXxX(nbBlocks, offset1, blockUVFract, offsetAdjust, heightAdjust);
    vec2 uvContent2 = offsetToXxX(nbBlocks, offset2, blockUVFract, offsetAdjust, heightAdjust);

    uvContent1 = (uvContent1 + blockUVFloor) / nbBlocks;
    uvContent2 = (uvContent2 + blockUVFloor) / nbBlocks;

    vec4 mean = textureLod(sampler, uv, 4);

    //vec4 content1 = texture2DLod(sampler, uvContent1, 0.0) - mean;
    //vec4 content2 = texture2DLod(sampler, uvContent2, 0.0) - mean;

    vec4 content1 = textureAF(tex, uvContent1) - mean;
    vec4 content2 = textureAF(tex, uvContent2) - mean;

    vec4 value = content1 * weights.x + content2 * weights.y;
    return value / W + mean;
}

#endif

bool isWhite(in vec2 uv) {
	vec2 atlasSize = vec2(textureSize(synMask, 0));
	vec2 nbBlocks = atlasSize / 16.0;
	vec2 uv_snap = ((floor((uv*atlasSize) * nbBlocks / atlasSize) * 16.0) + 8.0) / atlasSize;
	vec4 point = texture(synMask, uv_snap);
	return point.r != 0.0 && point.g != 0.0 && point.b != 0.0;
}

vec4 getWhite(in vec2 uv) {
	vec2 atlasSize = vec2(textureSize(synMask, 0));
	vec2 nbBlocks = atlasSize / 16.0;
	vec2 uv_snap = ((floor((uv*atlasSize) * nbBlocks / atlasSize) * 16.0) + 8.0) / atlasSize;
	return texture(synMask, uv_snap);
}
