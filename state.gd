class_name State
extends Node

@export
var animation_name: String
@export
var speed: float = 200

var animations: AnimatedSprite2D
var parent: CharacterBody2D

func enter() -> void:
	animations.play(animation_name)
	
func exit() -> void:
	pass
	
func process_input(event: InputEvent) -> State:
	return null

func process_physics(delta: float) -> State:
	return null
	
