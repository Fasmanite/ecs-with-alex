extends Object

class_name Entity

var _components: Array[Component] = []
var _component_index = {}

func _init(_comp_arr: Array[Component] = []):
	SystemManager.entities.append(self)
	
	for _comp in _comp_arr:
		add_component(_comp)

func get_component(_name: StringName) -> Component:
	for _comp in _components:
		if _comp.name == _name:
			return _comp
	return null
#	return _component_index[_name]
	pass

func add_component(_comp):
	_components.append(_comp)
	_component_index[_comp.name] = _comp
	SystemManager.reg_component_owner(_comp, self)
	
	pass

func remove_component(_comp):
	var _idx = _components.find(_comp)
	if _idx:
		_components.remove_at(_idx)
		_component_index.erase(_comp.name)
		SystemManager.unreg_component_owner(_comp, self)
	pass

