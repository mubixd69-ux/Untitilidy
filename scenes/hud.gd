extends Control

@onready var taco_label = $CanvasLayer/TacoLabel

var taco_count: int = 0

func _ready() -> void:
	update_tacos()

func update_tacos() -> void:
	if taco_label and "taco_count" in GameData:
		taco_label.text = "Tacos: " + str(GameData.taco_count) + "/" + str(GameData.max_bag_capacity)
