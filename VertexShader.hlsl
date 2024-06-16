// TODO: Part 2b 
// an ultra simple hlsl vertex shader
float4 main(float2 inputVertex : POSITION) : SV_POSITION
{
	// TODO: Part 2d 
	return float4(inputVertex, 0, 1);
}