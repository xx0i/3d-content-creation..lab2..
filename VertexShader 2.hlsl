struct VERTEX
{
    float2 pos : POSITION;
    float4 colour : COLOR;
};

struct VERTEX_OUTPUT
{
    float4 pos : SV_POSITION;
    float4 colour : COLOR;
};


// TODO: Part 2b 
[[vk::push_constant]]
cbuffer shaderVars
{
    matrix worldMatrix;
    matrix padding;
};

// an ultra simple hlsl vertex shader
VERTEX_OUTPUT main(VERTEX input) : SV_POSITION
{
    VERTEX_OUTPUT output;
    output.pos = mul(float4(input.pos, 0, 1), worldMatrix);
    output.colour = input.colour;
    return output;
    
}