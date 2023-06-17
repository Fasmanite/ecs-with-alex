extends Node


@onready var visual_holder : Node = get_parent().get_node("VisualHolder")


func _physics_process(delta):
	for component in CashesManager.components_cashes["texture"]:
		pass

