extends State

@export
var standing_state: State

func enter() -> void:
	super()

func process_physics(delta: float) -> State:
	if !Input.is_action_pressed("crouch"):
		return standing_state
	return null
