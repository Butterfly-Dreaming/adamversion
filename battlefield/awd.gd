extends Spatial


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

signal plant_xyz(point)
signal gun_xyz(point)
onready var plant = get_node("枪的第一次转动")#控制轴1
onready var gun = get_node("枪的第一次转动/枪的第二次转动")#控制轴2
var enemy=Vector3(-2,-1,-3)#敌人的坐标
# Called when the node enters the scene tree for the first time.
func _ready():
	pass
func _process(delta):
	
	var point_plant =to_local(enemy)
	var point_gun = gun.Return_xyz(enemy)#得到平移向量
	emit_signal("plant_xyz",point_plant)
	emit_signal("gun_xyz",point_gun)

#旋转方式
func _on_Button_button_down():
	var PnP_point = gun.Return_xyz(enemy)
	#得到云台坐标系的点
	var yaw = atan(PnP_point.y/PnP_point.z)
	
	var pitch = asin(PnP_point.x/sqrt(PnP_point.dot(PnP_point)))
	
	var R1 = Vector3(-yaw,0,0)
	var R2 = Vector3(0,-pitch,0)
	plant.set_rotation(R1)
	gun.set_rotation(R2)
	


func _on_enemy_x_put_the_enemy_x(x):
	enemy.x=x as float


func _on_enemy_y_put_the_enemy_y(x):
	enemy.y=x as float # Replace with function body.


func _on_enemy_Z_put_the_enemy_z(x):
	enemy.z=x as float # Replace with function body.
