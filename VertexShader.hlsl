// TODO: Part 2b 
[[vk::push_constant]]
cbuffer shaderVars
{
    matrix worldMatrix; //64 bytes?
    matrix padding;
};
// an ultra simple hlsl vertex shader
float4 main(float2 inputVertex : POSITION) : SV_POSITION
{
	// TODO: Part 2d 
	return float4(inputVertex, 0, 1);
}