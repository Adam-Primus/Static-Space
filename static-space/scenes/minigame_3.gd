extends Node2D
@onready var themed_timer: Node2D = $ThemedTimer

var hit = 0
var timer_end = false

func _ready() -> void:
	await themed_timer.Timer(20.0)
	timer_end = true 

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if hit == 1:
		get_tree().change_scene_to_file("res://scenes/timer_scene.tscn")
		Global.lives -= 1
		Global.minigames_done -= 1
		
	if hit == 0:
		if timer_end:
			get_tree().change_scene_to_file("res://scenes/timer_scene.tscn")

func _on_block_hit() -> void:
	hit += 1
