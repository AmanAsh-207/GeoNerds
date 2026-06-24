extends Node

const SUPABASE_URL = "https://gvpymhzzjcbaosbfessi.supabase.co"
const SUPABASE_KEY = "sb_publishable_szmd1Ofdt1XEB-QDY9kqyQ_HUbx8-ss"

var pending_username = ""
var pending_password = ""

var login_request : HTTPRequest
var leaderboard_request : HTTPRequest

signal login_success
signal login_failed
signal account_created
signal highscore_saved
signal leaderboards_loaded(data)



func _ready():

	login_request = HTTPRequest.new()
	add_child(login_request)

	leaderboard_request = HTTPRequest.new()
	add_child(leaderboard_request)

	login_request.request_completed.connect(
		_on_login_request_completed
	)

	leaderboard_request.request_completed.connect(
		_on_leaderboard_request_completed
	)

func login(username: String, password: String):
	
	pending_username = username
	pending_password = password

	check_user(username)


func check_user(username: String):

	var headers = [
		"apikey: " + SUPABASE_KEY,
		"Authorization: Bearer " + SUPABASE_KEY
	]

	var url = SUPABASE_URL + "/rest/v1/players?username=eq." + username

	login_request.request(url, headers, HTTPClient.METHOD_GET)



func create_user():

	var headers = [
		"apikey: " + SUPABASE_KEY,
		"Authorization: Bearer " + SUPABASE_KEY,
		"Content-Type: application/json",
        "Prefer: return=representation"
	]

	var body = JSON.stringify({
		"username": pending_username,
		"password": pending_password,
		"easy_highscore": 0,
		"hard_highscore": 0
	})

	login_request.request(
		SUPABASE_URL + "/rest/v1/players",
		headers,
		HTTPClient.METHOD_POST,
		body
	)



func _on_login_request_completed(
	result: int,
	response_code: int,
	headers: PackedStringArray,
	body: PackedByteArray
):

	var text = body.get_string_from_utf8()

	print("Response Code:", response_code)
	print(text)

	if response_code != 200 and response_code != 201:
		return

	if response_code == 201:
		print("Account created")
		emit_signal("account_created")
		return

	var data = JSON.parse_string(text)
	
	
	
	if data is Array:

		if data.size() == 0:
			print("Creating account...")
			create_user()
			return

		var user = data[0]

		if user["password"] != pending_password:
			emit_signal("login_failed")
			return

		Global.username = user["username"]
		Global.easy_highscore = user["easy_highscore"]
		Global.hard_highscore = user["hard_highscore"]
		Global.is_guest = false

		emit_signal("login_success")


func save_easy_highscore():

	var headers = [
		"apikey: " + SUPABASE_KEY,
		"Authorization: Bearer " + SUPABASE_KEY,
		"Content-Type: application/json"
	]

	var body = JSON.stringify({
		"easy_highscore": Global.easy_highscore
	})

	var url = SUPABASE_URL + \
	"/rest/v1/players?username=eq." + Global.username

	login_request.request(
		url,
		headers,
		HTTPClient.METHOD_PATCH,
		body
	)


func save_hard_highscore():

	var headers = [
		"apikey: " + SUPABASE_KEY,
		"Authorization: Bearer " + SUPABASE_KEY,
		"Content-Type: application/json"
	]

	var body = JSON.stringify({
		"hard_highscore": Global.hard_highscore
	})

	var url = SUPABASE_URL + \
	"/rest/v1/players?username=eq." + Global.username

	login_request.request(
		url,
		headers,
		HTTPClient.METHOD_PATCH,
		body
	)

func load_leaderboards():

	var headers = [
		"apikey: " + SUPABASE_KEY,
		"Authorization: Bearer " + SUPABASE_KEY
	]

	var url = SUPABASE_URL + \
	"/rest/v1/players?select=username,easy_highscore,hard_highscore"

	leaderboard_request.request(
		url,
		headers,
		HTTPClient.METHOD_GET
	)

func _on_leaderboard_request_completed(
	result,
	response_code,
	headers,
	body
):

	if response_code != 200:
		return

	var text = body.get_string_from_utf8()

	var data = JSON.parse_string(text)

	emit_signal(
		"leaderboards_loaded",
		data
	)
