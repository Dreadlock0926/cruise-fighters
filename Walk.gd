extends State

@export
var idle_state: State
@export
var backwalk_state: State

func enter() -> void:
	super()

func process_physics(delta: float) -> State:
	
	if Input.get_axis("backward", "forward") > 0:
		parent.velocity.x += 1
	elif Input.get_axis("backward", "forward") < 0:
		return backwalk_state
	else:
		return idle_state
	
	parent.position += parent.velocity.normalized() * speed * delta
	return null
	
	
