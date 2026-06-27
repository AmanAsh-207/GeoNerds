extends Node2D
var new_country_data={
	#	Asia
	"afghanistan": "asia",
	"armenia": "asia",
	"azerbaijan": "asia",
	"bangladesh": "asia",
	"bhutan": "asia",
	"brunei": "asia",
	"cambodia": "asia",
	"china": "asia",
	"georgia": "asia",
	"india": "asia",
	"indonesia": "asia",
	"iran": "asia",
	"iraq": "asia",
	"israel": "asia",
	"jordan": "asia",
	"kazakhstan": "asia",
	"kuwait": "asia",
	"kyrgyzstan": "asia",
	"laos": "asia",
	"lebanon": "asia",
	"malaysia": "asia",
	"mongolia": "asia",
	"myanmar": "asia",
	"nepal": "asia",
	"northkorea": "asia",
	"oman": "asia",
	"pakistan": "asia",
	"palestine":"asia",
	"qatar": "asia",
	"russia":"asia",
	"saudiarabia": "asia",
	"southkorea": "asia",
	"syria": "asia",
	"tajikistan": "asia",
	"thailand": "asia",
	"timorleste": "asia",
	"turkey": "asia",
	"turkmenistan": "asia",
	"uae": "asia",
	"uzbekistan": "asia",
	"vietnam": "asia",
	"yemen": "asia",

	#Europe
	"albania": "europe",
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
	"ireland": "europe",
	"italy": "europe",
	"kosovo": "europe",
	"latvia": "europe",
	"liechtenstein": "europe",
	"lithuania": "europe",
	"luxembourg": "europe",
	"moldova": "europe",
	"montenegro": "europe",
	"netherlands": "europe",
	"northmacedonia": "europe",
	"norway": "europe",
	"poland": "europe",
	"portugal": "europe",
	"romania": "europe",
	"serbia": "europe",
	"slovakia": "europe",
	"slovenia": "europe",
	"spain": "europe",
	"sweden": "europe",
	"switzerland": "europe",
	"ukraine": "europe",
	"uk": "europe",

	#Africa
	"algeria": "africa",
	"angola": "africa",
	"benin": "africa",
	"botswana": "africa",
	"burkinafaso": "africa",
	"burundi": "africa",
	"cameroon": "africa",
	"centralafricanrepublic": "africa",
	"chad": "africa",
	"democraticrepublicofcongo": "africa",
	"republicofcongo": "africa",
	"cotedivoire": "africa",
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
	"malawi": "africa",
	"mali": "africa",
	"mauritania": "africa",
	"morocco": "africa",
	"mozambique": "africa",
	"namibia": "africa",
	"niger": "africa",
	"nigeria": "africa",
	"rwanda": "africa",
	"senegal": "africa",
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

	#North America
	"belize": "northamerica",
	"canada": "northamerica",
	"costarica": "northamerica",
	"dominicanrepublic": "northamerica",
	"elsalvador": "northamerica",
	"guatemala": "northamerica",
	"haiti": "northamerica",
	"honduras": "northamerica",
	"mexico": "northamerica",
	"nicaragua": "northamerica",
	"panama": "northamerica",
	"usa": "northamerica",

	#South America
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

	#Oceania
	"papuanewguinea": "oceania",
}

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
	"cotedivoire": "africa",
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

