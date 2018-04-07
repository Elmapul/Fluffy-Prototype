extends Node

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var global
var root
var parent

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

func init_root(global_node, root_node,  parent_node):
	global = global_node
	root = root_node
	parent = parent_node
