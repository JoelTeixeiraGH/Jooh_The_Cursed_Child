/// Colisão com corações

with (other) {
	other.hp = clamp (other.hp + hp, 0, other.hp_containers*8);
	instance_destroy();
}
