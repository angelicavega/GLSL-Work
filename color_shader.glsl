#ifdef GL_ES
precision mediump float;
#endif

uniform vec2 u_resolution;
uniform float u_time;

vec3 colorA = vec3(0.912,0.118,0.757);
vec3 colorB = vec3(0.123,0.079,1.000);

void main() {
    vec3 FinalColor = vec3(0.060,0.036,0.047);

    float rgb = abs(sin(u_time));

    // mix the two colors
    FinalColor = mix(colorA, colorB, rgb);

    gl_FragColor = vec4(FinalColor,1.0);
}
