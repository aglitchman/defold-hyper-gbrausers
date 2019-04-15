varying lowp vec4 var_tint;
varying mediump vec2 var_texcoord0;

uniform highp sampler2D texture0;
uniform lowp sampler2D texture1;

void main()
{
    lowp vec4 color = var_tint + texture2D(texture1, var_texcoord0.xy) * 0.0001; // to keep texture1

    if (color.a < 0.2) discard;
    color.a = 1.0;

    gl_FragColor = color;
}