var country_focus = {
	"algeria": Vector2(-103.0, 191.0),
	"angola": Vector2(82.0, 656.0),
	"benin": Vector2(-96.0, 422.0),
	"botswana": Vector2(160.0, 788.0),
	"burkinafaso": Vector2(-140.0, 388.0),
	"burundi": Vector2(219.0, 566.0),
	"caboverde": Vector2(-396.0, 344.0),
	"cameroon": Vector2(19.0, 444.0),
	"centralafricanrepublic": Vector2(117.0, 453.0),
	"chad": Vector2(91.0, 348.0),
	"comoros": Vector2(378.0, 663.0),
	"cotedivoire": Vector2(-186.0, 442.0),
	"democraticrepublicofcongo": Vector2(125.0, 574.0),
	"djibouti": Vector2(363.0, 393.0),
	"egypt": Vector2(229.0, 211.0),
	"equatorial": Vector2(-9.0, 501.0),
	"eritrea": Vector2(331.0, 353.0),
	"eswatini": Vector2(236.0, 839.0),
	"ethiopia": Vector2(340.0, 423.0),
	"gabon": Vector2(10.0, 537.0),
	"ghana": Vector2(-134.0, 437.0),
	"guinea": Vector2(-252.0, 415.0),
	"guineabissau": Vector2(-296.0, 393.0),
	"kenya": Vector2(310.0, 522.0),
	"lesotho": Vector2(199.0, 879.0),
	"liberia": Vector2(-230.0, 454.0),
	"libya": Vector2(74.0, 216.0),
	"madagascar": Vector2(412.0, 746.0),
	"malawi": Vector2(269.0, 679.0),
	"mali": Vector2(-168.0, 324.0),
	"mauritania": Vector2(-246.0, 282.0),
	"mauritius": Vector2(533.0, 762.0),
	"morocco": Vector2(-203.0, 147.0),
	"mozambique": Vector2(283.0, 745.0),
	"namibia": Vector2(89.0, 796.0),
	"niger": Vector2(-30.0, 324.0),
	"nigeria": Vector2(-24.0, 424.0),
	"republicofcongo": Vector2(47.0, 535.0),
	"rwanda": Vector2(218.0, 549.0),
	"saotomeprincipe": Vector2(-43.0, 518.0),
	"senegal": Vector2(-287.0, 362.0),
	"seychelles": Vector2(509.0, 581.0),
	"sierraleone": Vector2(-256.0, 432.0),
	"somalia": Vector2(404.0, 470.0),
	"southafrica": Vector2(187.0, 958.0),
	"southsudan": Vector2(216.0, 439.0),
	"sudan": Vector2(222.0, 349.0),
	"tanzania": Vector2(276.0, 600.0),
	"thegambia": Vector2(-297.0, 375.0),
	"togo": Vector2(-113.0, 430.0),
	"tunisia": Vector2(-14.0, 120.0),
	"uganda": Vector2(245.0, 512.0),
	"zambia": Vector2(195.0, 678.0),
	"zimbabwe": Vector2(210.0, 748.0),
	"afghanistan": Vector2(650.0, 117.0),
	"armenia": Vector2(391.0, 31.0),
	"azerbaijan": Vector2(420.0, 30.0),
	"bahrain": Vector2(453.0, 223.0),
	"bangladesh": Vector2(907.0, 251.0),
	"bhutan": Vector2(908.0, 203.0),
	"brunei": Vector2(1184.0, 476.0),
	"cambodia": Vector2(1073.0, 384.0),
	"china": Vector2(1065.0, 62.0),
	"cyprus": Vector2(258.0, 103.0),
	"georgia": Vector2(371.0, -3.0),
	"india": Vector2(821.0, 275.0),
	"indonesia": Vector2(1223.0, 556.0),
	"iran": Vector2(489.0, 135.0),
	"iraq": Vector2(376.0, 127.0),
	"israel": Vector2(278.0, 152.0),
	"japan": Vector2(1414.0, 96.0),
	"jordan": Vector2(301.0, 154.0),
	"kazakhstan": Vector2(641.0, -103.0),
	"kuwait": Vector2(419.0, 180.0),
	"kyrgyzstan": Vector2(729.0, 14.0),
	"laos": Vector2(1061.0, 317.0),
	"lebanon": Vector2(286.0, 119.0),
	"malaysia": Vector2(1125.0, 481.0),
	"maldives": Vector2(715.0, 485.0),
	"mongolia": Vector2(1061.0, -79.0),
	"myanmar": Vector2(979.0, 303.0),
	"nepal": Vector2(836.0, 192.0),
	"northkorea": Vector2(1331.0, 27.0),
	"oman": Vector2(514.0, 277.0),
	"pakistan": Vector2(666.0, 163.0),
	"palestine": Vector2(275.0, 147.0),
	"philippines": Vector2(1265.0, 378.0),
	"qatar": Vector2(461.0, 230.0),
	"russia": Vector2(1073.0, -589.0),
	"saudiarabia": Vector2(392.0, 242.0),
	"singapore": Vector2(1061.0, 512.0),
	"southkorea": Vector2(1341.0, 90.0),
	"srilanka": Vector2(798.0, 438.0),
	"syria": Vector2(323.0, 106.0),
	"taiwan": Vector2(1246.0, 252.0),
	"tajikistan": Vector2(689.0, 49.0),
	"thailand": Vector2(1034.0, 377.0),
	"timorleste": Vector2(1309.0, 628.0),
	"turkey": Vector2(280.0, 47.0),
	"turkmenistan": Vector2(557.0, 46.0),
	"uae": Vector2(493.0, 243.0),
	"uzbekistan": Vector2(613.0, 11.0),
	"vietnam": Vector2(1083.0, 343.0),
	"yemen": Vector2(431.0, 348.0),
	"albania": Vector2(107.0, 15.0),
	"andorra": Vector2(-104.0, -6.0),
	"austria": Vector2(29.0, -89.0),
	"belarus": Vector2(196.0, -198.0),
	"belgium": Vector2(-72.0, -138.0),
	"bosniaandherzegovina": Vector2(79.0, -27.0),
	"bulgaria": Vector2(168.0, -9.0),
	"croatia": Vector2(66.0, -37.0),
	"czechia": Vector2(54.0, -125.0),
	"denmark": Vector2(-451.0, -782.0),
	"estonia": Vector2(162.0, -297.0),
	"finland": Vector2(175.0, -463.0),
	"france": Vector2(-95.0, -68.0),
	"germany": Vector2(-3.0, -153.0),
	"greece": Vector2(150.0, 56.0),
	"hungary": Vector2(100.0, -80.0),
	"iceland": Vector2(-339.0, -452.0),
	"ireland": Vector2(-216.0, -192.0),
	"italy": Vector2(21.0, 1.0),
	"kosovo": Vector2(116.0, -6.0),
	"latvia": Vector2(158.0, -261.0),
	"liehtenstein": Vector2(-13.0, -81.0),
	"lithuania": Vector2(149.0, -226.0),
	"luxembourg": Vector2(-52.0, -125.0),
	"malta": Vector2(42.0, 91.0),
	"moldova": Vector2(201.0, -77.0),
	"monaco": Vector2(-38.0, -24.0),
	"montenegro": Vector2(99.0, -8.0),
	"netherlands": Vector2(-62.0, -169.0),
	"northmacedonia": Vector2(126.0, 9.0),
	"norway": Vector2(81.0, -462.0),
	"poland": Vector2(96.0, -165.0),
	"portugal": Vector2(-336.0, 68.0),
	"romania": Vector2(162.0, -61.0),
	"sanmarino": Vector2(20.0, -28.0),
	"serbia": Vector2(116.0, -33.0),
	"slovakia": Vector2(103.0, -106.0),
	"slovenia": Vector2(48.0, -63.0),
	"spain": Vector2(-201.0, 89.0),
	"sweden": Vector2(79.0, -399.0),
	"switzerland": Vector2(-28.0, -74.0),
	"uk": Vector2(-158.0, -238.0),
	"ukraine": Vector2(233.0, -103.0),
	"vaticancity": Vector2(19.0, 4.0),
	"antiguaandbarbuda": Vector2(-820.0, 321.0),
	"bahamas": Vector2(-986.0, 248.0),
	"barbados": Vector2(-798.0, 378.0),
	"belize": Vector2(-1130.0, 330.0),
	"canada": Vector2(-1225.0, -648.0),
	"costarica": Vector2(-1082.0, 418.0),
	"cuba": Vector2(-1028.0, 278.0),
	"dominica": Vector2(-821.0, 351.0),
	"dominicanrepublic": Vector2(-922.0, 311.0),
	"elsalvador": Vector2(-1135.0, 370.0),
	"grenada": Vector2(-825.0, 390.0),
	"guatemala": Vector2(-1150.0, 347.0),
	"haiti": Vector2(-954.0, 308.0),
	"honduras": Vector2(-1104.0, 359.0),
	"jamaica": Vector2(-1002.0, 319.0),
	"mexico": Vector2(-1290.0, 248.0),
	"nicaragua": Vector2(-1095.0, 381.0),
	"panama": Vector2(-1035.0, 432.0),
	"stkittsandnevis": Vector2(-836.0, 329.0),
	"stlucia": Vector2(-817.0, 369.0),
	"stvincentandgrenadines": Vector2(-820.0, 379.0),
	"trinidadandtobago": Vector2(-818.0, 407.0),
	"usa": Vector2(-1466.0, -170.0),
	"australia": Vector2(1427.0, 958.0),
	"fiji": Vector2(1907.0, 725.0),
	"kiribati": Vector2(45.0, 571.0),
	"marshallislands": Vector2(1807.0, 431.0),
	"micronesia": Vector2(1593.0, 443.0),
	"nauru": Vector2(1807.0, 431.0),
	"newzealand": Vector2(1870.0, 1087.0),
	"palau": Vector2(1392.0, 466.0),
	"papuanewguinea": Vector2(1568.0, 602.0),
	"samoa": Vector2(2018.0, 685.0),
	"solomonislands": Vector2(1716.0, 632.0),
	"tonga": Vector2(1989.0, 760.0),
	"tuvalu": Vector2(1903.0, 611.0),
	"vanuatu": Vector2(1794.0, 723.0),
	"argentina": Vector2(-847.0, 1029.0),
	"bolivia": Vector2(-846.0, 716.0),
	"brazil": Vector2(-742.0, 701.0),
	"chile": Vector2(-1124.0, 1012.0),
	"colombia": Vector2(-953.0, 481.0),
	"ecuador": Vector2(-1072.0, 547.0),
	"guyana": Vector2(-793.0, 472.0),
	"paraguay": Vector2(-788.0, 801.0),
	"peru": Vector2(-977.0, 634.0),
	"suriname": Vector2(-760.0, 483.0),
	"uruguay": Vector2(-757.0, 918.0),
	"venezuela": Vector2(-881.0, 454.0),
}

