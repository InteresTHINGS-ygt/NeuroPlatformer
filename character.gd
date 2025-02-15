extends CharacterBody2D

@onready var timer: Timer = $Timer

var SPEED = 120.0
var JUMP_VELOCITY = -300.0


func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta
		
	# Handle jump.
	if Input.is_action_just_pressed("jump") and (is_on_floor() or not timer.is_stopped()):
		velocity.y = JUMP_VELOCITY
		timer.stop()

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("left", "right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		
	# Play animations
	
	if not is_on_floor():
		$AnimatedSprite2D.play("jump")
	elif direction != 0:
		$AnimatedSprite2D.play("move")
	else:
		$AnimatedSprite2D.play("normal")
		
	var was_on_floor = is_on_floor()
	
	move_and_slide()
	
	if (was_on_floor and !is_on_floor() and !Input.is_action_pressed("jump")):
		timer.start()
		
