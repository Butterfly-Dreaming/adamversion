extends Spatial
class_name mynode
func Return_xyz(xyz):
	return to_local(xyz)
func _physics_process(delta):
	if Input.is_action_pressed("yaw"):
		rotation.y += 0.0001
	if Input.is_action_pressed("yaw_d"):
		rotation.y -= 0.0001
	if Input.is_action_pressed("pitch"):
		rotation.x += 0.0001
	if Input.is_action_pressed("pitch_dowm"):
		rotation.x -= 0.0001
	
