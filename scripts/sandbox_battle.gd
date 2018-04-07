extends Node

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var playerHp
var playerStatus

var enemyHp
var enemyStatus

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass


func _on_Button_pressed():
	useAttack(0)
	pass 


func _on_Button1_pressed():
	useAttack(1)
	pass

func useAttack(index):
	var attack=Globals.get("atklist")	
	var curDmg = attack[index].get_val() #current damage being aplied
	var curLife=get_node("Panel/ProgressBar").get_val()
	enemyHp=curLife-curDmg
	get_node("Panel/ProgressBar").set_value(enemyHp)
	
	pass