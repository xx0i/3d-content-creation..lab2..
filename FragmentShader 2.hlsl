struct VERTEX_OUTPUT
{
    float4 pos : SV_POSITION;
    float4 colour : COLOR;
};


// an ultra simple hlsl fragment shader
float4 main(VERTEX_OUTPUT input) : SV_TARGET
{
    return input.colour; // TODO: Part 1a (optional), Part 4g
}