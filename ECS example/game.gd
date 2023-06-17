extends Node



func _physics_process(delta):
	if Input.is_action_just_pressed("ui_page_down"):
		Ecs.entities[1].components[0].data["value"] = randi_range(0 , 5)
#			print(Ecs.entities[currentEntity].components[0].data)
	
	$Label.text = str(Engine.get_frames_per_second())
