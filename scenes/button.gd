extends Button





func _on_pressed() -> void:
	$"../../TacoSpawner".visible = true
	$"../../Bag".visible = true
	$"../../HUD".visible = true
	$"../../Change scene".visible = true
	$"../../op".visible = true
	$"../../hacka".visible = true
	$"../../pro".visible = true
	$"../../upgrade_frozen".visible = true
	$"../../upgrade_spicy".visible = true
	$"../../upgrade_gold".visible = true
	$"..".visible = false
