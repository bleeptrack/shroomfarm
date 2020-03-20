extends Camera


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#OS.get_ticks_msec()
	#transform.looking_at(Vector3(0,0,0),Vector3(1,0,0))
	var pos = Vector3(cos(OS.get_ticks_msec()*0.0001)*15,5,sin(OS.get_ticks_msec()*0.0001)*15)
	var target = Vector3(0,0,0)
	var up = Vector3(0,1,0)
	look_at_from_position(pos, target, up)
	
	
