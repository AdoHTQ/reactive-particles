shader_type particles;

uniform float intensity;

void start() {
	TRANSFORM = EMISSION_TRANSFORM;
	VELOCITY = intensity * vec3( 1.891 * cos(float(NUMBER)), 2.231 * sin(float(NUMBER)), cos(7.871 * float(NUMBER)));
}

void process() {
	VELOCITY -= vec3(TRANSFORM[3][0], TRANSFORM[3][1], TRANSFORM[3][2]) * (20. - intensity);
}
