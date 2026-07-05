const RULES =  '''
==============================================================================
NOTICE & COMPLIANCE
==============================================================================
AI assistance is permitted to generate code and catalog entries. However, you 
must manually review and verify all output. It is your absolute responsibility 
to ensure strict compliance with the structural, formatting, and unique ID 
naming anchors defined below.

==============================================================================
UNIVERSAL ID ASSIGNMENT & ARCHITECTURE RULES
==============================================================================

1. LANGUAGE & STRUCTURE
   - All code logic, comments, and documentation must be written strictly in English.
   - Entries must follow the exact indentation and nested dictionary format shown 
     in the reference example below, matching their specific range subcategory.

2. ID ALLOCATION & INCREMENTATION
   - If an entry for a system or function already exists, you must reuse it. 
     Do not create duplicates.
   - New entries must use the next sequentially available number within that 
     subcategory, incrementing strictly by +1 (e.g., 0400, 0401, 0402).

3. RE-NAMING FILE ANCHORS
   - By default, all physical assets (.gd, .tscn, .tres, etc.) must use their 
     filename as the global search anchor by prefixing the ID (e.g., Id.0400.name.gd).
   - Non-editable formats (.png, .mp3, .blend) follow the exact same rule, 
     keeping their extension at the very end (e.g., Id.1100.wall_texture.png).
   - In-script comments (# Search Anchor) are RESERVED EXCLUSIVELY for local 
     functions or code blocks and must not contain any info or history blocks.

4. FORMATTING & GLOBAL UNIQUENESS
   - Every single anchor must strictly follow the syntax: Id.number.name
   - The name component must be between 1 and 5 words maximum. Spaces are strictly 
     forbidden and must be replaced entirely by underscores (_).
   - Both the assigned ID number AND the text name must be completely unique 
     across the entire project. Never repeat a name string for different IDs.

5. DUAL-LOGGING STANDARD & HISTORICAL RECORDS
   - Systems are never deleted; if a feature is overhauled, the ID is retained.
   - This catalog file stores all high-level descriptions ("INFO") for tracking.
   - **MINOR CHANGES**: Small tweaks, bugfixes, minor refactoring, and routine 
     adjustments must be logged EXCLUSIVELY inside the markdown changelog file 
     (Id.0401.project_changelog_log.md). They do not get an entry here.
   - **MAJOR CHANGES**: Fundamental structural changes, architectural overhauls, 
     or the initial creation (birth) of a system must be logged in BOTH places: 
     as a milestone inside this catalog's "HISTORY" array, and as a detailed 
     entry in the markdown changelog.
   - All timestamps across all files must strictly use the DD.MM.YYYY format.

==============================================================================
REFERENCE EXAMPLE (MULTIPLE ID ENTRIES & LOGGING STANDARD)
==============================================================================

const CORE_SYSTEMS_0000_0999 = {
	"0400 - 0499: Global Variables (Autoload Singletons)": {
		"Id.0400.central_id_catalog": {
			"INFO": "The central registry script containing the documentation, history, and structural rules for all project IDs.",
			"HISTORY": [
				"04.07.2026 - Initialized central catalog script and defined system core categories"
				]
			},
		"Id.0401.project_changelog_log": {
			"INFO": "The comprehensive daily development log containing every single change, fix, and minor update sorted by date.",
			"HISTORY": [
				"04.07.2026 - Created the detailed changelog file to offload minor history entries from the central catalog"
				]
			},
		"Id.0402.game_events": {
			"INFO": "The global event bus and signal broker managing game-wide events and observer patterns.",
			"HISTORY": [
				"04.07.2026 - Initialized game events script for global signal handling."
				]
			}
		},
}
==============================================================================
'''

