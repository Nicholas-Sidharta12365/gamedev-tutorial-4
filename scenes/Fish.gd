extends RigidBody2D

export var sceneName = "LoseScreen"

func _on_Area2D_body_entered(body: Node) -> void:
	if body.get_name() == "Player":
		get_tree().change_scene(str("res://scenes/" + sceneName + ".tscn"))