var borders = {
	# ---- ASIA ----
	"india": ["pakistan", "china", "nepal", "bangladesh", "myanmar", "bhutan"],
	"pakistan": ["india", "afghanistan", "iran", "china"],
	"china": ["afghanistan","india", "pakistan", "nepal", "bhutan", "myanmar", "laos", "vietnam", "mongolia", "northkorea", "russia", "kazakhstan", "kyrgyzstan", "tajikistan"],
	"nepal": ["india", "china"],
	"bangladesh": ["india", "myanmar"],
	"bhutan":["india","china"],
	"myanmar": ["india", "bangladesh", "china", "laos", "thailand"],
	"thailand": ["myanmar", "laos", "cambodia", "malaysia"],
	"laos": ["china", "myanmar", "thailand", "cambodia", "vietnam"],
	"vietnam": ["china", "laos", "cambodia"],
	"cambodia": ["thailand", "laos", "vietnam"],
	"malaysia": ["thailand","brunei","indonesia","singapore"],
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
	"jordan": ["palestine","israel", "syria", "iraq", "saudiarabia"],
	"saudiarabia": ["jordan", "iraq", "kuwait", "qatar", "uae", "oman", "yemen"],
	"oman": ["saudiarabia", "uae", "yemen"],
	"yemen": ["oman", "saudiarabia"],
	"uae": ["saudiarabia", "oman"],
	"qatar": ["saudiarabia"],
	"kuwait": ["iraq", "saudiarabia"],
	"armenia": ["turkey", "georgia", "azerbaijan", "iran"],
	"azerbaijan": ["armenia", "georgia", "russia", "iran"],
	"georgia": ["russia", "azerbaijan", "armenia", "turkey"],
	"turkey": ["greece", "bulgaria", "georgia", "armenia", "iran", "iraq", "syria"],
	"bahrain":[],
	"brunei":["malaysia"],
	"timorleste":["indonesia"],
	"indonesia":["papanewguinea","timorleste","malaysia"],
	"cyprus":[],
	"japan":[],
	"maldives":[],
	"philippines":[],
	"singapore":["malaysia"],
	"srilanka":[],
	"taiwan":[],

	# ---- EUROPE ----
	"albania": ["greece", "northmacedonia", "montenegro", "kosovo"],
	"andorra": ["france", "spain"],
	"austria": ["germany", "czechia", "slovakia", "hungary", "slovenia", "italy", "switzerland"],
	"belarus": ["poland", "lithuania", "latvia", "russia", "ukraine"],
	"belgium": ["france", "netherlands", "germany", "luxembourg"],
	"bosniaandherzegovina": ["croatia", "serbia", "montenegro"],
	"bulgaria": ["romania", "serbia", "northmacedonia", "greece", "turkey"],
	"croatia": ["slovenia", "hungary", "serbia", "bosniaandherzegovina", "montenegro"],
	"czechia": ["germany", "poland", "slovakia", "austria"],
	"denmark": ["germany"],
	"estonia": ["latvia", "russia"],
	"finland": ["sweden", "norway", "russia"],
	"france": ["spain", "belgium", "luxembourg", "germany", "switzerland", "italy","monaco","andorra"],
	"germany": ["france", "netherlands", "belgium", "luxembourg", "switzerland", "austria", "czechia", "poland", "denmark"],
	"greece": ["albania", "northmacedonia", "bulgaria", "turkey"],
	"hungary": ["austria", "slovakia", "ukraine", "romania", "serbia", "croatia", "slovenia"],
	"iceland": [],
	"ireland": ["unitedkingdom"],
	"italy": ["france", "switzerland", "austria", "slovenia","sanmarino","vaticancity"],
	"kosovo": ["serbia", "montenegro", "albania", "northmacedonia"],
	"latvia": ["estonia", "lithuania", "russia","belarus"],
	"liechtenstein": ["switzerland", "austria"],
	"lithuania": ["latvia", "poland", "belarus", "russia"],
	"luxembourg": ["france", "belgium", "germany"],
	"malta":[],
	"moldova": ["romania", "ukraine"],
	"monaco":["france"],
	"montenegro": ["croatia", "bosniaandherzegovina", "serbia", "kosovo", "albania"],
	"netherlands": ["belgium", "germany"],
	"northmacedonia": ["albania", "greece", "bulgaria", "serbia", "kosovo"],
	"norway": ["sweden", "finland", "russia"],
	"poland": ["germany", "czechia", "slovakia", "ukraine", "belarus", "lithuania", "russia"],
	"portugal": ["spain"],
	"romania": ["hungary", "ukraine", "moldova", "bulgaria", "serbia"],
	"russia": ["norway", "finland", "estonia", "latvia", "lithuania", "poland", "belarus", "ukraine", "georgia", "azerbaijan", "kazakhstan", "mongolia", "china", "northkorea"],
	"sanmarino": ["italy"],
	"serbia": ["hungary", "romania", "bulgaria", "northmacedonia", "kosovo", "montenegro", "bosniaandherzegovina", "croatia"],
	"slovakia": ["czechia", "poland", "ukraine", "hungary", "austria"],
	"slovenia": ["italy", "austria", "hungary", "croatia"],
	"spain": ["france", "portugal","andorra"],
	"sweden": ["norway", "finland"],
	"switzerland": ["france", "germany", "austria", "italy"],
	"ukraine": ["poland", "slovakia", "hungary", "romania", "moldova", "belarus", "russia"],
	"vaticancity": ["italy"],
	"uk": ["ireland"],

	# ---- AFRICA ----
	"algeria": ["tunisia", "libya", "niger", "mali", "mauritania", "morocco", "westernsahara"],

	"angola": ["namibia", "zambia", "democraticrepublicofthecongo", "republicofthecongo"],

	"benin": ["nigeria", "niger", "burkinafaso", "togo"],

	"botswana": ["southafrica", "namibia", "zambia", "zimbabwe"],

	"burkinafaso": ["mali", "niger", "benin", "togo", "ghana", "cotedivoire"],

	"burundi": ["rwanda", "tanzania", "democraticrepublicofthecongo"],

	"caboverde": [],

	"cameroon": ["nigeria", "chad", "centralafricanrepublic", "republicofthecongo", "gabon", "equatorialguinea"],

	"centralafricanrepublic": ["chad", "sudan", "southsudan", "democraticrepublicofthecongo", "republicofthecongo", "cameroon"],

	"chad": ["libya", "sudan", "centralafricanrepublic", "cameroon", "nigeria", "niger"],

	"comoros": [],

	"cotedivoire": ["mali", "burkinafaso", "ghana", "guinea", "liberia"],

	"democraticrepublicofthecongo": ["centralafricanrepublic", "southsudan", "uganda", "rwanda", "burundi", "tanzania", "zambia", "angola", "republicofthecongo"],

	"djibouti": ["eritrea", "ethiopia", "somalia"],

	"egypt": ["libya", "sudan", "israel","palestine"],

	"equatorialguinea": ["cameroon", "gabon"],

	"eritrea": ["sudan", "ethiopia", "djibouti"],

	"eswatini": ["southafrica", "mozambique"],

	"ethiopia": ["sudan", "southsudan", "kenya", "somalia", "djibouti", "eritrea"],

	"gabon": ["cameroon", "republicofthecongo", "equatorialguinea"],

	"thegambia": ["senegal"],

	"ghana": ["togo", "burkinafaso", "cotedivoire"],

	"guinea": ["senegal", "mali", "cotedivoire", "liberia", "sierraleone", "guineabissau"],

	"guineabissau": ["senegal", "guinea"],

	"kenya": ["ethiopia", "somalia", "tanzania", "uganda", "southsudan"],

	"lesotho": ["southafrica"],

	"liberia": ["cotedivoire", "guinea", "sierraleone"],

	"libya": ["egypt", "sudan", "chad", "niger", "algeria", "tunisia"],

	"madagascar": [],

	"malawi": ["tanzania", "zambia", "mozambique"],

	"mali": ["algeria", "niger", "burkinafaso", "cotedivoire", "guinea", "senegal", "mauritania"],

	"mauritania": ["algeria", "mali", "senegal", "westernsahara"],

	"mauritius": [],

	"morocco": ["algeria"],

	"mozambique": ["tanzania", "malawi", "zambia", "zimbabwe", "southafrica", "eswatini"],

	"namibia": ["southafrica", "botswana", "zambia", "angola"],

	"niger": ["algeria", "libya", "chad", "nigeria", "benin", "burkinafaso", "mali"],

	"nigeria": ["benin", "niger", "chad", "cameroon"],

	"republicofthecongo": ["cameroon", "centralafricanrepublic", "democraticrepublicofthecongo", "angola", "gabon"],

	"rwanda": ["uganda", "tanzania", "burundi", "democraticrepublicofthecongo"],

	"saotomeandprincipe": [],

	"senegal": ["mauritania", "mali", "guinea", "guineabissau", "thegambia"],

	"seychelles": [],

	"sierraleone": ["guinea", "liberia"],

	"somalia": ["djibouti", "ethiopia", "kenya"],

	"southafrica": ["namibia", "botswana", "zimbabwe", "mozambique", "lesotho", "eswatini"],

	"southsudan": ["sudan", "ethiopia", "kenya", "uganda", "democraticrepublicofthecongo", "centralafricanrepublic"],

	"sudan": ["egypt", "libya", "chad", "centralafricanrepublic", "southsudan", "ethiopia", "eritrea"],

	"tanzania": ["kenya", "uganda", "rwanda", "burundi", "democraticrepublicofthecongo", "zambia", "malawi", "mozambique"],

	"togo": ["ghana", "burkinafaso", "benin"],

	"tunisia": ["algeria", "libya"],

	"uganda": ["kenya", "tanzania", "rwanda", "southsudan", "democraticrepublicofthecongo"],

	"westernsahara": ["morocco", "algeria", "mauritania"],

	"zambia": ["angola", "democraticrepublicofthecongo", "tanzania", "malawi", "mozambique", "zimbabwe", "botswana", "namibia"],

	"zimbabwe": ["southafrica", "botswana", "zambia", "mozambique"],




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
	"haiti":["dominicanrepublic"],
	"dominicanrepublic":["haiti"],
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
	"guyana":["venezuela","suriname","brazil"],
	"suriname":["guyana","brazil"],
	# ---- OCEANIA ----
	"papuanewguinea":["indonesia"],
	"australia": [],
	"newzealand": []
}


