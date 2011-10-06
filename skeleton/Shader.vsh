//
// Shader.vsh
// opengles2-template
//

varying vec2 texture_coordinate; 

uniform mat4 camera;

void main()
{
    gl_Position = (camera * gl_Vertex);
    texture_coordinate = vec2(gl_MultiTexCoord0);
}