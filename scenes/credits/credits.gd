extends CanvasLayer

var main_menu = load("res://scenes/main_menu/main_menu.tscn")


func _on_texture_button_pressed() -> void:
	get_tree().change_scene_to_packed(main_menu)
