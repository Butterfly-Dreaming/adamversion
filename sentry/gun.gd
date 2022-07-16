extends Spatial



class_name mynode2

#得到平移向量(对于某一点的平移向量)
func Return_xyz(xyz):

	return to_local(xyz)
#手动控制代码
func _physics_process(delta):
	if Input.is_action_pressed("yaw"):
		rotation.y += 0.0001
	if Input.is_action_pressed("yaw_d"):
		rotation.y -= 0.0001
	if Input.is_action_pressed("pitch"):
		rotation.x += 0.0001
	if Input.is_action_pressed("pitch_dowm"):
		rotation.x -= 0.0001
	


  
