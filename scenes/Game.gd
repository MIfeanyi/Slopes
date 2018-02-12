extends Node
export var spawnAmount = 3
onready var Tree = preload("res://scenes/Assets/Tree.tscn")
onready var Rock = preload("res://scenes/Assets/Rock.tscn")

func spawn(type):
	if(flags.ALIVE == true && flags.PLAY == true):
		print("Type: ",type)
		if type == "Tree":
			for x in range(spawnAmount):
				var t = Tree.instance()
				add_child(t)
		if type == "Rock":
			for x in range(spawnAmount):
				var r = Rock.instance()
				add_child(r)

func _ready():
	spawn("Tree")
	spawn("Rock")
	pass

func _process(delta):
	if has_node("Rock"):
		flags.ROCK_RESET = false
	else:
		flags.ROCK_RESET = true
		
	if has_node("Tree"):
		flags.TREE_RESET = false
	else:
		flags.TREE_RESET = true
	pass
