extends CharacterBody3D


const SPEED = 5.0

var reversed: bool = false

func reverse():
	reversed = not reversed

func _physics_process(_delta: float) -> void:
	velocity.x = -SPEED if reversed else SPEED
	move_and_slide()
	
func _on_detect_player_body_entered(body: Node3D) -> void:
	if body.is_in_group("player"):
		get_tree().change_scene_to_file("res://mods/Menus/GameOver.tscn")
