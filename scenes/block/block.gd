extends StaticBody2D

const FRUIT_SCENE: PackedScene = preload("res://scenes/fruit/fruit.tscn")
var punched: bool = false

@onready var hitbox: CollisionShape2D = $Hitbox/Bottom
@onready var sprite: Sprite2D = $Sprite2D


func _on_hitbox_area_entered(area: Area2D) -> void:
	if not punched:
		print("Fruta generada")
		var fruit = FRUIT_SCENE.instantiate()
		fruit.position.y -= 15
		add_child(fruit)
		hitbox.set_deferred("disabled", true)
		var tween = get_tree().create_tween()
		tween.set_loops(1)
		tween.tween_property(sprite, "scale", Vector2(1.5, 1.5), 0.25)
		tween.tween_property(sprite, "scale", Vector2(1.0, 1.0), 0.25)
