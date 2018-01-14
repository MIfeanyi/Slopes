extends Node
export var spawnAmount = 3
onready var Tree = preload("res://scenes/Assets/Tree.tscn")

func spawn():
	for x in range(spawnAmount):
		var t = Tree.instance()
		add_child(t)
	pass

func _ready():
	spawn()
	pass

func _process(delta):
	pass
