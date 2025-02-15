extends Area2D

@onready var msg: Window = $"../../../msg"
@onready var frame_2: AnimatedSprite2D = $"../../../msg/frame2"


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_entered(body: Node2D) -> void:
	msg.show()
	frame_2.frame = 0
	queue_free()
	
