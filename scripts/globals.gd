extends Node

var teste=20


func _ready():

	
	#var thing = attacks.new(100)
	
	Globals.set("atklist", [])
	Globals.get("atklist").append(attacks.new(5,"ataque normal"))
	Globals.get("atklist").append(attacks.new(10,"ataque especial"))
	
	#print (thing.get_val()) # print out the value of thing
	#thing.set_val(50)  # change the value to 50
	#print(thing.get_val()) # print out the new value
	
	pass
	
	
class attacks:
	var dmg #negative for healing
	var name
	var affects #hp, mp, spd
	var effect #poison, paralisis etc
	var friendfire #true for healing
	var secondaryEffect #another attack index
	var animationName
	

	func _init(dmg,name):
		self.dmg = dmg
		self.name=name
		

	func set_val(arg):
		self.dmg = arg
		

	func get_val():
		return self.dmg



