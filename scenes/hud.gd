extends Control

@onready var taco_label = $Label

var taco_count: int = 0

func update_tacos() -> void:
	if taco_label and "tacos" in GameData:
		taco_label.text = "Tacos: " + str(GameData.tacos)
