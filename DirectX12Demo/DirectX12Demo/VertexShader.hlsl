struct VS_INPUT
{
	float4 position : POSITION;
	float2 textureCoordinate: TEXCOORD;
};

struct VS_OUTPUT
{
	float4 position: SV_POSITION;
	float2 textureCoordinate: TEXCOORD;
};

cbuffer ConstantBuffer : register(b0)
{
	float4x4 wvpMat;
};

VS_OUTPUT main(VS_INPUT input)
{
	VS_OUTPUT output;
	output.position = mul(input.position, wvpMat);
	output.textureCoordinate = input.textureCoordinate;
	return output;
}