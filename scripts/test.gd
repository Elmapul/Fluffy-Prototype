extends Node

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var internalScene = null
var externalScene = null

########
#o script pra instanciar um obj externo não pode ficar em root, se não self será root ¬¬ 
########


func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	print("test: ",self.get_child_count())
	pass
