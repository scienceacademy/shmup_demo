extends Area2D

export var speed = 150
var bullet

func spawn(pos, dir):
	position = pos
	rotation = dir.angle()
	
func _process(delta):
	position += transform.x * speed * delta
