extends Control

@onready var offWale: Node2D = $Node2D

@onready var animation_player: AnimationPlayer = $hard/AnimationPlayer

@onready var hard: Button = $hard
@onready var easy: Button = $easy

@onready var compass: Button = $compass
@onready var pointer: Polygon2D = $compass/pointer
@onready var pointer_outline: Polygon2D = $"compass/pointer outline"
@onready var dial: Sprite2D = $compass/dial

var is_spinning = false
var spin_speed = 300

@onready var start: Button = $Node2D/start

func _process(delta):
	if is_spinning:
		compass.rotation_degrees += spin_speed * delta

func stop_and_select(target_angle, mode):
	is_spinning = false
	var tween = create_tween()
	tween.tween_property(compass, "rotation_degrees", target_angle, 1).set_trans(Tween.TRANS_BACK).set_ease(Tween.EASE_IN)
	await tween.finished
	GameSettings.game_mode = mode
	if mode == "hard":
		animation_player.play("SlideLeft")
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
	#await get_tree().create_timer(5.0).timeout
	#get_tree().change_scene_to_file("res://geonerds.tscn")


func _on_hard_pressed() -> void:
	stop_and_select(45, "hard")

func _on_easy_pressed() -> void:
	stop_and_select(-145, "easy")
