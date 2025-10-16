#ifdef GL_ES
precision mediump float;
#endif

uniform float time;
uniform vec2 resolution;

void main() {
    vec2 uv = gl_FragCoord.xy / resolution.xy;
    vec3 color = vec3(0.0);

    color.r = 0.1 + 0.3 * uv.y + 0.2 * sin(time * 0.3);
    color.g = 0.1 + 0.2 * uv.x + 0.1 * cos(time * 0.2);
    color.b = 0.3 + 0.4 * uv.y;

    gl_FragColor = vec4(color, 1.0);
}
