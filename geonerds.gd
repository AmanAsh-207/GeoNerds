extends Node2D
var country_data = {

# ----- ASIA -----
"afghanistan": "asia",
"armenia": "asia",
"azerbaijan": "asia",
"bahrain": "asia",
"bangladesh": "asia",
"bhutan": "asia",
"brunei": "asia",
"cambodia": "asia",
"china": "asia",
"cyprus": "asia",
"georgia": "asia",
"india": "asia",
"indonesia": "asia",
"iran": "asia",
"iraq": "asia",
"israel": "asia",
"japan": "asia",
"jordan": "asia",
"kazakhstan": "asia",
"kuwait": "asia",
"kyrgyzstan": "asia",
"laos": "asia",
"lebanon": "asia",
"malaysia": "asia",
"maldives": "asia",
"mongolia": "asia",
"myanmar": "asia",
"nepal": "asia",
"northkorea": "asia",
"oman": "asia",
"pakistan": "asia",
"palestine":"asia",
"philippines": "asia",
"qatar": "asia",
"russia":"asia",
"saudiarabia": "asia",
"singapore": "asia",
"southkorea": "asia",
"srilanka": "asia",
"syria": "asia",
"taiwan": "asia",
"tajikistan": "asia",
"thailand": "asia",
"timorleste": "asia",
"turkey": "asia",
"turkmenistan": "asia",
"uae": "asia",
"uzbekistan": "asia",
"vietnam": "asia",
"yemen": "asia",


# ----- EUROPE -----
"albania": "europe",
"andorra": "europe",
"austria": "europe",
"belarus": "europe",
"belgium": "europe",
"bosniaandherzegovina": "europe",
"bulgaria": "europe",
"croatia": "europe",
"czechia": "europe",
"denmark": "europe",
"estonia": "europe",
"finland": "europe",
"france": "europe",
"germany": "europe",
"greece": "europe",
"hungary": "europe",
"iceland": "europe",
"ireland": "europe",
"italy": "europe",
"kosovo": "europe",
"latvia": "europe",
"liechtenstein": "europe",
"lithuania": "europe",
"luxembourg": "europe",
"malta": "europe",
"moldova": "europe",
"monaco": "europe",
"montenegro": "europe",
"netherlands": "europe",
"northmacedonia": "europe",
"norway": "europe",
"poland": "europe",
"portugal": "europe",
"romania": "europe",
"sanmarino": "europe",
"serbia": "europe",
"slovakia": "europe",
"slovenia": "europe",
"spain": "europe",
"sweden": "europe",
"switzerland": "europe",
"ukraine": "europe",
"uk": "europe",
"vaticancity": "europe",

# ----- AFRICA -----
"algeria": "africa",
"angola": "africa",
"benin": "africa",
"botswana": "africa",
"burkinafaso": "africa",
"burundi": "africa",
"caboverde": "africa",
"cameroon": "africa",
"centralafricanrepublic": "africa",
"chad": "africa",
"comoros": "africa",
"democraticrepublicofcongo": "africa",
"republicofcongo": "africa",
"cotedlvoire": "africa",
"djibouti": "africa",
"egypt": "africa",
"equatorialguinea": "africa",
"eritrea": "africa",
"eswatini": "africa",
"ethiopia": "africa",
"gabon": "africa",
"thegambia": "africa",
"ghana": "africa",
"guinea": "africa",
"guineabissau": "africa",
"kenya": "africa",
"lesotho": "africa",
"liberia": "africa",
"libya": "africa",
"madagascar": "africa",
"malawi": "africa",
"mali": "africa",
"mauritania": "africa",
"mauritius": "africa",
"morocco": "africa",
"mozambique": "africa",
"namibia": "africa",
"niger": "africa",
"nigeria": "africa",
"rwanda": "africa",
"saotomeandprincipe": "africa",
"senegal": "africa",
"seychelles": "africa",
"sierraleone": "africa",
"somalia": "africa",
"southafrica": "africa",
"southsudan": "africa",
"sudan": "africa",
"tanzania": "africa",
"togo": "africa",
"tunisia": "africa",
"uganda": "africa",
"zambia": "africa",
"zimbabwe": "africa",

# ----- NORTH AMERICA -----
"antiguaandbarbuda": "northamerica",
"bahamas": "northamerica",
"barbados": "northamerica",
"belize": "northamerica",
"canada": "northamerica",
"costarica": "northamerica",
"cuba": "northamerica",
"dominica": "northamerica",
"dominicanrepublic": "northamerica",
"elsalvador": "northamerica",
"grenada": "northamerica",
"guatemala": "northamerica",
"haiti": "northamerica",
"honduras": "northamerica",
"jamaica": "northamerica",
"mexico": "northamerica",
"nicaragua": "northamerica",
"panama": "northamerica",
"stkittsandnevis": "northamerica",
"stlucia": "northamerica",
"stvincentandthegrenadines": "northamerica",
"trinidadandtobago": "northamerica",
"usa": "northamerica",

# ----- SOUTH AMERICA -----
"argentina": "southamerica",
"bolivia": "southamerica",
"brazil": "southamerica",
"chile": "southamerica",
"colombia": "southamerica",
"ecuador": "southamerica",
"guyana": "southamerica",
"paraguay": "southamerica",
"peru": "southamerica",
"suriname": "southamerica",
"uruguay": "southamerica",
"venezuela": "southamerica",

# ----- OCEANIA -----
"australia": "oceania",
"fiji": "oceania",
"kiribati": "oceania",
"marshallislands": "oceania",
"micronesia": "oceania",
"nauru": "oceania",
"newzealand": "oceania",
"palau": "oceania",
"papuanewguinea": "oceania",
"samoa": "oceania",
"solomonislands": "oceania",
"tonga": "oceania",
"tuvalu": "oceania",
"vanuatu": "oceania"
}

