extends Node
class_name Component


var _name : StringName
var _data : Dictionary



func _init(componentName, _data_arg: Dictionary = {}):
	_name = componentName
	_data = _data_arg
	_data["position"] = Vector2.ZERO
