extends State

@export
var idle_state: State

var isStanding

func enter() -> void:
	isStanding = false
	super()
	await animations.animation_finished
	isStanding = true
	
func process_physics(delta: float) -> State:
	if isStanding:
		return idle_state
	return null