const CORE_SYSTEMS_0000_0999 = {
	"0000 - 0099: Game Startup (Engine Initialization & Main.tscn)": {
		"Id.0000.main_root_tree": {
			"INFO": "The main scene (.tscn) and the top-level structural node of the game. Currently has no code of its own, but serves purely as a visual tree anchor within the Godot editor under which all sub-scenes (such as worlds and UI) converge.",
			"HISTORY": [
			"04.07.2026 - Set up the main scene tree in the editor; subordinated all sub-systems as child nodes."
				]
			}
		},
	"0100 - 0199: Save & Load (Data Serialization & User Profiles)": {},
	"0200 - 0299: Pause Systems (Engine Time Scaling & Process Modes)": {},
	"0300 - 0399: Scene Switching (SceneTree Management & Loading Screens)": {},
	"0400 - 0499: Global Variables (Autoload Singletons)": {
		"Id.0400.central_id_catalog": {
			"INFO": "The central registry script containing the documentation, history, and structural rules for all project IDs.",
			"HISTORY": [
				"04.07.2026 - Initialized central catalog script and defined system core categories"
				]
			},
		"Id.0401.project_changelog_log": {
			"INFO": "The comprehensive daily development log containing every single change, fix, and minor update sorted by date.",
			"HISTORY": [
				"04.07.2026 - Created the detailed changelog file to offload minor history entries from the central catalog"
				]
			},
		"Id.0402.game_events": {
			"INFO": "The global event bus and signal broker managing game-wide events and observer patterns.",
			"HISTORY": [
				"04.07.2026 - Initialized game events script for global signal handling."
				]
			}
		},
	"0500 - 0599: Event Bus (Global Signals & Observer Pattern)": {},
	"0600 - 0699: OS & Hardware (Window Management & Project Settings)": {},
	"0700 - 0799: Modding & DLCs (Feature Packs & .pck Loading)": {},
	"0800 - 0899: Security & Encryption (Savegame Validation & Anti-Cheat)": {},
	"0900 - 0999: Core Overrides (Low-Level Engine Customization)": {}
}
const PLAYER_SYSTEMS_1000_1999 = {
	"1000 - 1099: Basic Movement (CharacterBody Physics & Gravity)": {},
	"1100 - 1199: Advanced Movement (Dashing, Wall Jump, Mechanics)": {},
	"1200 - 1299: Player Attributes (Stats, Health, Mana & Resources)": {},
	"1300 - 1399: Input Processing (Action Mapping, Deadzones & Device Detection)": {},
	"1400 - 1499: Inventory Systems (Equipment Slots & Loadout Management)": {},
	"1500 - 1599: Interactions (RayCast & Proximity Triggers)": {},
	"1600 - 1699: Animation Triggers (AnimationPlayer & AnimationTree)": {},
	"1700 - 1799: Camera Systems (Camera Focus, PhantomCamera & Camera FX)": {},
	"1800 - 1899: Cosmetics & Skins (MeshInstance & Textures)": {},
	"1900 - 1999: Custom Player Mechanics (Special Character Actions)": {}
}
const AI_ENEMIES_NPC_2000_2999 = {
	"2000 - 2099: Basic AI Control (Perception & Line of Sight)": {},
	"2100 - 2199: Enemy Movement (Patrols & Path Following Logic)": {},
	"2200 - 2299: NPC Dialogue Systems (Interactions & Shop Nodes)": {},
	"2300 - 2399: Spawner Logic (Marker Nodes & Spawn Management)": {},
	"2400 - 2499: Pathfinding (NavigationAgent, NavigationServer)": {},
	"2500 - 2599: Enemy State Machines (HFSM & Behavior Trees)": {},
	"2600 - 2699: Group Behavior (Flocking AI & Alarm Radius Areas)": {},
	"2700 - 2799: Companion AI (Pet Logic & Follower Systems)": {},
	"2800 - 2899: Ambient Creatures (Wildlife & Background Entities)": {},
	"2900 - 2999: Boss Fight Systems (Boss Orchestrators & Phases)": {}
}
const COMBAT_PHYSICS_3000_3999 = {
	"3000 - 3099: Damage Calculation (Armor Penetration & Combat Math)": {},
	"3100 - 3199: Melee Combat (Weapon Shapes & Attack Collisions)": {},
	"3200 - 3299: Ranged Combat (Projectiles & RigidBody Projectile Nodes)": {},
	"3300 - 3399: Status Effects (Buffs, Debuffs & Damage over Time)": {},
	"3400 - 3499: Combat Feedback (Knockback Vectors & Freeze Frames)": {},
	"3500 - 3599: Physical Materials (Friction, Physics Layers & Collision Masks)": {},
	"3600 - 3699: Destructible Objects (Breakable Environment Props)": {},
	"3700 - 3799: Weapon Precision (Weapon Bloom, Recoil & Spread Logic)": {},
	"3800 - 3899: Cover Systems (Tactical AI Positioning Nodes)": {},
	"3900 - 3999: Combat Collision Boxes (Hitboxes, Hurtboxes & CollisionShapes)": {}
}
const WORLD_LEVEL_LOGIC_4000_4999 = {
	"4000 - 4099: Level Transitions (Game Worlds & Map Scene Files)": {
		"Id.4000.map_root_tree": {
			"INFO": "The central structural node for the world system, serving as a container for all seasonal and final game maps.",
			"HISTORY": [
				"05.07.2026 - Initialized the map root tree to follow the project's global naming convention."
				]
			},
		"Id.4001.map_january": {
			"INFO": "Seasonal Metroidvania world for January.",
			"HISTORY": [
				"05.07.2026 - Registered January world."
				]
			},
		"Id.4002.map_february": {
			"INFO": "Seasonal Metroidvania world for February.",
			"HISTORY": [
				"05.07.2026 - Registered February world."
				]
			},
		"Id.4003.map_march": {
			"INFO": "Seasonal Metroidvania world for March.",
			"HISTORY": [
				"05.07.2026 - Registered March world."
				]
			},
		"Id.4004.map_april": {
			"INFO": "Seasonal Metroidvania world for April.",
			"HISTORY": [
				"05.07.2026 - Registered April world."
				]
			},
		"Id.4005.map_may": {
			"INFO": "Seasonal Metroidvania world for May.",
			"HISTORY": [
				"05.07.2026 - Registered May world."
				]
			},
		"Id.4006.map_june": {
			"INFO": "Seasonal Metroidvania world for June.",
			"HISTORY": [
				"05.07.2026 - Registered June world."
				]
			},
		"Id.4007.map_july": {
			"INFO": "Seasonal Metroidvania world for July.",
			"HISTORY": [
				"05.07.2026 - Registered July world."
				]
			},
		"Id.4008.map_august": {
			"INFO": "Seasonal Metroidvania world for August.",
			"HISTORY": [
				"05.07.2026 - Registered August world."
				]
			},
		"Id.4009.map_september": {
			"INFO": "Seasonal Metroidvania world for September.",
			"HISTORY": [
				"05.07.2026 - Registered September world."
				]
			},
		"Id.4010.map_october": {
			"INFO": "Seasonal Metroidvania world for October.",
			"HISTORY": [
				"05.07.2026 - Registered October world."
				]
			},
		"Id.4011.map_november": {
			"INFO": "Seasonal Metroidvania world for November.",
			"HISTORY": [
				"05.07.2026 - Registered November world."
				]
			},
		"Id.4012.map_december": {
			"INFO": "Seasonal Metroidvania world for December.",
			"HISTORY": [
				"05.07.2026 - Registered December world."
				]
			},
		"Id.4013.map_final": {
			"INFO": "The permanent 13th map. A static world containing the final endgame content and climax.",
			"HISTORY": [
				"05.07.2026 - Registered the permanent final world scene."
				]
			}
		},
	"4100 - 4199: Procedural Generation (TileMap, GridMap & Voxel Nodes)": {},
	"4200 - 4299: Environment Cycles (Day-Night Cycle & Sky Shaders)": {},
	"4300 - 4399: Interactive Environment (Moving Platforms & Elevators)": {},
	"4400 - 4499: Checkpoint Systems (Spawn Anchors & Respawn Locations)": {},
	"4500 - 4599: Fluids (Water Shaders & Buoyancy Physics Areas)": {},
	"4600 - 4699: Real-time Lighting (Shadow Control & Light Nodes)": {},
	"4700 - 4799: Puzzle Mechanics (Pressure Plates, Keys & Switches)": {},
	"4800 - 4899: Optimization (Chunk Loading & Level Streaming)": {},
	"4900 - 4999: Boundary Triggers (Killzones & Proximity Trigger Areas)": {}
}
const UI_MENUS_CONTROL_5000_5999 = {
	"5000 - 5099: Front-End Menus (Main Menu, Options & Audio-Video Settings)": {
		"Id.5000.main_ui_tree": {
			"INFO": "A structural anchor node that serves purely as a central convergence point to bundle all sub-UI scenes before they are connected to the main scene tree.",
			"HISTORY": [
				"04.07.2026 - Initialized main UI structural node to act as a central hub for UI sub-scenes."
				]
			},
		"Id.5001.game_settings_menu": {
			"INFO": "The main configuration menu allowing players to adjust audio sliders, video options, graphics settings, and input rebindings.",
			"HISTORY": [
				"04.07.2026 - Initialized the options and settings menu system."
				]
			},
		"Id.5002.main_start_menu": {
			"INFO": "The primary entry point of the game, providing options to start a new game, load progress, or exit.",
			"HISTORY": [
				"05.07.2026 - Defined entry for the main landing screen."
				 ]
			},
		"Id.5003.pause_menu": {
			"INFO": "An overlay menu that triggers during gameplay to halt the engine time and provide access to settings or quit options.",
			"HISTORY": [
				"05.07.2026 - Defined entry for the mid-game pause controller."
				]
			}
		},
	"5100 - 5199: In-Game HUD (Progress Bars & Crosshairs)": {
		"Id.5100.in_game_hud": {
			"INFO": "A persistent gameplay overlay managing the visibility of health bars, resource meters, and active buffs.",
			"HISTORY": [
				"05.07.2026 - Initialized the main in-game heads-up display entry."
				]
			}
		},
	"5200 - 5299: Inventory UI (Item Display Container Grids & Icon Atlases)": {
		"Id.5200.inventory_menu_ui": {
			"INFO": "The central UI hub for managing player gear, items, and character statistics.",
			"HISTORY": [
				"05.07.2026 - Defined the root inventory management screen."
				]
			}
		},
	"5300 - 5399: Dialogue UI (Subtitle Labels & .theme Asset Customization)": {
		"Id.5300.dialogue_box_ui": {
			"INFO": "A modular UI component for displaying NPC dialogue, player choices, and narrative text.",
			"HISTORY": [
				"05.07.2026 - Defined the dialogue and interaction interface."
				]
			}
		},
	"5400 - 5499: Endscreens (Game Over, Victory Screens & End Credits)": {
		"Id.5400.endscreen_overlay": {
			"INFO": "A versatile overlay for handling fail states (Game Over) or successful mission completions.",
			"HISTORY": [
				"05.07.2026 - Defined the session termination UI component."
				]
			}
		},
	"5500 - 5599: Map Systems (Minimaps, SubViewports & Map Markers)": {},
	"5600 - 5699: Popups & Floating Text (Tooltips & Floating Combat Text)": {},
	"5700 - 5799: Selection Wheels (Radial Selection Menus)": {},
	"5800 - 5899: Accessibility (Custom Fonts & Colorblindness Filters)": {},
	"5900 - 5999: UI Texture Assets (Buttons, NinePatchRects & Sprite Sheets)": {}
}
const AUDIO_VFX_SHADERS_6000_6999 = {
	"6000 - 6099: Music Manager (AudioStreamPlayer & Interactive Soundtracks)": {},
	"6100 - 6199: Sound Effects (SFX Triggers & Spatial 2D-3D Audio Nodes)": {},
	"6200 - 6299: Audio Environments (AudioEffectReverb & Environment Busses)": {},
	"6300 - 6399: Audio Mixer Layouts (Bus Channels & .tres Configurations)": {},
	"6400 - 6499: Particle Systems (GPUParticles, CPUParticles & VFX Nodes)": {},
	"6500 - 6599: Screen FX (Camera Shake, Chromatic Aberration & Controller Rumble)": {},
	"6600 - 6699: Post-Processing (WorldEnvironment & Sky Environments)": {},
	"6700 - 6799: Custom Shaders (Material Files & VisualShaders)": {},
	"6800 - 6899: Dynamic Decals (Decal Nodes & Impact Visuals)": {},
	"6900 - 6999: Fullscreen Overlays (Screen Flash FX & Color Grading)": {}
}
const DATA_LOCALIZATION_7000_7999 = {
	"7000 - 7099: Item Databases (Loot Properties & Data .tres Files)": {},
	"7100 - 7199: Quest Systems (Objectives, Journals & Progression Trackers)": {},
	"7200 - 7299: Scripted Dialogue Assets (Branching Dialogue Trees & Texts)": {},
	"7300 - 7399: Translation Tables (Polyglot Localization & .translation Files)": {},
	"7400 - 7499: File Parsing (JSON-XML Importers & ConfigFiles)": {},
	"7500 - 7599: Player Metrics (Session Analytics & Statistic Trackers)": {},
	"7600 - 7699: System Achievements (Trophies & Global Unlock Conditions)": {},
	"7700 - 7799: Drop Tables (Weighted Random Loot Generators)": {},
	"7800 - 7899: Lore Systems (Bestiary & In-Game Database Entries)": {},
	"7900 - 7999: Cryptography (Data Encryption & Anti-Tamper Validators)": {}
}
const ONLINE_MULTIPLAYER_8000_8999 = {
	"8000 - 8099: Network Peers (ENetMultiplayerPeer & Connection Handshakes)": {},
	"8100 - 8199: RPC Management (Remote-Any-Reliable Attributes & API Hooks)": {},
	"8200 - 8299: Lobby Management (Multiplayer Matchmaking & UPnP Setup)": {},
	"8300 - 8399: State Replication (MultiplayerSynchronizer & Network Spawners)": {},
	"8400 - 8499: Network Optimization (Ping, Jitter Buffers & Client Prediction)": {},
	"8500 - 8599: Online Leaderboards (Highscore Database Handlers)": {},
	"8600 - 8699: In-Game Chat Systems (Text Filters & Network Channels)": {},
	"8700 - 8799: Cloud Storage (Remote Cloud Save Synchronization)": {},
	"8800 - 8899: Network UI (Connection Status Displays & Lobby Asset UI)": {},
	"8900 - 8999: Dedicated Servers (Headless Server Logic & Serialization)": {}
}
const TOOLS_DEBUGGING_9000_9999 = {
	"9000 - 9099: Debug Console (Ingame Cheats, Command Lines & UI Overlays)": {},
	"9100 - 9199: Performance Profilers (FPS Counters & Performance Metrics)": {},
	"9200 - 9299: Editor Extensions (Custom Inspectors, GDExtensions & @tool Scripts)": {},
	"9300 - 9399: Visual Debuggers (Hitbox Outlines & Collision Draw Overrides)": {},
	"9400 - 9499: File Logging (System Log Writers & Bug Report Exporters)": {},
	"9500 - 9599: Developer Rooms (Test Levels & Teleportation Anchors)": {},
	"9600 - 9699: Combat Sandboxes (AI Training Dummies & Target Nodes)": {},
	"9700 - 9799: Automated Script Testing (Integration Suites & Unit Tests)": {},
	"9800 - 9899: Asset Validation (Broken Resource Scanners & Dependency Fixers)": {},
	"9900 - 9999: Crash Handling (Engine Crash Logs & Callstack Backups)": {}
}
