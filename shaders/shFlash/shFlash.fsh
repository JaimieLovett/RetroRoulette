// Black and white fragment shader
varying vec2 v_vTexcoord;

void main()
{
    vec4 texColor = texture2D(gm_BaseTexture, v_vTexcoord);
    float white = dot(texColor.rgb, vec3(1, 1, 1));
    gl_FragColor = vec4(white, white, white, texColor.a);
}