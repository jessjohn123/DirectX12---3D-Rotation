Texture2D t1 : register(t0);
SamplerState s1 : register(s0);

struct VS_OUTPUT
{
	float4 position: SV_POSITION;
	float2 textureCoordinate: TEXCOORD;
};

float4 main(VS_OUTPUT input) : SV_TARGET
{
	// return interpolated color
	return t1.Sample(s1, input.textureCoordinate);
}