extends Node2D
@onready var spaceship: CharacterBody2D = $"../spacecraft"
@onready var my_area = $Area2D
@onready var spacecraft_area = $"../spacecraft/Area2D"

signal block_is_hit
var velocity = 100

func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.x -= velocity * delta
	if spacecraft_area.overlaps_area(my_area):
		emit_signal("block_is_hit")
		
		
		
		
