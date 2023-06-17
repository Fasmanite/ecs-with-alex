extends Node2D


var sprites : Array

class sprite:
	var position : = Vector2.ZERO


func _ready():
	for current_sprite in CashesManager.components_cashes["texture"].size():
		var _sprite = sprite.new()
		sprites.push_back(_sprite)
		sprites[current_sprite].position.y = randi_range(0 , 720)


func _process(delta):
	queue_redraw()


func _draw():
	for current_sprite in CashesManager.components_cashes["texture"].size():
		sprites[current_sprite].position += Vector2(0.1 , 0)
		draw_texture(preload("res://icon.svg") , sprites[current_sprite].position )
