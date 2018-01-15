extends Node

export var speed = 40
var direction = Vector2(0,0)
onready var Rock = get_node("Rock")

func _randomize():
	Rock.move_local_x(rand_range(0,480))
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
		Rock.translate(direction * flags.SPEED * delta)

func _on_Area2D_area_entered( area ):
	if area.get_parent().is_in_group("Rock"):
		print("delete rock")
		area.get_parent().get_parent().queue_free()
	pass # replace with function body
