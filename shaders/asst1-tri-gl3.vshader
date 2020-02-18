// If you have shader compilation problems, try changing this to 130
#version 150

uniform float uVertexScale;
uniform float uVertexScaley;

uniform float uTransx;
uniform float uTransy;


in vec2 aPosition;
in vec2 aTexCoord;
in vec2 aTemp;

out vec2 vTexCoord;
out vec2 vTemp;

void main() {
gl_Position = vec4(aPosition.x * uVertexScale + uTransx, aPosition.y * uVertexScaley + uTransy, 0, 1);
vTexCoord = aTexCoord;
//vTemp = vec2(1, 1);
vTemp = aTemp;
}
