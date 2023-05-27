extends Node
class_name Component


var _name : StringName
var _data : Dictionary



func _init(componentName):
	_name = componentName
	_data["position"] = Vector2.ZERO
