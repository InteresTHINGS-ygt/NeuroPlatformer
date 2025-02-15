extends Window

@onready var msg: Window = $"."

func _ready() -> void:
	msg.hide()

func _process(delta: float) -> void:
	if Input.is_action_pressed("remove"):
		msg.hide()
