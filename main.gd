extends Spatial


# Declare member variables here. Examples:
# var a = 2
# var b = "text"



# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if randi() % 60 == 0:
		spawn_shroom()

func spawn_shroom():
	var shroom = preload("res://Shroom.tscn").instance()
	add_child(shroom)
	shroom.translate(Vector3(rand_range(-10,10), 0, rand_range(-10,10)))
	shroom.head_color = Color(rand_range(0,1),rand_range(0,1),rand_range(0,1))
	shroom.head_size = rand_range(1,4)
	shroom.height = rand_range(1,15)
