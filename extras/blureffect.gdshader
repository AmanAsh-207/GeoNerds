shader_type canvas_item;

uniform sampler2D screen_tex : hint_screen_texture;
uniform float blur_strength : hint_range(0.0, 10.0) = 4.0;

void fragment() {
    vec2 pixel = SCREEN_PIXEL_SIZE * blur_strength;
    vec4 col = vec4(0.0);

    col += texture(screen_tex, SCREEN_UV + vec2(-pixel.x, -pixel.y));
    col += texture(screen_tex, SCREEN_UV + vec2( pixel.x, -pixel.y));
    col += texture(screen_tex, SCREEN_UV + vec2(-pixel.x,  pixel.y));
    col += texture(screen_tex, SCREEN_UV + vec2( pixel.x,  pixel.y));

    COLOR = col * 0.25;
}
