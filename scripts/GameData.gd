extends Node

var taco_count: int = 0
var taco_coins: float = 0.0

var max_bag_capacity: int = 10

func is_bag_full() -> bool:
	return taco_count >= max_bag_capacity

func add_taco(amount: int = 1, multipliar: int = 1) -> void:
	taco_count += amount * multipliar
	
	taco_count = clamp(taco_count, 0, max_bag_capacity)
