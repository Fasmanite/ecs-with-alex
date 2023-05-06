extends Node

var entities: Array[Entity] = []
var components_cashes = {}

func _ready():
	
	var i = 10000
	while i > 0:
		Entity.new([Component.new(&'velocity', {&'position': Vector2.ZERO})])
		i -= 1
		pass
	
	var _vel = VelocitySystem.new()
	add_child(_vel)
	pass

#HACK:
func reg_component_owner(_comp, _comp_owner):
	if not components_cashes.has(_comp.name):
		var _arr: Array[Entity] = []
		components_cashes[_comp.name] = _arr
	components_cashes[_comp.name] += [_comp_owner]

#HACK:
func unreg_component_owner(_comp, _comp_owner):
	if components_cashes.has(_comp.name):
		var _idx = components_cashes[_comp.name].find(_comp_owner)
		if _idx:
			components_cashes[_comp.name].remove_at(_comp_owner)
			pass

