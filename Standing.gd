extends State

@export
var idle_state: State
@export
var walk_state: State
@export
var backwalk_state: State

var isStanding

func enter() -> void:
	isStanding = false
	super()
	await animations.animation_finished
	isStanding = true
	
func process_physics(delta: float) -> State:
	if isStanding:
		if Input.get_axis("backward", "forward") > 0:
			return walk_state
		if Input.get_axis("backward", "forward") < 0:
			return backwalk_state		
		return idle_state
	return null
