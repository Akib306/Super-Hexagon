extends AnimatableBody2D
class_name Obstacle

# Needed for _physics_process
var shrink_speed = 2.0

# Randomize the spawn direction
var rng = RandomNumberGenerator.new()
var rotation_direction = rng.randi_range(0, 360)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$CollisionPolygon2D.scale = Vector2.ONE*10.0
	self.rotate(rotation_direction)

func _physics_process(delta: float) -> void:
	
	$CollisionPolygon2D.scale -= Vector2.ONE * shrink_speed*delta

	#once tiny, delete
	if $CollisionPolygon2D.scale.x < .05:
		self.queue_free()
