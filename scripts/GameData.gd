extends Node

var taco_count: int = 0

func add_taco(amount: int = 1, multipliar: int = 1) -> void:
	taco_count += amount * multipliar
