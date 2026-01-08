extends CanvasLayer

var main_level = preload("res://scenes/test_level/test_level.tscn")
var credits_menu = preload("res://scenes/credits/credits.tscn")

func _on_start_pressed() -> void:
	SignalManager.on_reset.emit()
	get_tree().change_scene_to_packed(main_level)

func _on_credits_pressed() -> void:
	get_tree().change_scene_to_packed(credits_menu)

func _on_quit_pressed() -> void:
	get_tree().quit()
