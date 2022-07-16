extends Label


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass





func _on__plant_xyz(point):
	var format_string = "the enemy(%s) in plant is (%s)"
	var actual_string = format_string % [Vector3(0,0,0), point]
	self.text = actual_string


	
