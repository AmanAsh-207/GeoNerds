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
const DP_1 = preload("uid://wphpp3gnx3bo")
const DP_2 = preload("uid://oqo4klrdsf8e")
const DP_3 = preload("uid://b3vel5unwdush")
const DP_4 = preload("uid://ct3kr34mepbbf")
const DP_5 = preload("uid://c6ngw8ag5dm4y")
const DP_6 = preload("uid://b2n5kfbjfoe52")
@onready var dp: Button = $login_ui/DP


#LeaderBoard


func _ready():
	SupabaseManager.login_success.connect(_on_login_success)
	SupabaseManager.login_failed.connect(_on_login_failed)
	SupabaseManager.account_created.connect(_on_account_created)
	SupabaseManager.load_leaderboards()
	if not Global.is_guest:
		guest_label.text = Global.username
		easy_best_data.text = str(Global.easy_highscore)
		hard_best_data.text = str(Global.hard_highscore)
	
	SupabaseManager.leaderboards_loaded.connect(_on_leaderboards_loaded)

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
 
@onready var on_click: AudioStreamPlayer = $OnClick

func _on_start_pressed() -> void:
	leaderboard_panel.visible = false
	easy_best_text.visible = false
	easy_best_data.visible = false
	hard_best_text.visible = false
	hard_best_data.visible = false
	login_ui.visible = false
	hard.disabled = false
	easy.disabled = false
	on_click.play()
	await get_tree().create_timer(0.3).timeout
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
	on_click.play()
	stop_and_select(45, "hard")

func _on_easy_pressed() -> void:
	on_click.play()
	stop_and_select(245, "easy")

 


@onready var easy_text: RichTextLabel = $LeaderboardPanel/EasyText
@onready var hard_text: RichTextLabel = $LeaderboardPanel/HardText
@onready var leaderboard_panel: Panel = $LeaderboardPanel
func _on_leaderboards_loaded(data):

	var easy_data = data.duplicate()
	var hard_data = data.duplicate()

	easy_data.sort_custom(
		func(a,b):
			return a["easy_highscore"] > b["easy_highscore"]
	)

	hard_data.sort_custom(
		func(a,b):
			return a["hard_highscore"] > b["hard_highscore"]
	)
	
	Global.easy_leaderboard = easy_data
	Global.hard_leaderboard = hard_data
	var easy_string = ""
	var hard_string = ""

	for i in range(min(5, easy_data.size())):

		easy_string += str(i + 1)
		easy_string += ". "
		easy_string += easy_data[i]["username"]
		easy_string += " - "
		easy_string += str(easy_data[i]["easy_highscore"])
		easy_string += "\n"

	for i in range(min(5, hard_data.size())):

		hard_string += str(i + 1)
		hard_string += ". "
		hard_string += hard_data[i]["username"]
		hard_string += " - "
		hard_string += str(hard_data[i]["hard_highscore"])
		hard_string += "\n"

	easy_text.text = easy_string
	hard_text.text = hard_string


@onready var login_ui: Node2D = $login_ui
@onready var username_input: LineEdit = $login_bg/LoginPanel/UsernameInput
@onready var password_input: LineEdit = $login_bg/LoginPanel/PasswordInput
@onready var request: HTTPRequest = $SupabaseRequest
@onready var guest_label: Label = $login_ui/Guest_label
@onready var easy_best_text: Label = $EasyBestText
@onready var easy_best_data: Label = $EasyBestData
@onready var hard_best_text: Label = $HardBestText
@onready var hard_best_data: Label = $HardBestData
@onready var login_bg: Node2D = $login_bg
const SUPABASE_URL = "https://gvpymhzzjcbaosbfessi.supabase.co" 
const SUPABASE_KEY = "sb_publishable_szmd1Ofdt1XEB-QDY9kqyQ_HUbx8-ss"
var pending_username = ""
var pending_password = ""
var login_open = false

func _on_nameplate_pressed() -> void:
	login_open = !login_open
	login_bg.visible = true
	easy_best_text.visible = false
	easy_best_data.visible = false
	hard_best_text.visible = false
	hard_best_data.visible = false
	hard.disabled = login_open
	easy.disabled = login_open
	username_input.grab_focus()
	


func _on_submit_login_pressed() -> void:
	var username = username_input.text.strip_edges()
	var password = password_input.text.strip_edges()
	
	if username == "" and password == "":
		Global.username = "Guest"
		Global.is_guest = true
		login_bg.visible = false

		print("Guest Mode")
		return

	if username == "" or password == "":
		print("Fill both fields")
		return


	pending_username = username
	pending_password = password
	print("Checking account...")
	SupabaseManager.login(username, password)
	login_bg.visible = false


func _on_login_success():
	dp.icon = DP_3
	easy_best_text.visible = true
	easy_best_data.visible = true
	easy_best_data.text = str(Global.easy_highscore)
	hard_best_text.visible = true
	hard_best_data.visible = true
	hard_best_data.text = str(Global.hard_highscore)
	guest_label.text = Global.username
	leaderboard_panel.visible = true
	login_open = !login_open
	print("Login successful!")

func _on_login_failed():
	print("Incorrect password!")

func _on_account_created():
	print("Account created!")


func _on_close_login_pressed() -> void:
	login_open = !login_open
	login_bg.visible = false
	#login_panel.visible = login_open
	
	if login_open:
		username_input.grab_focus()
