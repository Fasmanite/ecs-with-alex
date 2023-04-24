extends Node


func _process(delta):
	$Label.text = str(Engine.get_frames_per_second())
	$Label2.text = str(get_child_count()-3)

