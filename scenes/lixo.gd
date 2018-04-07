extends Sprite

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var global
var root
var parent
var indice
var teste
var aux

func _ready():
	
	
	
	# Called every time the node is added to the scene.
	# Initialization here
	pass

func init_root(global_node, root_node,  parent_node):
	global = global_node
	root = root_node
	parent = parent_node
	
	indice=root.get_child_count()
	if(indice>0):
		teste =root.get_child(indice-1)
		#print("minhas coordenadas: ",teste.get_pos())

func tryMove():
	var aux=root.get_child(indice-1)
	var newPos=Vector2(2.0,2.0)
	##verificar se a posição está disponível, se estiver mover!
	aux.set_pos(newPos)
	
	print(indice," ",aux.get_pos())
	pass
