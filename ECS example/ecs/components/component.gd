extends Node
class_name Component


var type : StringName
var data : Dictionary



func _init(_component_type : StringName , _data_arg : Dictionary):
	type = _component_type
	data = _data_arg
