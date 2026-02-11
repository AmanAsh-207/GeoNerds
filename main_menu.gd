extends Control

@onready var offWale: Node2D = $Node2D

@onready var volume: Button = $Node2D/volume


@onready var hard: Button = $hard
@onready var easy: Button = $easy

@onready var compass: Button = $compass
@onready var pointer: Polygon2D = $compass/pointer
@onready var pointer_outline: Polygon2D = $"compass/pointer outline"
@onready var dial: Sprite2D = $compass/dial
@onready var text_difficulty_choose: Label = $text_difficulty_choose

var is_spinning = false
var spin_speed = 500

@onready var start: Button = $Node2D/start

func _process(delta):
	if is_spinning:
		compass.rotation_degrees = fmod(compass.rotation_degrees + spin_speed * delta, 360)


func stop_and_select(target_angle, mode):
	is_spinning = false
	var tween = create_tween()
	
	var current = fmod(compass.rotation_degrees, 360)

	# Make sure target is ahead of current rotation
	var final_angle = target_angle

	while final_angle <= current:
		final_angle += 360

	# Add extra revolutions for smooth slow-down
	final_angle += 360   # 1 full extra spin
	# You can change this to 720 for 2 extra spins

	tween.tween_property(compass, "rotation_degrees", final_angle, 3.0) \
		.set_trans(Tween.TRANS_CUBIC) \
		.set_ease(Tween.EASE_OUT)
	await tween.finished
	GameSettings.game_mode = mode
	await get_tree().create_timer(1.0).timeout
	get_tree().change_scene_to_file("res://geonerds.tscn")
 


func _on_start_pressed() -> void:
	pointer.visible = true
	pointer_outline.visible = true
	dial.visible = true 
	offWale.visible = false
	hard.visible = true
	easy.visible = true 
	is_spinning = true
	text_difficulty_choose.visible = true
	
	#compass.get_theme_stylebox("normal").shadow_size = 0
	
	
	#await get_tree().create_timer(5.0).timeout
	#get_tree().change_scene_to_file("res://geonerds.tscn")


func _on_hard_pressed() -> void:
	stop_and_select(45, "hard")

func _on_easy_pressed() -> void:
	stop_and_select(245, "easy")
