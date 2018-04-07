extends Node

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	var enemy = data.get_item("monsters", "slime")
	var enemyHP = enemy.HP
	
	var tecnica=data.get_item("spells", "fireball")
	var elemento=tecnica.element
	print(elemento)
	
	var aux = data.get_item("elements", "water") #elemento
	var desc = aux.descriptions
	print(desc)
	
	pass