@onready var input_box: LineEdit = $CanvasLayer/InputBox

@onready var correct_answer_sound_effect: AudioStreamPlayer = $Correct_Answer_Sound_Effect
@onready var wrong_answer: AudioStreamPlayer = $WrongAnswer



@onready var label_3: Label = $CanvasLayer/Label3

@onready var label: Label = $CanvasLayer/Label
@onready var label_2: Label = $CanvasLayer/Label2
var default_zoom = Vector2()
var default_position = Vector2()


@onready var cam: Camera2D = $MapContainer/Camera2D

var current_sprite = []
var last_country = ""
var selected_country = []


var FIRST_COLOR = Color(0.0, 1.654, 1.654)
var BORDER_COLOR = Color(0.0, 1.1, 0.993)
var NOT_BORDER_COLOR = Color("b30004") 

const MIN_ZOOM = Vector2(0.227, 0.255)
const MAX_ZOOM = Vector2(2, 2)

var first_zoom = false
var dragging = false
var drag_start = Vector2()
var cam_start = Vector2() 

func focus_country(country_name):

	if country_name not in country_focus:
		return

	var tween = create_tween()

	tween.parallel().tween_property(
		cam,
		"position",
		country_focus[country_name],
		0.5
	)

	tween.parallel().tween_property(
		cam,
		"zoom",
		Vector2(0.7, 0.7),
		0.5
	)

