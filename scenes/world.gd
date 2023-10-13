extends Node

@export var skull_scene: PackedScene

func _ready():
	randomize()

func _on_mob_timer_timeout():
	var skull = skull_scene.instantiate()
	
	var skull_spawn_location = $SpawnPath/SpawnLocation
	skull_spawn_location.progress_ratio = randf()
	
	var player_position = $Lighter.position
	
	#skull.initialize(skull_spawn_location, player_position)
	
	add_child(skull)
