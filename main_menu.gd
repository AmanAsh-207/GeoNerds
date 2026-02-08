extends Control

@onready var offWale: Node2D = $Node2D


@onready var hard: Button = $hard
@onready var easy: Button = $easy

#func _ready():
	## Update mode button text when menu opens
	#$Node2D/difficulty_button.text = "Mode: " + GameSettings.game_mode.to_upper()
#
#func _on_mode_selector_pressed() -> void:
	#if GameSettings.game_mode == "easy":
		#GameSettings.game_mode = "hard"
		#$difficulty_button.text = "Mode: HARD"
	#else:
		#GameSettings.game_mode = "easy"
		#$difficulty_button.text = "Mode: EASY"

func _on_start_pressed() -> void:
	offWale.visible = false
	hard.visible = true
	easy.visible = true
	#await get_tree().create_timer(5.0).timeout
	#get_tree().change_scene_to_file("res://geonerds.tscn")




func _on_easy_pressed() -> void:
	GameSettings.game_mode = "easy"
	get_tree().change_scene_to_file("res://geonerds.tscn")


func _on_hard_pressed() -> void:
	GameSettings.game_mode = "hard"
	get_tree().change_scene_to_file("res://geonerds.tscn")
