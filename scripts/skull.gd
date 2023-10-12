extends StaticBody3D

var mouse_hover = false;

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("left_click") and mouse_hover:
		$".".queue_free()



func _on_mouse_entered():
	mouse_hover = true;
	pass # Replace with function body.


func _on_mouse_exited():
	mouse_hover = false;
	pass # Replace with function body.