func _ready():
	input_box.grab_focus()
	Global.current_score = 0
	score = 0
	default_zoom = cam.zoom
	default_position = cam.position
	starting_country()
	label.text = "Score: 0"
	start_color_pair_cycle()
	label.add_theme_font_size_override("font_size", 16)
	label_2.add_theme_font_size_override("font_size",16)
	input_box.text_submitted.connect(_on_submitbutton_pressed)
	Check_Color_Of_Submit_Button()
	SupabaseManager.leaderboards_loaded.connect(_on_leaderboards_loaded)

func zoom_at_mouse(factor: float):

	var mouse_before = get_global_mouse_position()

	var new_zoom = cam.zoom * factor

	if new_zoom.x < MIN_ZOOM.x or new_zoom.y < MIN_ZOOM.y:
		return

	if new_zoom.x > MAX_ZOOM.x or new_zoom.y > MAX_ZOOM.y:
		return

	cam.zoom = new_zoom

	var mouse_after = get_global_mouse_position()

	cam.position += mouse_before - mouse_after

	clamp_camera_to_viewport()
	
var score = 0

func add_score():
	Global.current_score += 1
	score += 1
	label.text = "Score: " + str(score)



func starting_country():
	selected_country.clear()
	current_sprite.clear()
	var random_country = new_country_data.keys().pick_random()
	print("Starting country:", random_country)
	create_country(random_country, FIRST_COLOR)
	focus_country(random_country)
	last_country = random_country
	label_2.text = "Guess the Neighbouring country of " + (last_country).to_upper()
	selected_country.append(random_country)



