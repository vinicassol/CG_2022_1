#version 450

layout (location = 0) in vec3 position;
layout (location = 1) in vec3 color;
layout (location = 2) in vec2 tex_coord;

out vec4 vertexColor;
out vec2 texCoord;
  
uniform mat4 model;
uniform mat4 projection;

void main()
{
    gl_Position = projection * model * vec4(position, 1.0f);
    vertexColor = vec4(color,1.0);
    texCoord = vec2(tex_coord.x, tex_coord.y);
}