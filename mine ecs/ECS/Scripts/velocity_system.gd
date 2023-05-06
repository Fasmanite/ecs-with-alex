extends Node

class_name VelocitySystem

var _vel = &'velocity'
var _pos = &'position'
var _vec = Vector2.RIGHT * 10
# Called when the node enters the scene tree for the first time.
#func _ready():
#	_update()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	_update()
	pass

func _update():
	for _entity in SystemManager.components_cashes[_vel]:
		_entity.get_component(_vel).data[_pos] += _vec
		pass
