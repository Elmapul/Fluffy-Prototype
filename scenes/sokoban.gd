extends Node

#apagar cena box.tscn

var internalScene = null
var externalScene = null

#to-do
#criar um script para o player
var x=120
var y=60
#variables relative to check if can move and input
var mx=0
var my=0


func _ready():
	
	set_process_input(true)
	
	var aux= get_node("TileMap")
	var aux2=0 		#initialize variable with a  type
	var Box=get_node("Node/Box")
	var temp=Vector2() #initialize vector
#	temp=Vector2(30.0,30.0) #give it an value (delete later)
#	Box.set_pos(temp)
##
	
	#get_node("Node/Box").add_child(Box)
	
#	Box.set_global_pos(0,0)
	
	
	var testX=0
	var testY=0
	for testX in range(20):
		for testY in range(20):
			aux2=aux.get_cell(testX,testY)
			
			if(aux2==1):
				aux.set_cell( testX, testY,-1, false, false, false )
				temp=Vector2((testX*60),(testY*60)) 
				Box.set_pos(temp) #current its moving, we should create an new obj at this poss
				#############
				#externalScene = load('res://scenes/tilesets/box.tscn').instance()
				externalScene = load('res://scenes/caixa.tscn').instance()
				var gbl=get_node("game")
				var rtt=get_node("externo")
				
				externalScene.init_root(gbl, rtt, self)
				#self.add_child(externalScene)
				rtt.add_child(externalScene)
				externalScene.set_pos(temp)
				
				#var boxList=get_node("externo")
				
				print("quantidade root: ",rtt.get_child_count())

				
				
				
				
			pass
	
	
	
	
	checkBox()
	pass
	
	
    


func _input(event):
	#isso será dentro do script do player
	var aux= get_node("TileMap")
	var aux3= Vector2(x,y)
	mx=0
	my=0
	
	
	if event.is_action_pressed("ui_left"):  
		mx=-1
		checkMove(aux)
		
	if event.is_action_pressed("ui_right"):  
		mx=1
		checkMove(aux)
	if event.is_action_pressed("ui_up"):  
		my=-1
		checkMove(aux)
	if event.is_action_pressed("ui_down"):  
		my=1
		checkMove(aux)
		
	aux3=Vector2((x),(y)) 		
	#-1 em branco
	#0=parede
	#1=caixa

	get_node("Sprite").set_pos(aux3)
func checkMove(aux):
	var aux2=aux.get_cell((x/60)+mx,(y/60)+my)#aux2=the desired position
	if(aux2==-1): #check if the block is a wall
		#falta VERIFICAR LAYER DAS CAIXAS!
		x+=(60*mx)
		y+=(60*my)
		pass
	
	pass

func checkBox():
	var rtt=get_node("externo")
	var teste=rtt.get_child(2)
	teste.tryMove()
	
	#print("checkbox: ", teste.get_pos())
	pass