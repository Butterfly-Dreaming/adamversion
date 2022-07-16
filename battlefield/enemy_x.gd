extends TextEdit


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

signal put_the_enemy_x(x)
# Called when the node enters the scene tree for the first time.
func send():
	emit_signal("put_the_enemy_x",text)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
