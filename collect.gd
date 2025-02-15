extends Area2D

@onready var game_manager: Node = %GameManager
@onready var game_manager_2: Node = %GameManager2

func _on_body_entered(body: Node2D) -> void:
	queue_free()
