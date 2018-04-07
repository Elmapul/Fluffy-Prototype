extends Node

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	#print(classes)
	print(globals.teste)
	if not Globals.get("is_a_cake"):
    	print("The cake is a lie!")
	
	

	
	
	
	pass










func _on_dataEditor_pressed():
	get_tree().change_scene("res:///addons/godot_data_editor/data_editor_gui.tscn")
	pass # replace with function body




func _on_newGame_pressed():
	newGame()
	pass # replace with function body

func newGame():
	print("novo jogo")
	get_tree().change_scene("res:///scenes/begining_librarie.tscn")
	pass