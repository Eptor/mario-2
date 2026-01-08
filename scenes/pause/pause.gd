extends CanvasLayer

var main_menu: PackedScene = load("res://scenes/main_menu/main_menu.tscn")

func _physics_process(delta: float) -> void:
	get_input(delta)

func get_input(delta: float):
	if(Input.is_action_just_pressed("pause")):
		get_tree().paused = true
		visible = true

func _on_quit_pressed() -> void:
	get_tree().quit()


func _on_resume_pressed() -> void:
	visible = false
	get_tree().paused = false


func _on_main_menu_pressed() -> void:
	get_tree().paused = false
	get_tree().change_scene_to_packed(main_menu)
