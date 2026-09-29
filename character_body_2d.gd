extends CharacterBody2D

func _physics_process(delta):
	if Input.is_action_pressed("right"):
		velocity.x = Vars.walk_speed
	elif Input.is_action_pressed("left"):
		velocity.x = Vars.walk_speed * -1
	else:
		if is_on_floor():
			velocity.x = 0
	if not is_on_floor():
		velocity.y += Vars.grav * delta
	
	if Input.is_action_pressed("jump"):
		if is_on_floor():
			velocity.y = Vars.jump_power
	move_and_slide()
