extends Button





func _on_pressed() -> void:
	$"../TacoSpawner".visible = false
	$"../Bag".visible = false
	$"../HUD".visible = false
	$"../op".visible = false
	$"../Resturant".visible = true
	$"../hacka".visible = false
	$"../pro".visible = false
	$"../upgrade_frozen".visible = false
	$"../upgrade_spicy".visible = false
	$"../upgrade_gold".visible = false
	visible = false
