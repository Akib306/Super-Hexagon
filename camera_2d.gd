extends Camera2D

# Rotation speed (in radians per second)
var rotation_speed = 1.0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	# Increment the camera's rotation by the rotation speed times the delta (time elapsed)
	rotation += rotation_speed * delta
