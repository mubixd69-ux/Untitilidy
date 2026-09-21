extends Node2D

const TACO = preload("uid://oyjm4g70q2t7")

func spawn_tacos():
			var taco = TACO.instantiate()
			taco.position = Vector2(
			randf_range(50, 1150),
			randf_range(-500, 0))
			add_child(taco)


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var timer =Timer.new() 
	timer.wait_time = 1
	timer.timeout.connect(spawn_tacos)
	add_child(timer)
	timer.start()
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
