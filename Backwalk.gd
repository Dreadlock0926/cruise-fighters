extends State

@export
var idle_state: State
@export
var walk_state: State
@export
var crouching_state: State

func enter() -> void:
	super()

func process_physics(delta: float) -> State:
	
	if Input.get_axis("backward", "forward") > 0:
		return walk_state
	elif Input.get_axis("backward", "forward") < 0:
		parent.velocity.x -= 1
		parent.position += parent.velocity.normalized() * speed * delta
	else:
		return idle_state
	
	if Input.is_action_pressed("crouch"):
		return crouching_state
	return null
	
	
