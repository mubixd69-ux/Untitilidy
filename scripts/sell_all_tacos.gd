extends Button

@export var ui: Control
var TacoCoin:float = 0
var random_price:float = 2.0

func _ready() -> void:
	random_price = randf_range(1.5, 2.5)
	
	var timer = Timer.new()
	timer.wait_time = 60.0
	timer.autostart = true
	timer.timeout.connect(_change_price)
	add_child(timer)
	
func _change_price():
	random_price = randf_range(1.5, 2.5)

func _pressed() -> void:
	var tacos_sold = GameData.taco_count
	
	TacoCoin += tacos_sold * random_price
	print(tacos_sold)
	print(random_price)
	GameData.taco_count = 0
	
	$"../money".text = str(TacoCoin)
	
