var event = ds_map_find_value(async_load, "event_type");
if (event == "gamepad discovered"
	|| event == "gamepad lost") {
	detect_connected_gamepad();		
}