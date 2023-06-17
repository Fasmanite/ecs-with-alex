extends Node
class_name Entity

var type : StringName
var components : Array[Component]

func _init(_entity_type):
	type = _entity_type