func _input(event):
	# Block map interaction only when mouse is over UI elements
	if event is InputEventMouseButton or event is InputEventMouseMotion:
		if get_viewport().gui_get_hovered_control() != null:
			return
	# -------- DRAGGING LOGIC --------
	if event is InputEventMouseButton:

		if event.button_index == MOUSE_BUTTON_LEFT:
			dragging = event.pressed

		if event.button_index == MOUSE_BUTTON_WHEEL_DOWN and event.pressed:
			zoom_at_mouse(0.9)

		elif event.button_index == MOUSE_BUTTON_WHEEL_UP and event.pressed:
			zoom_at_mouse(1.1)



	# -------- ACTUAL DRAG MOVEMENT --------
	elif event is InputEventMouseMotion and dragging:

		# Use RELATIVE movement for smoothness
		cam.position -= event.relative / cam.zoom
	clamp_camera_to_viewport()
	
func clamp_camera_to_viewport():

	var viewport_size = get_viewport_rect().size

	# Size of visible area in world units
	var view_w = viewport_size.x / cam.zoom.x
	var view_h = viewport_size.y / cam.zoom.y

	# Define map boundaries (assuming your whole map is centered at 0,0)
	var map_min = Vector2(-2100, -1300)   # adjust to your real map size
	var map_max = Vector2(2100, 1300)

	# Limit camera so the view never leaves the map
	var min_x = map_min.x + view_w / 2
	var max_x = map_max.x - view_w / 2

	var min_y = map_min.y + view_h / 2
	var max_y = map_max.y - view_h / 2

	cam.position.x = clamp(cam.position.x, min_x, max_x)
	cam.position.y = clamp(cam.position.y, min_y, max_y)


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
	
