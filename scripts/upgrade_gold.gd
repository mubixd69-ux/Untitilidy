extends Button

@export var price: float = 1.0
var golden_price_multi: float = 1.0

func _on_pressed() -> void:
	if GameData.taco_coins >= price and %TacoSpawner.golden_chance <= 0.29:
		GameData.taco_coins -= price * golden_price_multi
		golden_price_multi += 0.2
		%TacoSpawner.golden_chance += 0.02
		print(%TacoSpawner.golden_chance)
