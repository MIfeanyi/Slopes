extends Node

export var speed = 40
var direction = Vector2(0,0)
onready var tree = get_node("Tree")

func _randomize():
	tree.move_local_x(rand_range(0,480))
	pass
func _free():
	pass
func _ready():
	set_process(true)
	_randomize()
	pass

func _process(delta):
	if(flags.ALIVE == true && flags.PLAY == true):
		direction = Vector2(0,0)
		direction += Vector2(0,-1)
		tree.translate(direction * flags.SPEED * delta)
	if(flags.RESET ==true):
		queue_free()

func _on_Area2D_area_entered( area ):
	if area.get_parent().is_in_group("Tree"):
		print("delete")
		area.get_parent().get_parent().queue_free()
	pass # replace with function body
