extends Button

var is_muted = false

var icon_on
var icon_off

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	icon_on = preload("res://volume.png")
	icon_off = preload("res://volume (1).png")

	icon = icon_on



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_pressed() -> void:
	is_muted = !is_muted

	if is_muted:
		icon = icon_off
		AudioServer.set_bus_mute(0, true)
	else:
		icon = icon_on
		AudioServer.set_bus_mute(0, false)
