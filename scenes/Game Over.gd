extends Container

func _ready():
	pass

func _process(delta):
	if flags.ALIVE == true:
		hide()
	else:
		show()
	pass


func _on_Reset_pressed():
	flags.RESET = true


func _on_Quit_pressed():
	get_tree().quit()
