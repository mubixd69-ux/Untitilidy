extends Button

@export var price: float = 1.0
var frozen_price_multi: float = 1.0
func _on_pressed() -> void:
	if GameData.taco_coins >= price and %TacoSpawner.frozen_chance <= 0.19:
		GameData.taco_coins -= price * frozen_price_multi
		frozen_price_multi += 0.2
		print(price * frozen_price_multi)
		%TacoSpawner.frozen_chance += 0.02
		print(%TacoSpawner.frozen_chance)
