extends Control


func _ready():
	# Update mode button text when menu opens
	$difficulty_button.text = "Mode: " + GameSettings.game_mode.to_upper()

func _on_mode_selector_pressed() -> void:
	if GameSettings.game_mode == "easy":
		GameSettings.game_mode = "hard"
		$ModeButton.text = "Mode: HARD"
	else:
		GameSettings.game_mode = "easy"
		$ModeButton.text = "Mode: EASY"

func _on_start_pressed() -> void:
	get_tree().change_scene_to_file("res://geonerds.tscn")
