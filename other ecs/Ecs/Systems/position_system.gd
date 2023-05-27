extends Node




func _on_timer_timeout():
	print("tick")
	for currentEntity in Ecs.numberOfEntities:
		print(Ecs.componentLinks)
#		Ecs.entities[currentEntity].components[0]._data["position"] += Vector2( 0.1 , 0)
