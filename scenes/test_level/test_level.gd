extends Node2D


func _on_goal_area_entered(area: Area2D) -> void:
	SignalManager.on_win.emit()
