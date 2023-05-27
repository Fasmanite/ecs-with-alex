extends Node2D


func _physics_process(delta):
	$Label.text = str(Engine.get_frames_per_second())
	
