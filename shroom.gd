extends CSGMesh


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

export var head_color = Color.aqua setget change_head_color
export var head_size = 4 setget change_head_size
export var height = 4 setget change_height

var growing = true
# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func change_head_color(color):
	$Head.material.albedo_color = color
	
func change_head_size(size):
	$Head.mesh.bottom_radius = size

func change_height(h):
	mesh.height = h
	height = h
	scale = Vector3(0.01, 0.01, 0.01)
	#transform = Transform.IDENTITY
	translate(Vector3(0, h/2, 0))
	$Head.transform = Transform.IDENTITY
	$Head.translate(Vector3(0, h/2, 0))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if scale.y < 1 and growing:
		scale *= 1.01


func _on_collide(area):
	growing = false
