extends Resource

class_name Component

@export var name: StringName
@export var data = {}

func _init(_name, _data = {}):
	name = _name
	data = _data
