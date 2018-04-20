extends Node

var selected=[]
var currentAttacks=[2,3,3,3]
var enemyHP=100
var playerHP=100
var playerStatus="paralisado"

func _ready():
	#var teste=data.get_item("elements", "water")
	#var selected=[]
	#selected.resize(8)
	#var elementos = data.get_items("elements")
	#for elemento in elementos.values():
	#	selected[0]=elemento
	#	print(selected[0].name)
	#pass
	var teste=data.get_item("spells", "Rain")
	
	var contar=0
	selected.resize(8)
	var ataques = data.get_items("spells")
	for ataque in ataques.values():
		selected[contar]=ataque
		#print(selected[contar].name)
		#print(selected[contar].base_damage)
		contar+=1
	#for var butt in get_child("Buttons"):
	var aux0 =4 #get_child_count("Buttons")
	for butt in range(0,aux0):
		get_node("Buttons").get_child(butt).set_text(selected[currentAttacks[butt]].name)
		print(butt)
	pass
	


func _on_Button_pressed():
	useAttack(0)
	pass 

func _on_Button1_pressed():
	useAttack(1)
	pass 


func _on_Button2_pressed():
	useAttack(2)
	pass 


func _on_Button3_pressed():
	useAttack(3)
	pass 


func useAttack(aux):
	
	var cAtk=currentAttacks[aux]
	var hitRate=0

		#hitRate=selected[cAtk].hitRate
	var canAttack=testStatus()
	if(canAttack):
		var hasHit=randi()%11+1
		if (hasHit+hitRate >5):
			print("acertou? ", hasHit)
			var damage=selected[cAtk].base_damage 
			#damage+=+ playerAtk
			var hasCrit=randi()%11+1
			if (hasCrit>5):
				damage*=2
				print("golpe critico!")
			enemyHP-=damage
			get_node("eHP").set_value(enemyHP)
		else:
			print("errou") #com a voz do faustão



func testStatus():
		if (playerStatus=="paralisado"||playerStatus=="dormindo"):
			var curePar=randi()%11+1
			if (curePar>9):
				playerStatus=""
				print("recuperou da paralisia") #
				return true
			else:
				print("não pode atacar devido à paralisia")
				return false
		else:
			return true

var attackList=[]