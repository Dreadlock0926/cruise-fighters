extends State

@export
var walk_state: State
@export
var backwalk_state: State
@export
var crouching_state: State

func enter() -> void:
	super()

func process_input(event: InputEvent) -> State:
	if Input.get_axis("backward", "forward") > 0:
		return walk_state
	if Input.get_axis("backward", "forward") < 0:
		return backwalk_state
	
	if Input.is_action_pressed("crouch"):
		return crouching_state
	return null

