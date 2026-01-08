extends CanvasLayer

var main_menu = load("res://scenes/main_menu/main_menu.tscn")

func _ready() -> void:
	SignalManager.on_player_defeated.connect(show_game_over)

func show_game_over():
	get_tree().paused = true
	visible = true 

func _on_main_menu_pressed() -> void:
	get_tree().paused = false
	get_tree().change_scene_to_packed(main_menu)

func _on_quit_pressed() -> void:
	get_tree().quit()
