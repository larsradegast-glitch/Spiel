extends Node

# --- Signals ---
signal seasonal_map_changed(month_id: int, map_path: String)
signal game_saved
signal game_loaded

# --- Constants for Map Paths ---
const MAP_BASE_PATH = "res://04.WORLD_LEVEL_LOGIC_4000_4999/4000 - 4099. Level Transitions (Game Worlds & Map Scene Files)/"

# --- Game State Data ---
var current_month: int = 0
var progression_flags = {
	"global": {},
	"maps": {
		"4001": {}, "4002": {}, "4003": {}, "4004": {},
		"4005": {}, "4006": {}, "4007": {}, "4008": {},
		"4009": {}, "4010": {}, "4011": {}, "4012": {},
		"4013": {} # Id.4013.map_final
	}
}

func _ready() -> void:
	# Initial determination of the seasonal map
	update_seasonal_map()

## logic to determine and trigger the map load based on system time
func update_seasonal_map() -> void:
	var date = Time.get_date_dict_from_system()
	current_month = date.month
	
	# Construct ID and Path according to Universal ID Rules
	var map_id = 4000 + current_month
	var map_name = _get_month_name(current_month)
	var full_path = MAP_BASE_PATH + "Id." + str(map_id) + ".map_" + map_name + ".tscn"
	
	# In case we are in the endgame, we would load Id.4013
	# This is a placeholder check for your finale logic
	if progression_flags.global.get("reached_finale", false):
		map_id = 4013
		full_path = MAP_BASE_PATH + "Id.4013.map_final.tscn"
	
	emit_signal("seasonal_map_changed", map_id, full_path)
	print("Game State: Seasonal map determined - Month: ", map_name, " (ID: ", map_id, ")")

## Helper to match IDs to your file naming convention
func _get_month_name(month: int) -> String:
	var months = [
		"january", "february", "march", "april", "may", "june",
		"july", "august", "september", "october", "november", "december"
	]
	return months[month - 1]

# --- Progression Management ---
func set_flag(map_id: String, flag_name: String, value: Variant) -> void:
	if progression_flags.maps.has(map_id):
		progression_flags.maps[map_id][flag_name] = value
	else:
		progression_flags.global[flag_name] = value

func get_flag(map_id: String, flag_name: String, default: Variant = null) -> Variant:
	if progression_flags.maps.has(map_id):
		return progression_flags.maps[map_id].get(flag_name, default)
	return progression_flags.global.get(flag_name, default)

# --- Save/Load Logic (Skeleton) ---
func save_game() -> void:
	# Logic for saving progression_flags to a file (Category 0100)
	emit_signal("game_saved")

func load_game() -> void:
	# Logic for loading progression_flags from a file
	update_seasonal_map()
	emit_signal("game_loaded")
