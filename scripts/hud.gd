extends Control

@onready var taco_label = $CanvasLayer/TacoLabel

func update_tacos() -> void:
	taco_label.text = "Tacos: " + str(GameData.taco_count)
