extends Control
@onready var color = %ColorRect
@onready var p1 = %p1_name
@onready var p2 = %p2_name
@onready var p3 = %p3_name
@onready var p4 = %p4_name


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	p1.text = "p1"
	p2.text = "p2"
	p3.text = "p3"
	p4.text = "p4"
	color.color = Color.from_hsv(randf(), 1.0, 1.0)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