func recolor_country(country_name: String, color: Color):
	for s in current_sprite:
		if s.name == country_name:
			s.modulate = color
			return

func _on_submitbutton_pressed(_text = "") -> void:
	var name = $CanvasLayer/InputBox.text.to_lower().strip_edges()
	name=name.replace(" ","")
	if name == "":
		return

	# If not a valid country, do nothing
	if not name in country_data:
		wrong_answer.play()
		$CanvasLayer/InputBox.text = "" 
		label_3.text = "Invalid"
		await get_tree().create_timer(1.5).timeout
		label_3.text = ""
		return
	
	
	if name in selected_country:
		wrong_answer.play()
		label_3.text = "Already guessed!"
		await get_tree().create_timer(1.5).timeout
		label_3.text = ""
		return
	
	$CanvasLayer/InputBox.text = ""
	
	if GameSettings.game_mode == "hard":
	
		if is_valid_hard_mode(name):
			add_score()
			
			correct_answer_sound_effect.play()
			label_2.text = "Guess the Neighbouring country of " + name.to_upper()
			recolor_country(last_country, BORDER_COLOR)
			create_country(name, FIRST_COLOR)
			focus_country(name)
			label_3.text = "Correct :)"
			await get_tree().create_timer(1.5).timeout
			label_3.text = ""
			print("Valid move in HARD MODE")

		else:
			wrong_answer.play()
			create_country(name, NOT_BORDER_COLOR)
			print("INVALID move in HARD MODE - Game Over")
			label_3.text = "Wrong! :("
			await get_tree().create_timer(1.0).timeout
			label_3.text = ""
			game_Over()
			return



	# ---------- EASY MODE ----------
	else:
		if borders_previous(name):
			correct_answer_sound_effect.play()
			add_score()
			label_2.text = "Guess the Neighbouring country of " + name.to_upper()
			recolor_country(last_country, BORDER_COLOR)
			create_country(name, FIRST_COLOR)
			focus_country(name)
			label_3.text = "Correct :)"
			await get_tree().create_timer(1.5).timeout
			label_3.text = ""
			print("Correct move in EASY MODE")

		else:
			wrong_answer.play()
			create_country(name, NOT_BORDER_COLOR)
			print("Wrong move in EASY MODE")
			label_3.text = "Wrong! :("
			await get_tree().create_timer(1.0).timeout
			label_3.text = ""
			game_Over()

	# Save progress
	last_country = name
	selected_country.append(name)

	

func reset():
	cam.zoom = default_zoom
	cam.position = default_position
	label.text = "0" 
	 # Remove all country sprites
	for s in current_sprite:
		s.queue_free()

	# Clear the list
	current_sprite.clear()

	# Reset previous country
	last_country = ""
	print("Game reset")
	starting_country()
	
@onready var info_hard: Label = $CanvasLayer/info_hard
@onready var info_easy: Label = $CanvasLayer/info_easy

var infoOn = false
func _on_button_pressed() -> void:
	if infoOn == false:
		infoOn = true
		if GameSettings.game_mode == "hard":
			info_hard.visible = true
		elif GameSettings.game_mode == "easy":
			info_easy.visible = true
	else:
		infoOn = false
		if GameSettings.game_mode == "hard":
			info_hard.visible = false
		elif GameSettings.game_mode == "easy":
			info_easy.visible = false
			
			
@onready var game_over: Label = $CanvasLayer/game_over
@onready var game_over_2: Label = $CanvasLayer/game_over2
var pair_index =0 
var color_pairs = [
	[Color(0.0, 1.453, 1.698), Color("004ccb")],
	
	[Color(0.591, 0.607, 1.059), Color("0044b3")],
	
	[Color(0.75, 0.969, 7.326), Color("006a75")],
	
	[Color(0.0, 0.693, 2.068), Color("0044b3")],
	
	[Color(0.651, 0.938, 1.12), Color("0044b3")],
	
]
func start_color_pair_cycle():
	var timer = Timer.new()
	timer.wait_time = 1.0
	timer.autostart = true
	timer.one_shot = false
	add_child(timer)
	timer.timeout.connect(_on_pair_timer_timeout)
func _on_pair_timer_timeout():
	var pair = color_pairs[pair_index]

	game_over.add_theme_color_override("font_color",pair[0])
	game_over_2.add_theme_color_override("font_color",pair[1])
	
	pair_index += 1
	if pair_index >= color_pairs.size():
		pair_index = 0

	
