shader_type canvas_item;

uniform vec4 ice_color : source_color = vec4(0.4, 0.85, 1.0, 0.85);
uniform float inner_radius : hint_range(0.0, 1.0) = 0.35;
uniform float outer_radius : hint_range(0.0, 2.0) = 0.75;
uniform float opacity : hint_range(0.0, 1.0) = 0.0;

void fragment() {
	vec2 uv = UV - vec2(0.5);
	float dist = length(uv);
	
	float vigenette = smoothstep(inner_radius, outer_radius, dist);
	
	COLOR = vec4(ice_color.rgb, vigenette * ice_color.a * opacity);
}

//void light() {
//	// Called for every pixel for every light affecting the CanvasItem.
//	// Uncomment to replace the default light processing function with this one.
//}
