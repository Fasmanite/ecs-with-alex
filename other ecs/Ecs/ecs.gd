extends Node


var numberOfEntities : = 10
var entities : Array
var componentLinks : Dictionary

#HACK:
var _entity_types: Dictionary = {
	&"empty": [],
	&"not_empty": [Component.new("test")],
}

func duplicate_component(_comp) -> Component:
	return Component.new(_comp._name, _comp._data)

func generate_entity(_type) -> Entity:
	var _ent = Entity.new()
	
	for _comp in _entity_types[_type]:
		_ent._components.append(duplicate_component(_comp))
	
	return _ent

func _ready():
	for currentEntity in numberOfEntities:
		entities.append(generate_entity("empty"))
	
	#HACK:
#	for currentEntity in numberOfEntities/2:
#		entities.append(generate_entity("empty"))
#	for currentEntity in numberOfEntities/2:
#		entities.append(generate_entity("not_empty"))
