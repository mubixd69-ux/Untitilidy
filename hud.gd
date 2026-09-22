extends Control

@onready var taco_label = $CanvasLayer/TacoLabel

var taco_count: int = 0

func update_tacos(amount: int) -> void:
	taco_count += amount
	taco_label.text = "Tacos: " + str(taco_count)
