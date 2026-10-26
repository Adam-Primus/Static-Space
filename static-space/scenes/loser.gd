extends Node2D

func _on_los_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/title-scenes.tscn")
	Global.minigames_done = 0
	Global.lives = 3
