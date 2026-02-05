extends Node2D
@onready var main_sprite: Sprite2D = $Sprite2D

func _ready():
	correct_ans()
	
func correct_ans():
	main_sprite.modulate = Color(0,0,1)