@onready var submitbutton: Button = $CanvasLayer/Submitbutton
@onready var color_rect: ColorRect = $CanvasLayer/ColorRect
@onready var button: Button = $CanvasLayer/Button
@onready var exit: Button = $CanvasLayer/exit
@onready var play_again: Button = $CanvasLayer/play_again
@onready var play_again_2: Label = $CanvasLayer/play_again2

func Check_Color_Of_Submit_Button():
	if GameSettings.game_mode == "easy":
		submitbutton.get_theme_stylebox("normal").bg_color = Color("0043fc")
		submitbutton.get_theme_stylebox("pressed").bg_color = Color("001e80")
		submitbutton.get_theme_stylebox("hover").bg_color = Color("0034c6")
		label.get_theme_stylebox("normal").border_color = Color(0.149, 0.367, 1.084)
		label_2.get_theme_stylebox("normal").border_color = Color(0.149, 0.367, 1.084)
	else:
		submitbutton.get_theme_stylebox("normal").bg_color = Color("9e0005")
		submitbutton.get_theme_stylebox("pressed").bg_color = Color("de0007")
		submitbutton.get_theme_stylebox("hover").bg_color = Color("cf0007")
		label.get_theme_stylebox("normal").border_color = Color("d41e42")
		label_2.get_theme_stylebox("normal").border_color = Color("d41e42")
		
@onready var your_score: Label = $CanvasLayer/score/your_score
@onready var score1: Node2D = $CanvasLayer/score
@onready var player_name: Label = $CanvasLayer/PlayerName

@onready var easy_best_text: Label = $CanvasLayer/EasyBestText
@onready var easy_best_data: Label = $CanvasLayer/EasyBestData
@onready var hard_best_text: Label = $CanvasLayer/HardBestText
@onready var hard_best_data: Label = $CanvasLayer/HardBestData
@onready var leaderboard_panel: Panel = $CanvasLayer/LeaderboardPanel
@onready var login_ui: Node2D = $CanvasLayer/login_ui
@onready var nameplate: Button = $CanvasLayer/login_ui/Nameplate


func game_Over()->void:
	if GameSettings.game_mode == "easy":
		if Global.current_score > Global.easy_highscore:
			Global.easy_highscore = Global.current_score
			SupabaseManager.save_easy_highscore()

	else:
		if Global.current_score > Global.hard_highscore:
			Global.hard_highscore = Global.current_score
			SupabaseManager.save_hard_highscore()
			
	await get_tree().create_timer(0.5).timeout
	SupabaseManager.load_leaderboards()
	login_ui.visible = true
	your_score.text = str(score)
	score1.visible = true
	leaderboard_panel.visible = true
	color_rect.visible = true
	game_over.visible = true
	game_over_2.visible = true
	submitbutton.visible = false
	input_box.visible = false
	label.visible = false
	label_2.visible = false
	button.visible = false
	exit.visible = true
	play_again.visible = true
	play_again_2.visible = true
	easy_best_text.visible = true
	easy_best_data.visible = true
	easy_best_data.text = str(Global.easy_highscore)
	hard_best_text.visible = true
	hard_best_data.visible = true
	hard_best_data.text = str(Global.hard_highscore)
	nameplate.text = Global.username
	
@onready var on_click: AudioStreamPlayer = $On_Click

func _on_exit_pressed() -> void:
	on_click.play()
	await get_tree().create_timer(0.5).timeout
	get_tree().change_scene_to_file("res://main_menu.tscn")


func _on_play_again_pressed() -> void:
	on_click.play()
	await get_tree().create_timer(0.5).timeout
	get_tree().change_scene_to_file("res://geonerds.tscn")

@onready var leaderboard_text: RichTextLabel = $CanvasLayer/LeaderboardPanel/LeaderboardText
@onready var leaderboard_title: Label = $CanvasLayer/LeaderboardPanel/LeaderboardTitle

func _on_leaderboards_loaded(data):

	var leaderboard = data.duplicate()

	if GameSettings.game_mode == "easy":

		leaderboard_title.text = "TOP 5 EASY"

		leaderboard.sort_custom(
			func(a,b):
				return a["easy_highscore"] > b["easy_highscore"]
		)

	else:

		leaderboard_title.text = "TOP 5 HARD"

		leaderboard.sort_custom(
			func(a,b):
				return a["hard_highscore"] > b["hard_highscore"]
		)

	var text = ""

	for i in range(min(5, leaderboard.size())):

		text += str(i + 1) + ". "
		text += leaderboard[i]["username"]

		if GameSettings.game_mode == "easy":
			text += " - " + str(leaderboard[i]["easy_highscore"])
		else:
			text += " - " + str(leaderboard[i]["hard_highscore"])

		text += "\n"

	leaderboard_text.text = text
