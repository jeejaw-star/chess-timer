extends Control
@onready var color = %ColorRect
@onready var p1 = %p1_name
@onready var p2 = %p2_name
@onready var p3 = %p3_name
@onready var p4 = %p4_name
@onready var time = %time


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	p1.text = "Player 1"
	p2.text = "Player 2"
	p3.text = "Player 3"
	p4.text = "Player 4"
	color.color = Color.from_hsv(randf(), 1.0, 1.0)
	time.value = 300
	


func _on_button_pressed() -> void:
	Global.p1_name = p1.text
	Global.p2_name = p2.text
	Global.p3_name = p3.text
	Global.p4_name = p4.text
	Global.time = time.value
	print(Global.p1_name)
	print(Global.p2_name)
	print(Global.p3_name)
	print(Global.p4_name)
	print(Global.time)
	get_tree().change_scene_to_file("res://timer.tscn")
