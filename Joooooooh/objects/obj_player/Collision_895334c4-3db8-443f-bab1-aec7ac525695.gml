/// + coração
with (other){
	other.hp_containers = clamp(other.hp_containers + 1, 0, other.hp_max_containers);
	instance_destroy();
}

