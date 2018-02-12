extends Container

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

func _process(delta):
	if flags.ALIVE == true:
		hide()
	else:
		show()
	pass


func _on_Reset_pressed():
	flags.RESET = true
	pass # replace with function body
