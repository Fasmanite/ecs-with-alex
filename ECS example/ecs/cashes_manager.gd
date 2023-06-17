extends Node



var component_owners_cashes : Dictionary = {}
var components_cashes : Dictionary = {}



func reg_component(_comp : Component , _comp_owner : Entity):
	if not component_owners_cashes.has(_comp.type):
		component_owners_cashes[_comp.type] = []
	component_owners_cashes[_comp.type] += [_comp_owner]
	
	if not components_cashes.has(_comp.type):
		components_cashes[_comp.type] = []
	components_cashes[_comp.type] += [_comp]
