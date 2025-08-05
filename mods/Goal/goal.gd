extends Node3D

func _ready() -> void:
	print("Ready")

func _on_detect_player_body_entered(body: Node3D) -> void:
	print(body)
	if body.is_in_group("player"):
		get_tree().change_scene_to_file("res://mods/Menus/Winner.tscn")
