extends Node2D

export (PackedScene) var obstacle

func _ready():
	repeat()

func spawn():
	var spawned = obstacle.instance()
	call_deferred("add_child", spawned)

func repeat():
	spawn()
	yield(get_tree().create_timer(2), "timeout")
	repeat()
