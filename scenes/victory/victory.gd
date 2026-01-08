extends CanvasLayer

var main_menu = load("res://scenes/main_menu/main_menu.tscn")

func _ready() -> void:
	SignalManager.on_win.connect(on_win)

func on_win():
	visible = true
	get_tree().paused = true

func _on_main_pressed() -> void:
	get_tree().paused = false
	get_tree().change_scene_to_packed(main_menu)


func _on_quit_pressed() -> void:
	get_tree().quit()
