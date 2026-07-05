==============================================================================
This file contains the complete, unfiltered development history and daily 
logs for "13Koenige-Metrovania", sorted chronologically by date.
==============================================================================

[05.07.2026]
------------------------------------------------------------------------------
Core Systems: Implemented the central Game State Manager to act as the "brain" of the project.
New Assets:
	Id.0100.game_state_manager.gd: Created the core logic for seasonal map switching and progression tracking.
	Autoload Registration: Registered Id_0100_game_state_manager as a global Singleton in project.godot for universal access.
System Features:
	Seasonal Orchestration: Added logic to automatically determine and trigger map loads based on system time (Months 1-12) or endgame status (Id.4013).
	Data Persistence: Implemented a 'progression_flags' dictionary to track states (like opened doors or defeated bosses) for all 13 individual maps and global progress.
	Save/Load Skeleton: Integrated signals and function stubs for future data serialization.
Documentation:
	Updated Id.0400.central_id_catalog.gd to include the 0100 category entry with "INFO" and "HISTORY" markers.
World Architecture: Implemented the hierarchical world loading system.
New ID Registry: Registered the range Id.4000 to Id.4013:
	Id.4000.map_root_tree: Created as the main collector for all game worlds.
	Id.4001 - Id.4012: Established anchors for all 12 monthly seasonal maps.
	Id.4013.map_final: Established the anchor for the permanent 13th endgame map.
Documentation: Updated Id.0400.central_id_catalog.gd with descriptions and history markers for the complete map hierarchy.
UI Architecture: Defined the structural requirements for the upcoming Metroidvania interface modules within the central catalog.
New ID Registry: Registered unique IDs for the planned expansion of the UI system:
	Id.5002.main_start_menu: Main entry and landing screen.
	Id.5003.pause_menu: Mid-game interruption controller.
	Id.5100.in_game_hud: Persistent player statistics overlay (HP/Resources).
	Id.5200.inventory_menu_ui: Equipment and item management hub.
	Id.5300.dialogue_box_ui: Narrative and NPC interaction system.
	Id.5400.endscreen_overlay: Fail-state and victory condition handling.
Documentation: Updated Id.0400.central_id_catalog.gd with high-level descriptions and history markers for all newly created UI categories.

[04.07.2026]
------------------------------------------------------------------------------
Architecture: Decided to split the project documentation. Detailed daily logs are moved to this file (Id.0401) to keep the central ID catalog (Id.0400) clean and focused on high-level system descriptions.
Repository: Initial project upload (Commit 8c50206). Configured .gitignore and .gitattributes to ensure repository health and enforce LF line endings.
Setup: Configured Godot 4.7 Mobile project settings. Set viewport resolution to 1920x1080 and verified window/stretch/aspect is set to "expand" for mobile compatibility.
Engine: Confirmed the integration of Jolt Physics as the primary 3D physics engine for the project.
Core: Created the global event bus script (Id.0402.game_events.gd) to facilitate decoupled signal management between systems.
Configuration: Registered CentralIdCatalog and GameEvents as global Autoload singletons in the engine configuration.
UI: Initialized the Main_ui_tree (Id.5000) using a CanvasLayer to ensure consistent rendering above game worlds.
UI: Created the Game_settings_menu (Id.5001) with anchor presets set to Full Screen (Preset 15) for automatic scaling.
Core: Established the CentralIdCatalog (Id.0400) and defined the core system dictionary categories spanning 0000 to 9999.
Core: Created the absolute root scene (Id.0000.main_root_tree.tscn) to serve as the central convergence point for all sub-systems.
