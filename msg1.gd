extends AnimatedSprite2D


func _ready() -> void:
	pass

func _process(_delta: float) -> void:
	if Input.is_action_pressed("remove"):
		queue_free()
		
