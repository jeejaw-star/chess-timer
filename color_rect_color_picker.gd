extends ColorRect


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	color=Color.from_hsv(randf(), 1.0, 1.0)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
