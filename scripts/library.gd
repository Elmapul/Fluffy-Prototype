extends Node

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
#var maxLetters=1;
#var full_text="nossa esse capitulo de zaruto piece z foi de de mais! \n mal posso esperar pelo próximo! \n acho que falta pouco pra eles finalmente encontrarem o z piece."

var chapter="inicio"
var dialog="Fluffy1"
var start_at=0



func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	#SMRT=
	#SMRT.show_text(chapter, dialog, start_at)
	#dialog.show_text(chapter, dialog, start_at)
	get_node("dialog").show_text(chapter, dialog, start_at)
	
	
	#var partial_text=full_text.substr(0,maxLetters)
	#get_node("Patch9Frame/Label").set_text(partial_text)
	#get_node("Timer").start()
	pass


func _on_Timer_timeout():
	
	#maxLetters+=1
	#var partial_text=full_text.substr(0,maxLetters)
	#get_node("Patch9Frame/Label").set_text(partial_text)
	pass # replace with function body
	
	
	
	
	
	