var borders = {
# ---- ASIA ----
"india": ["pakistan", "china", "nepal", "bangladesh", "myanmar", "bhutan"],
"pakistan": ["india", "afghanistan", "iran", "china"],
"china": ["india", "pakistan", "nepal", "bhutan", "myanmar", "laos", "vietnam", "mongolia", "northkorea", "russia", "kazakhstan", "kyrgyzstan", "tajikistan"],
"nepal": ["india", "china"],
"bangladesh": ["india", "myanmar"],
"myanmar": ["india", "bangladesh", "china", "laos", "thailand"],
"thailand": ["myanmar", "laos", "cambodia", "malaysia"],
"laos": ["china", "myanmar", "thailand", "cambodia", "vietnam"],
"vietnam": ["china", "laos", "cambodia"],
"cambodia": ["thailand", "laos", "vietnam"],
"malaysia": ["thailand","brunei","indonesia"],
"northkorea": ["china", "southkorea", "russia"],
"southkorea": ["northkorea"],
"mongolia": ["china", "russia"],
"kazakhstan": ["russia", "china", "kyrgyzstan", "uzbekistan", "turkmenistan"],
"kyrgyzstan": ["kazakhstan", "china", "uzbekistan", "tajikistan"],
"tajikistan": ["kyrgyzstan", "china", "afghanistan", "uzbekistan"],
"uzbekistan": ["kazakhstan", "kyrgyzstan", "tajikistan", "afghanistan", "turkmenistan"],
"turkmenistan": ["kazakhstan", "uzbekistan", "iran", "afghanistan"],
"afghanistan": ["pakistan", "iran", "turkmenistan", "uzbekistan", "tajikistan", "china"],
"iran": ["pakistan", "afghanistan", "turkmenistan", "azerbaijan", "armenia", "turkey", "iraq"],
"iraq": ["iran", "turkey", "syria", "jordan", "saudiarabia", "kuwait"],
"syria": ["turkey", "iraq", "jordan", "israel", "lebanon"],
"lebanon": ["syria", "israel"],
"israel": ["palestine","lebanon", "syria", "jordan", "egypt"],
"palestine" : ["israel","jordan","egypt"],
"jordan": ["israel", "syria", "iraq", "saudiarabia"],
"saudiarabia": ["jordan", "iraq", "kuwait", "qatar", "uae", "oman", "yemen","bahrain"],
"oman": ["saudiarabia", "uae", "yemen"],
"yemen": ["oman", "saudiarabia"],
"uae": ["saudiarabia", "oman"],
"qatar": ["saudiarabia"],
"kuwait": ["iraq", "saudiarabia"],
"armenia": ["turkiye", "georgia", "azerbaijan", "iran"],
"azerbaijan": ["armenia", "georgia", "russia", "iran"],
"georgia": ["russia", "azerbaijan", "armenia", "turkiye"],
"turkiye": ["greece", "bulgaria", "georgia", "armenia", "iran", "iraq", "syria"],

# ---- EUROPE ----
"france": ["spain", "belgium", "luxembourg", "germany", "switzerland", "italy","monaco","andorra"],
"germany": ["france", "netherlands", "belgium", "luxembourg", "switzerland", "austria", "czechrepublic", "poland", "denmark"],
"spain": ["france", "portugal"],
"portugal": ["spain"],
"italy": ["france", "switzerland", "austria", "slovenia"],
"switzerland": ["france", "germany", "austria", "italy"],
"austria": ["germany", "czechrepublic", "slovakia", "hungary", "slovenia", "italy", "switzerland"],
"poland": ["germany", "czechrepublic", "slovakia", "ukraine", "belarus", "lithuania", "russia"],
"czechrepublic": ["germany", "poland", "slovakia", "austria"],
"slovakia": ["czechrepublic", "poland", "ukraine", "hungary", "austria"],
"hungary": ["austria", "slovakia", "ukraine", "romania", "serbia", "croatia", "slovenia"],
"romania": ["hungary", "ukraine", "moldova", "bulgaria", "serbia"],
"bulgaria": ["romania", "serbia", "northmacedonia", "greece", "turkey"],
"greece": ["albania", "northmacedonia", "bulgaria", "turkey"],
"albania": ["greece", "northmacedonia", "montenegro", "kosovo"],
"northmacedonia": ["albania", "greece", "bulgaria", "serbia", "kosovo"],
"serbia": ["hungary", "romania", "bulgaria", "northmacedonia", "kosovo", "montenegro", "bosniaandherzegovina", "croatia"],
"croatia": ["slovenia", "hungary", "serbia", "bosniaandherzegovina", "montenegro"],
"slovenia": ["italy", "austria", "hungary", "croatia"],
"bosniaandherzegovina": ["croatia", "serbia", "montenegro"],
"montenegro": ["croatia", "bosniaandherzegovina", "serbia", "kosovo", "albania"],
"kosovo": ["serbia", "montenegro", "albania", "northmacedonia"],
"belgium": ["france", "netherlands", "germany", "luxembourg"],
"netherlands": ["belgium", "germany"],
"luxembourg": ["france", "belgium", "germany"],
"denmark": ["germany"],
"norway": ["sweden", "finland", "russia"],
"sweden": ["norway", "finland"],
"finland": ["sweden", "norway", "russia"],
"estonia": ["latvia", "russia"],
"latvia": ["estonia", "lithuania", "russia"],
"lithuania": ["latvia", "poland", "belarus", "russia"],
"belarus": ["poland", "lithuania", "latvia", "russia", "ukraine"],
"ukraine": ["poland", "slovakia", "hungary", "romania", "moldova", "belarus", "russia"],
"moldova": ["romania", "ukraine"],
"russia": ["norway", "finland", "estonia", "latvia", "lithuania", "poland", "belarus", "ukraine", "georgia", "azerbaijan", "kazakhstan", "mongolia", "china", "northkorea"],
"andorra": ["france", "spain"],
"liechtenstein": ["switzerland", "austria"],
"sanmarino": ["italy"],
"vaticancity": ["italy"],
"iceland": [],
"ireland": ["unitedkingdom"],
"uk": ["ireland"],
# ---- AFRICA ----
"egypt": ["libya", "sudan", "israel"],
"libya": ["egypt", "sudan", "chad", "niger", "algeria", "tunisia"],
"tunisia": ["algeria", "libya"],
"algeria": ["tunisia", "libya", "niger", "mali", "mauritania", "morocco"],
"morocco": ["algeria"],
"mauritania": ["algeria", "mali", "senegal"],
"mali": ["algeria", "niger", "burkinafaso", "cotedivoire", "guinea", "senegal", "mauritania"],
"niger": ["algeria", "libya", "chad", "nigeria", "benin", "burkinafaso", "mali"],
"chad": ["libya", "sudan", "centralafricanrepublic", "cameroon", "nigeria", "niger"],
"sudan": ["egypt", "libya", "chad", "centralafricanrepublic", "southsudan", "ethiopia", "eritrea"],
"ethiopia": ["sudan", "southsudan", "kenya", "somalia", "djibouti", "eritrea"],
"kenya": ["ethiopia", "somalia", "tanzania", "uganda", "southsudan"],
"uganda": ["kenya", "tanzania", "rwanda", "southsudan", "democraticrepublicofthecongo"],
"tanzania": ["kenya", "uganda", "rwanda", "burundi", "democraticrepublicofthecongo", "zambia", "malawi", "mozambique"],
"southafrica": ["namibia", "botswana", "zimbabwe", "mozambique", "lesotho", "eswatini"],
"centralafricanrepublic": ["chad", "sudan", "southsudan", "democraticrepublicofthecongo", "republicofthecongo", "cameroon"],
"democraticrepublicofthecongo": ["centralafricanrepublic", "southsudan", "uganda", "rwanda", "burundi", "tanzania", "zambia", "angola", "republicofthecongo"],
"republicofthecongo": ["cameroon", "centralafricanrepublic", "democraticrepublicofthecongo", "angola", "gabon"],
"cameroon": ["nigeria", "chad", "centralafricanrepublic", "republicofthecongo", "gabon", "equatorialguinea"],
"gabon": ["cameroon", "republicofthecongo", "equatorialguinea"],
"equatorialguinea": ["cameroon", "gabon"],
"nigeria": ["benin", "niger", "chad", "cameroon"],
"benin": ["nigeria", "niger", "burkinafaso", "togo"],
"togo": ["ghana", "burkinafaso", "benin"],
"ghana": ["togo", "burkinafaso", "cotedivoire"],
"cotedivoire": ["mali", "burkinafaso", "ghana", "guinea", "liberia"],
"liberia": ["cotedivoire", "guinea", "sierraleone"],
"sierraleone": ["guinea", "liberia"],
"guinea": ["senegal", "mali", "cotedivoire", "liberia", "sierraleone", "guineabissau"],
"guineabissau": ["senegal", "guinea"],
"senegal": ["mauritania", "mali", "guinea", "guineabissau", "gambia"],
"gambia": ["senegal"],
"burkinafaso": ["mali", "niger", "benin", "togo", "ghana", "cotedivoire"],
"southsudan": ["sudan", "ethiopia", "kenya", "uganda", "democraticrepublicofthecongo", "centralafricanrepublic"],
"eritrea": ["sudan", "ethiopia", "djibouti"],
"djibouti": ["eritrea", "ethiopia", "somalia"],
"somalia": ["djibouti", "ethiopia", "kenya"],
"rwanda": ["uganda", "tanzania", "burundi", "democraticrepublicofthecongo"],
"burundi": ["rwanda", "tanzania", "democraticrepublicofthecongo"],
"angola": ["namibia", "zambia", "democraticrepublicofthecongo", "republicofthecongo"],
"zambia": ["angola", "democraticrepublicofthecongo", "tanzania", "malawi", "mozambique", "zimbabwe", "botswana", "namibia"],
"zimbabwe": ["southafrica", "botswana", "zambia", "mozambique"],
"botswana": ["southafrica", "namibia", "zambia", "zimbabwe"],
"namibia": ["southafrica", "botswana", "zambia", "angola"],
"mozambique": ["tanzania", "malawi", "zambia", "zimbabwe", "southafrica", "eswatini"],
"malawi": ["tanzania", "zambia", "mozambique"],
"lesotho": ["southafrica"],
"eswatini": ["southafrica", "mozambique"],
"madagascar": [],
"comoros": [],
"seychelles": [],
"mauritius": [],
"saotomeandprincipe": [],
"caboverde": [],



# ---- NORTH AMERICA ----
"usa": ["canada", "mexico"],
"canada": ["usa"],
"mexico": ["usa", "guatemala", "belize"],
"guatemala": ["mexico", "belize", "honduras", "elsalvador"],
"belize": ["mexico", "guatemala"],
"honduras": ["guatemala", "elsalvador", "nicaragua"],
"elsalvador": ["guatemala", "honduras"],
"nicaragua": ["honduras", "costarica"],
"costarica": ["nicaragua", "panama"],
"panama": ["costarica", "colombia"],

# ---- SOUTH AMERICA ----
"brazil": ["argentina", "bolivia", "peru", "colombia", "venezuela", "guyana", "suriname", "paraguay", "uruguay"],
"argentina": ["brazil", "bolivia", "paraguay", "uruguay", "chile"],
"chile": ["argentina", "bolivia", "peru"],
"bolivia": ["peru", "chile", "argentina", "paraguay", "brazil"],
"paraguay": ["bolivia", "argentina", "brazil"],
"uruguay": ["argentina", "brazil"],
"peru": ["ecuador", "colombia", "brazil", "bolivia", "chile"],
"colombia": ["panama", "venezuela", "brazil", "peru", "ecuador"],
"venezuela": ["colombia", "brazil", "guyana"],
"ecuador": ["colombia", "peru"],

# ---- OCEANIA ----
"australia": [],
"newzealand": []
}

