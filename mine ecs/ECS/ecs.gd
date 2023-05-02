extends Node

@onready var EntityHolder : = $EntityHolder
@onready var EntityTypes : = $EntityTypes


func _ready():
	_generate_entities()


func _generate_entities():
	for currentEntityType in EntityTypes.get_child_count():
		var entityType : = EntityTypes.get_child(currentEntityType)
		var numberOfExistingEntities : int
		var existingEntities : Array = EntityHolder.entities.values()
		
		for checkCurrentEntity in EntityHolder.entities.size():
			if existingEntities[checkCurrentEntity] == str(entityType.name):
				numberOfExistingEntities += 1
		
		EntityHolder.numberOfCertainEntities[entityType.name] = [entityType.numberOfEntities , numberOfExistingEntities]
		
		for currentEntity in (entityType.numberOfEntities - EntityHolder.numberOfCertainEntities[entityType.name][1]):
			if EntityHolder.entities.has(currentEntity):
				for checkCurrentEntity in EntityHolder.entities.size()+1:
					if not EntityHolder.entities.has(checkCurrentEntity):
						EntityHolder.entities[checkCurrentEntity] = str(entityType.name)
						break
			else:
				EntityHolder.entities[currentEntity] = str(entityType.name)
	
	print(EntityHolder.numberOfCertainEntities)


#func _physics_process(delta):
#	if Input.is_action_just_pressed("q"):
#		_generate_entities()
