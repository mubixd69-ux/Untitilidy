extends Node2D

const TACO = preload("uid://oyjm4g70q2t7")

@export var bag: Area2D
@export var ui: Control

func _ready() -> void:
	spawn_tacos()

func spawn_tacos() -> void:
	var taco = TACO.instantiate()
	taco.position = Vector2(
		randf_range(50, 1150),
		randf_range(-500, 0)
	)
	
	if bag and "combo_count" in bag and taco.has_method("set_combo"):
		taco.set_combo(bag.combo_count)
	
	taco.missed.connect(_on_taco_missed)
	taco.tree_exited.connect(_on_taco_despawned)
	add_child(taco)

func _on_taco_missed() -> void:
	if bag and bag.has_method("reset_combo"):
		bag.reset_combo()
		




func _on_taco_despawned() -> void:
	if not is_inside_tree():
		return
		
	var combo = 0
	if bag and "combo_count" in bag:
		combo = bag.combo_count
		
	var speed_boost = min(combo * 0.08, 0.8)
	
	var min_delay = max(0.05, 0.3 - speed_boost)
	var max_delay = max(0.15, 1.2 - speed_boost)
	
	var random_delay = randf_range(min_delay, max_delay)
	
	await get_tree().create_timer(random_delay).timeout
	spawn_tacos()
	