@onready var cam: Camera2D = $MapContainer/Camera2D

var current_sprite = []
var last_country = ""
var selected_country = []


var FIRST_COLOR = Color("535d6cff")     
var BORDER_COLOR = Color("e2baecff")    
var NOT_BORDER_COLOR = Color("b10000ff") 

const MIN_ZOOM = Vector2(0.26, 0.24)
const MAX_ZOOM = Vector2(2, 2)

var first_zoom = false
var dragging = false
var drag_start = Vector2()
var cam_start = Vector2() 


func _ready():
	starting_country()



func starting_country():
	selected_country.clear()
	current_sprite.clear()
	var random_country = country_data.keys().pick_random()
	print("Starting country:", random_country)
	create_country(random_country, FIRST_COLOR)
	last_country = random_country
	selected_country.append(random_country)



func _input(event):

	# -------- DRAGGING LOGIC --------
	if event is InputEventMouseButton:

		if event.button_index == MOUSE_BUTTON_LEFT:
			dragging = event.pressed


		# -------- ZOOM LOGIC --------
		if event.button_index == MOUSE_BUTTON_WHEEL_DOWN:
			cam.zoom *= 0.9
			cam.zoom = cam.zoom.clamp(MIN_ZOOM, MAX_ZOOM)

		elif event.button_index == MOUSE_BUTTON_WHEEL_UP:
			cam.zoom *= 1.1
			cam.zoom = cam.zoom.clamp(MIN_ZOOM, MAX_ZOOM)

		# When fully zoomed out → return to center
		if cam.zoom == MIN_ZOOM:
			reset_camera_to_center()


	# -------- ACTUAL DRAG MOVEMENT --------
	elif event is InputEventMouseMotion and dragging:

		# Use RELATIVE movement for smoothness
		cam.position -= event.relative / cam.zoom


