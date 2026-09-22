extends Node2D

const TACO = preload("uid://oyjm4g70q2t7")

@export var bag: Area2D

func _ready() -> void:
	spawn_tacos()

func spawn_tacos() -> void:
	var taco = TACO.instantiate()
	taco.position = Vector2(
		randf_range(50, 1150),
		randf_range(-500, 0)
	)
	
	taco.missed.connect(_on_taco_missed)
	taco.tree_exited.connect(_on_taco_despawned)
	add_child(taco)

func _on_taco_missed() -> void:
	if bag and bag.has_method("reset_combo"):
		bag.reset_combo()
		
func _on_taco_despawned() -> void:
	var random_delay = randf_range(0.1, 1.2)
	await get_tree().create_timer(random_delay).timeout
	spawn_tacos()
	
