extends Spatial


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

signal plant_xyz(point)
signal gun_xyz(point)
onready var plant = get_node("枪的第一次转动")#控制轴1
onready var gun = get_node("枪的第一次转动/枪的第二次转动")#控制轴2
var enemy=Vector3(-1,-1,-1)#敌人的坐标
# Called when the node enters the scene tree for the first time.
func _ready():
	pass
func _process(delta):
	
	var point_plant =to_local(enemy)
	var point_gun = gun.Return_xyz(enemy)#得到平移向量
	emit_signal("plant_xyz",point_plant)
	emit_signal("gun_xyz",point_gun)

#旋转方式
func _physics_process(delta):
	if Input.is_action_pressed("move_r"):
		translation.x += 0.05
	if Input.is_action_pressed("move_l"):
		translation.x -= 0.05
	if Input.is_action_pressed("move_f"):
		translation.y += 0.05
	if Input.is_action_pressed("move_b"):
		translation.y -= 0.05
func _on_Button_button_down():
	var PnP_point =to_local(enemy)
	var PNP_TO = plant.Return_xyz(enemy)
	
	#得到云台坐标系的点
	var pitch = atan(PnP_point.x/PnP_point.z)
	var yaw = atan(PnP_point.y*cos(pitch)/PnP_point.z)
	print(PNP_TO)
	print(plant.rotation)
	
	
	var R1 = Vector3(-yaw,pitch,0)

	plant.set_rotation(R1)

	


func _on_enemy_x_put_the_enemy_x(x):
	enemy.x=x as float


func _on_enemy_y_put_the_enemy_y(x):
	enemy.y=x as float # Replace with function body.


func _on_enemy_Z_put_the_enemy_z(x):
	enemy.z=x as float # Replace with function body.
