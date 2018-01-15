extends Node2D
export var speed = 10
var direction = Vector2(0,0)
onready var anim = get_node("AnimationPlayer")

func _ready():
	set_process(true)
	pass

func _process(delta):
	if(flags.ALIVE == true && flags.PLAY ==true):
		$Particles2D.set_emitting(true)
		direction = Vector2(0,0)
		
		if(Input.is_key_pressed(KEY_UP)):
			direction += Vector2(0,-1)
		if(Input.is_key_pressed(KEY_DOWN)):
			direction += Vector2(0,1)
		if(Input.is_key_pressed(KEY_LEFT)):
			anim.play("Left")
			direction += Vector2(-1,0)
		if(Input.is_key_pressed(KEY_RIGHT)):
			anim.play("Right")
			direction += Vector2(1,0)
			
		translate(direction * flags.SPEED * delta)
	else:
		$Particles2D.set_emitting(false)
	if flags.ALIVE == false:
		
		anim.play("Dead")
	if(Input.is_key_pressed(KEY_SPACE)):
		flags.PLAY = true

func _on_Area2D_area_entered( area ):
	if area.get_parent().is_in_group("Tree") or area.get_parent().is_in_group("Rock") :
		flags.ALIVE = false
	pass # replace with function body