func reset_camera_to_center():
	var tween = create_tween()
	tween.tween_property(cam, "position", Vector2.ZERO, 0.4)



func create_country(country_name , color):

	for s in current_sprite:
		if s.name == country_name:
			print("Already exist")
			return

	var s = Sprite2D.new()
	s.name = country_name

	var continent_Name = country_data[country_name]
	var path = "res://seperated countries/" + continent_Name + "/" + country_name + ".png"

	s.texture = load(path)

	# Put sprite at center (or wherever your map system places them)
	s.position = Vector2.ZERO

	add_child(s)

	s.z_index = 10 
	s.modulate = color

	current_sprite.append(s)


func borders_previous(new_country):

	if last_country == "":
		return false
	if last_country in borders and new_country in borders[last_country]:
		return true
	return false

func is_valid_hard_mode(new_country):

	# Must border the last country
	if not borders_previous(new_country):
		return false

	# Must NOT border any earlier chosen country
	for c in selected_country:

		if c == last_country:
			continue

		if c in borders and new_country in borders[c]:
			print(new_country, "already borders", c)
			return false

	return true

func _on_submitbutton_pressed() -> void:
	var name = $InputBox.text.to_lower().strip_edges()
	name=name.replace(" ","")
	if name == "":
		return

	# If not a valid country, do nothing
	if not name in country_data:
		$InputBox.text = ""   # just clear box
		return
		
	if GameSettings.game_mode == "hard":

		if is_valid_hard_mode(name):

			create_country(name, BORDER_COLOR)
			print("Valid move in HARD MODE")

		else:

			create_country(name, NOT_BORDER_COLOR)
			print("INVALID move in HARD MODE - Game Over")
			await get_tree().create_timer(2.0).timeout
			reset()
			return



	# ---------- EASY MODE ----------
	else:
		if borders_previous(name):
			create_country(name, BORDER_COLOR)
			print("Correct move in EASY MODE")

		else:
			create_country(name, NOT_BORDER_COLOR)
			print("Wrong move in EASY MODE")
			reset()



	# Save progress
	last_country = name
	selected_country.append(name)

	$InputBox.text = ""

func reset():
	cam.zoom = Vector2(0.26,0.24)
	cam.position = Vector2(0,0)

	 # Remove all country sprites
	for s in current_sprite:
		s.queue_free()

	# Clear the list
	current_sprite.clear()

	# Reset previous country
	last_country = ""
	print("Game reset")
	starting_country()
	
