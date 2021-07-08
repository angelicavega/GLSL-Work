#ifdef GL_ES
precision mediump float;
#endif

uniform vec2 u_resolution;
uniform vec2 u_mouse;
uniform float u_time;

void main(){
  vec2 st = gl_FragCoord.xy/u_resolution.xy;
  st.x *= u_resolution.x/u_resolution.y;
  vec3 color = vec3(0.385,0.106,0.336);
  float d = 0.0;

  // Remapping the space to -1. to 1.
  st = st *8.-4.;

  // Making the distance field
  d = length( abs(st)-.3 );

  // Visualizing the distance field
  gl_FragColor = vec4(vec3(fract(d*10.0)),1.0);
}