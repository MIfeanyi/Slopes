extends Node

var PLAY = false
var ALIVE = true
var RESET = false
var SPEED = 100
var ROCK_RESET = false
var TREE_RESET = false

func _ready():
	pass

func _process(delta):
	if RESET ==true:
		reset()
	pass

func reset():
	if ROCK_RESET == true and TREE_RESET == true:
		RESET = false
	pass