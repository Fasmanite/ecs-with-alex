extends Node


var number_of_entities : = 10000
var entities : Array[Entity]




func generate_entity(_type) -> Entity:
	var _entity = Entity.new(_type)
	
	# creating components
	for _current_сomponent in EntityExamples.examples[_type].size():
		var _component_name = EntityExamples.examples[_type][_current_сomponent]
		var _component_data = ComponentExamples.examples[_component_name]
		_entity.components.append(Component.new(_component_name , _component_data))
		# reg component cash
		CashesManager.reg_component(_entity.components[_current_сomponent] , _entity)
	
	return _entity



func _ready():
	for currentEntity in number_of_entities:
		entities.append(generate_entity("godot"))
