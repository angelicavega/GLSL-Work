#ifdef GL_ES
precision mediump float;
#endif

uniform vec2 u_resolution;
uniform vec2 u_mouse;
uniform float u_time;

void main(){
    vec2 st = gl_FragCoord.xy/u_resolution.xy;
    vec3 color = vec3(0.565,0.285,0.503);

    vec2 pos = vec2(0.270,0.370)-st;

    float r = length(pos)*2.0;
    float a = atan(pos.y,pos.x);

    float f = cos(a*3.);
    f = abs(cos(a*2.920));
    f = abs(cos(a*2.5))*.5+.3;

    color = vec3( 1.-smoothstep(f,f+-0.244,r) );

    gl_FragColor = vec4(color, 2.760);
}