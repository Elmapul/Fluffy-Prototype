extends "res://addons/godot_data_editor/data_item.gd"

export(String) var your_string_property = ""
export(bool) var your_boolean_property = true
export(Color) var your_color_property = Color(1,0,1)
export(String, "water","fire") var element="water"
export(int, 0, 999) var base_damage = 0
#export(Texture) var icon = null
#export(int, 0, 999) var mana_cost = 0
#export(String, "One Enemy","All Enemies") var target="One Enemy"
#export(PackedScene) var effect = null
#export(Sample) var sound = null



func _init(id).(id):
	pass
