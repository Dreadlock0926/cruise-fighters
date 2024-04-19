class_name Player
extends CharacterBody2D

@onready
var movement_animations: AnimatedSprite2D = $movement_animations

@onready 
var movement_state_machine: Node = $movement_state_machine

func _ready() -> void:
	var velocity
	movement_state_machine.init(self, movement_animations)

func _unhandled_input(event: InputEvent) -> void:
	movement_state_machine.process_input(event)

func _physics_process(delta: float) -> void:
	velocity = Vector2.ZERO
	movement_state_machine.process_physics(delta)
