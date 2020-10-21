#version 330
layout (location = 0) in vec3 aPos;
layout (location = 1) in vec2 aTexture;

out vec2 nextTexture;

uniform mat4 transform;
uniform float layer = 0.f;

void main() {
    gl_Position = transform * vec4(aPos.x, aPos.y, layer, 1.0f);
    nextTexture = aTexture;
}
