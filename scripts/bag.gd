extends Area2D

@export var speed: float = 500.0
@export var hud: Control

var screen_size: Vector2
var combo_count: int = 0

func _ready() -> void:
	area_entered.connect(_on_area_entered)
	screen_size = get_viewport_rect().size


func _process(delta: float) -> void:
	var direction = Input.get_axis("ui_left", "ui_right")
	position.x += direction * speed * delta
	
	position.x = clamp(position.x, 50.0, screen_size.x - 50.0)
	
func _on_area_entered(area: Area2D) -> void:
	if area.has_method("get_caught"):
		area.get_caught()
		
		combo_count += 1
		
		var earned_tacos = combo_count
		
		if hud:
			hud.update_tacos(earned_tacos)
		spawn_floating_text(earned_tacos, combo_count)
		
func reset_combo() -> void:
	combo_count = 0
	
func spawn_floating_text(amount: int, combo: int) -> void:
	var popup = Label.new()
	popup.set_script(load("res://FloatingText.gd"))
	
	var spawn_pos = global_position + Vector2(-10, -40)
	
	get_tree().current_scene.add_child(popup)
	
	popup.start(amount, combo, spawn_pos)
