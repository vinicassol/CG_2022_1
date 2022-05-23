#version 450

in vec4 vertexColor;
in vec2 texCoord;

out vec4 color;

// pixels da textura
uniform sampler2D tex_buffer;

void main()
{
    color = texture(tex_buffer, texCoord);
}