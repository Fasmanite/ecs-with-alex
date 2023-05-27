extends CharacterBody2D

var speed : int = 120

func _physics_process(delta):
	var direction = Input.get_vector("ui_left", "ui_right" , "ui_up" , "ui_down" )
	
	velocity = direction * speed
	
	move_and_slide()
