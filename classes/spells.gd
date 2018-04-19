extends "res://addons/godot_data_editor/data_item.gd"

#class attacks:
export(String) var name = ""
export(String, "water","fire","thunder","ice","wind") var element="water"
export(int) var base_damage = 0 #negative for cure/healing
export(String, "hp","mp", "atk", "spd", "def")  var affects="hp"
export(String, "none","poison","paralisis","sleep","frozen") var effect="none"
export(String,"wet") var secondaryEffect="none" #wet make eletrical attacks became critical, but reduce fire attacks
export(bool) var Friend_Fire = false #true for cure/healing
export(int) var secondary_Effect=-1 #another attack index
export(String) var animation_Name = ""
export(int) var mana_cost = 0


#own mana type (pp in pokemon)
#type of mana (eg: ex bar, mana bar, elemental attack bar, rage bar...)
export(int) var hit_rate=0
export(int) var crit_rate=0
#export(String, "One Enemy","All Enemies") var target="One Enemy"
#export(PackedScene) var effect = null
#export(Sample) var sound = null
#export(bool) var your_boolean_property = true
#export(Color) var your_color_property = Color(1,0,1)
#export(Texture) var icon = null
#TODO
#attack count (ex: double slap)
#base damage
#percentage damage
#true damage (ignore defense)
#difference (speed, atk, weight)
#source of damage (enemy or player, atk, mp, etc)
#target: left, right, 1,2,n to left, area...
# buff,debuff...
#fusion with (ex: oil+fire)
#fusion result
#unusual target flamethrower+floor=rocket jump
#secondary effect (eg: fire creates an smoke screen)

func _init(id).(id):
	pass
