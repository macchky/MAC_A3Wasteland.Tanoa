// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2016 A3Wasteland.com *
// ******************************************************************************************
//	@file Name: territories.sqf
//	@file Author: AgentRev

// Territory system definitions. See territory/README.md for more details.
//
// 1 - Territory marker name. Must begin with 'TERRITORY_'
// 2 - Descriptive name
// 3 - Monetary value
// 4 - Territory category, currently unused. See territory/README.md for details.

[
	["TERRITORY_0_BALAVU_TRANSMITTER", "Balavu Transmitter", 2000, "TRANSMITTER"],
	["TERRITORY_0_TANOUKA_TRANSMITTER", "Tanouka Transmitter", 2000, "TRANSMITTER"],
	["TERRITORY_0_LIFOU_TRANSMITTER", "Lifou Transmitter", 2000, "TRANSMITTER"],
	["TERRITORY_0_LUGANVILLE_TRANSMITTER", "Luganville Transmitter", 2000, "TRANSMITTER"],
	["TERRITORY_1_TANOA_AIRPORT_NORTH", "Tanoa Airport (North)", 2500, "AIRFIELD"],
	["TERRITORY_1_TANOA_AIRPORT_SOUTH", "Tanoa Airport (South)", 2500, "AIRFIELD"],
	["TERRITORY_1_TANOA_AIRPORT_TERMINAL", "Tanoa Airport Terminal", 2500, "AIRFIELD"],
	["TERRITORY_2_COMMS_BRAVO", "Comms Bravo", 2000, "TRANSMITTER"],
	["TERRITORY_2_COMMS_WHISKEY", "Comms Whiskey", 2000, "TRANSMITTER"],
	["TERRITORY_2_SW_TRANSMITTER", "Southwest Transmitter", 2000, "TRANSMITTER"],
	["TERRITORY_2_SE_TRANSMITTER", "Southeast Transmitter", 2000, "TRANSMITTER"],
	["TERRITORY_3_REGINA_RAILYARD", "Regina Railyard", 2000, "INDUSTRIAL"],
	["TERRITORY_3_ROCHELLE_AERODROME", "La Rochelle Aerodrome", 2000, "AIRFIELD"],
	["TERRITORY_3_ROCHELLE_RAILYARD", "La Rochelle Railyard", 2000, "INDUSTRIAL"],
	["TERRITORY_4_SE_LUMBERYARD", "Southeast Lumberyard", 2000, "INDUSTRIAL"],
	["TERRITORY_4_STJULIEN_RAILYARD", "Saint-Julien Railyard", 2000, "INDUSTRIAL"],
	["TERRITORY_4_TANOUKA_REFINERY", "Tanouka Sugar Refinery", 2000, "INDUSTRIAL"],
	["TERRITORY_4_YANUKKA_AIRSTRIP", "Yanukka Airstrip", 2000, "AIRFIELD"],
	["TERRITORY_5_TUVANAKA_AIRBASE", "Tuvanaka Airbase", 2000, "AIRFIELD"],
	["TERRITORY_5_TUVANAKA_GSM", "Tuvanaka GSM Station", 2000, "TRANSMITTER"],
	["TERRITORY_6_LILO_POWER", "Lilo Power Station", 2000, "POWER"],
	["TERRITORY_6_MONT_TANOA", "Mont Tanoa", 2000, "TRANSMITTER"],
	["TERRITORY_6_RED_SPRING", "Red Spring Mine", 2000, "INDUSTRIAL"],
	["TERRITORY_6_TEMPLE_RUINS", "Temple Ruins", 2000, "RUINS"],
	["TERRITORY_7_LIJNHAVEN_AIRSTRIP", "Lijnhaven Airstrip", 2000, "AIRFIELD"],
	["TERRITORY_7_LIJNHAVEN_FORTRESS", "Lijnhaven Fortress", 2000, "RUINS"],
	["TERRITORY_8_BLUE_PEARL", "Blue Pearl Port", 2000, "INDUSTRIAL"],
	["TERRITORY_8_KATKOULA_DEPOT", "Katkoula Fuel Depot", 2000, "INDUSTRIAL"],
	["TERRITORY_8_LAIKORO_DEPOT", "Laikoro Fuel Depot", 2000, "INDUSTRIAL"]
]

//copyToClipboard str ((allMapMarkers select {_x select [0,10] == "TERRITORY_"}) apply {[_x, markerText _x, 2000, ""]})
