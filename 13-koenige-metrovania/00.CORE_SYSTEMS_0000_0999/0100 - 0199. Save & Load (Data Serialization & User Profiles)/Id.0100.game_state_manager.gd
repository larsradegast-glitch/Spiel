extends Node

signal seasonal_map_changed(map_id: int, map_path: String)
signal game_saved(slot_id: int)
signal game_loaded(slot_id: int)

const SAVE_PATH_TEMPLATE = "user://save_slot_%d.dat"
const MAP_BASE_PATH = "res://04.WORLD_LEVEL_LOGIC_4000_4999/4000 - 4099. Level Transitions (Game Worlds & Map Scene Files)/" 

var current_slot: int = 1
var current_month: int = 0
var progression_flags = {
	"global": {},
	"maps": {
		"4001": {}, "4002": {}, "4003": {}, "4004": {},
		"4005": {}, "4006": {}, "4007": {}, "4008": {},
		"4009": {}, "4010": {}, "4011": {}, "4012": {},
		"4013": {}
	}
}

func save_game(slot_id: int) -> void:
	current_slot = slot_id
	var file_path = SAVE_PATH_TEMPLATE % slot_id
	var file = FileAccess.open(file_path, FileAccess.WRITE)
	
	if file:
		var json_string = JSON.stringify(progression_flags)
		file.store_string(json_string)
		file.close()
		emit_signal("game_saved", slot_id)

func load_game(slot_id: int) -> void:
	current_slot = slot_id
	var file_path = SAVE_PATH_TEMPLATE % slot_id
	
	if not FileAccess.file_exists(file_path):
		reset_progression()
		return

	var file = FileAccess.open(file_path, FileAccess.READ)
	if file:
		var json_string = file.get_as_text()
		file.close()
		var json = JSON.new()
		var error = json.parse(json_string)
		if error == OK:
			progression_flags = json.data
			update_seasonal_map()
			emit_signal("game_loaded", slot_id)

func update_seasonal_map() -> void:
	var date = Time.get_date_dict_from_system()
	current_month = date.month
	var map_id = 4000 + current_month
	var map_name = _get_month_name(current_month)
	var full_path = MAP_BASE_PATH + "Id." + str(map_id) + ".map_" + map_name + ".tscn"
	
	if progression_flags.global.get("reached_finale", false):
		map_id = 4013
		full_path = MAP_BASE_PATH + "Id.4013.map_final.tscn"
	
	emit_signal("seasonal_map_changed", map_id, full_path)

func _get_month_name(month: int) -> String:
	var months = ["january", "february", "march", "april", "may", "june", "july", "august", "september", "october", "november", "december"]
	return months[month - 1]

func set_flag(map_id: String, flag_name: String, value: Variant) -> void:
	if progression_flags.maps.has(map_id):
		progression_flags.maps[map_id][flag_name] = value

func get_flag(map_id: String, flag_name: String, default: Variant = null) -> Variant:
	if progression_flags.maps.has(map_id):
		return progression_flags.maps[map_id].get(flag_name, default)
	return progression_flags.global.get(flag_name, default)

func reset_progression():
	progression_flags = {"global": {}, "maps": {"4001": {}, "4002": {}, "4003": {}, "4004": {}, "4005": {}, "4006": {}, "4007": {}, "4008": {}, "4009": {}, "4010": {}, "4011": {}, "4012": {}, "4013": {}}}
