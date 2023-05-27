extends Node


var numberOfEntities : = 1
var entities : Array
var componentLinks : Dictionary

func _ready():
	for currentEntity in numberOfEntities:
		entities.append(Entity.new())
