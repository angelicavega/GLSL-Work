#ifdef GL_ES
precision mediump float;
#endif

uniform vec2 u_resolution;
uniform vec2 u_mouse;
uniform float u_time;

void main() {
    vec2 st = gl_FragCoord.xy/u_resolution.xy;
    st.x *= u_resolution.x/u_resolution.y;

    vec3 color = vec3(0.385,0.106,0.336);
    float d = 0.0;
    st = st *8.-4;
    d = length( abs(st)-.3 );
    color = vec3(st.x,st.y,abs(sin(u_time)));

    gl_FragColor = vec4(vec3(fract(color(d*10.0))),1.0);
}