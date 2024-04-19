extends State

@export
var crouched_state: State

var isCrouching

func enter() -> void:
	isCrouching = false
	super()
	await animations.animation_finished
	isCrouching = true
	
func process_physics(delta: float) -> State:
	if isCrouching:
		return crouched_state
	return null
