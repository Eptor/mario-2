extends CanvasLayer

var main_level = preload("res://scenes/test_level/test_level.tscn")

func _on_start_pressed() -> void:
	SignalManager.on_reset.emit()
	get_tree().change_scene_to_packed(main_level)

func _on_credits_pressed() -> void:
	print("Si")

func _on_quit_pressed() -> void:
	get_tree().quit()
