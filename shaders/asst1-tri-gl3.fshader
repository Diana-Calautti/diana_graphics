// If you have shader compilation problems, try changing this to 130
#version 150

uniform float uVertexScale;
uniform sampler2D uTex2;

in vec2 vTexCoord;
in vec2 vTemp;

out vec4 fragColor;

void main(void) {
vec4 color = vec4(vTemp.x, vTemp.y, 0.5, 1);
//vec4 color = vec4(1, 1, 0.5, 1);

// The texture(..) calls always return a vec4. Data comes out of a texture
// in RGBA format
vec4 texColor2 = texture(uTex2, vTexCoord);


// fragColor is a vec4. The components are interpreted as red, green, blue,
// and alpha

fragColor = texColor2 * 0.5 + 0.5 * color;
}
