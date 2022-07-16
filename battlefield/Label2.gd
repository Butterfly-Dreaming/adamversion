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


func _on__gun_xyz(point):
	var format_string = "the enemy in  gun is \n (%s)"
	var actual_string = format_string % [ point]
	self.text = actual_string
