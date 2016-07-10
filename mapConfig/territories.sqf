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
	["TERRITORY_BALAVU_TRANSMITTER", "Balavu Transmitter", 2000, "TRANSMITTER"],
	["TERRITORY_TANOUKA_TRANSMITTER", "Tanouka Transmitter", 2000, "TRANSMITTER"],
	["TERRITORY_LIFOU_TRANSMITTER", "Lifou Transmitter", 2000, "TRANSMITTER"],
	["TERRITORY_LUGANVILLE_TRANSMITTER", "Luganville Transmitter", 2000, "TRANSMITTER"],
	["TERRITORY_TANOA_AIRPORT_NORTH", "Tanoa Airport (North)", 2500, "AIRFIELD"],
	["TERRITORY_TANOA_AIRPORT_SOUTH", "Tanoa Airport (South)", 2500, "AIRFIELD"],
	["TERRITORY_TANOA_AIRPORT_TERMINAL", "Tanoa Airport Terminal", 2500, "AIRFIELD"],
	["TERRITORY_COMMS_BRAVO", "Comms Bravo", 2000, "TRANSMITTER"],
	["TERRITORY_COMMS_WHISKEY", "Comms Whiskey", 2000, "TRANSMITTER"],
	["TERRITORY_SW_TRANSMITTER", "Southwest Transmitter", 2000, "TRANSMITTER"],
	["TERRITORY_SE_TRANSMITTER", "Southeast Transmitter", 2000, "TRANSMITTER"],
	["TERRITORY_REGINA_RAILYARD", "Regina Railyard", 2000, "INDUSTRIAL"],
	["TERRITORY_ROCHELLE_AERODROME", "La Rochelle Aerodrome", 2000, "AIRFIELD"],
	["TERRITORY_ROCHELLE_RAILYARD", "La Rochelle Railyard", 2000, "INDUSTRIAL"],
	["TERRITORY_SE_LUMBERYARD", "Southeast Lumberyard", 2000, "INDUSTRIAL"],
	["TERRITORY_STJULIEN_RAILYARD", "Saint-Julien Railyard", 2000, "INDUSTRIAL"],
	["TERRITORY_TANOUKA_REFINERY", "Tanouka Sugar Refinery", 2000, "INDUSTRIAL"],
	["TERRITORY_YANUKKA_AIRSTRIP", "Yanukka Airstrip", 2000, "AIRFIELD"],
	["TERRITORY_TUVANAKA_AIRBASE", "Tuvanaka Airbase", 2000, "AIRFIELD"],
	["TERRITORY_TUVANAKA_GSM", "Tuvanaka GSM Station", 2000, "TRANSMITTER"],
	["TERRITORY_LILO_POWER", "Lilo Power Station", 2000, "POWER"],
	["TERRITORY_MONT_TANOA", "Mont Tanoa", 2000, "TRANSMITTER"],
	["TERRITORY_RED_SPRING", "Red Spring Mine", 2000, "INDUSTRIAL"],
	["TERRITORY_TEMPLE_RUINS", "Temple Ruins", 2000, "RUINS"],
	["TERRITORY_LIJNHAVEN_AIRSTRIP", "Lijnhaven Airstrip", 2000, "AIRFIELD"],
	["TERRITORY_LIJNHAVEN_FORTRESS", "Lijnhaven Fortress", 2000, "RUINS"],
	["TERRITORY_BLUE_PEARL", "Blue Pearl Port", 2000, "INDUSTRIAL"],
	["TERRITORY_KATKOULA_DEPOT", "Katkoula Fuel Depot", 2000, "INDUSTRIAL"],
	["TERRITORY_LAIKORO_DEPOT", "Laikoro Fuel Depot", 2000, "INDUSTRIAL"]
]

//copyToClipboard str ((allMapMarkers select {_x select [0,10] == "TERRITORY_"}) apply {[_x, markerText _x, 2000, ""]})
