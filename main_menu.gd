extends Control

@onready var offWale: Node2D = $Node2D

@onready var red: ColorRect = $red
@onready var blue: ColorRect = $Blue



@onready var hard: Button = $hard
@onready var easy: Button = $easy

@onready var compass: Button = $compass

var is_spinning = false
var spin_speed = 300


#func _ready():
	## Update mode button text when menu opens
	#$Node2D/difficulty_button.text = "Mode: " + GameSettings.game_mode.to_upper()
#
func _process(delta):
	if is_spinning:
		compass.rotation_degrees += spin_speed * delta

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
	is_spinning = true
	#await get_tree().create_timer(5.0).timeout
	#get_tree().change_scene_to_file("res://geonerds.tscn")


func stop_and_select(target_angle, mode):
	is_spinning = false

	var tween = create_tween()
	tween.tween_property(compass, "rotation_degrees", target_angle, 1).set_trans(Tween.TRANS_BACK)

	await tween.finished

	GameSettings.game_mode = mode
	
		
	await get_tree().create_timer(1.0).timeout
	get_tree().change_scene_to_file("res://geonerds.tscn")
 

func _on_easy_pressed() -> void:
		stop_and_select(-45, "easy")



func _on_hard_pressed() -> void:
	stop_and_select(45, "hard")
