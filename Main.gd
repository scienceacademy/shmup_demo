extends Node

var EnemyScene = preload("res://Enemy.tscn")

func _ready():
	randomize()
	
func _on_Timer_timeout():
	var new_enemy = EnemyScene.instance()
	add_child(new_enemy)
	var pos = Vector2(rand_range(0, 500), 50)
	var direction = Vector2(1, 0).rotated(rand_range(PI/4, 3*PI/4))
	new_enemy.spawn(pos, direction)
