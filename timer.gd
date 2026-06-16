extends Control


var p1_name = Global.p1_name
@onready var label1=%P1_Name
var p2_name = Global.p2_name
@onready var label2=%P2_Name
var p3_name = Global.p3_name
@onready var label3=%P3_Name
var p4_name = Global.p4_name
@onready var label4=%P4_Name
@onready var time_left = %P1_Time
@onready var timers = {%P1_TL:time_left, %P2_TL:%P2_Time, %P3_TL:%P3_Time, %P4_TL:%P4_Time}
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for t in timers:
		t.wait_time = Global.time
	%P1_TL.start()
	label1.text=p1_name
	label2.text=p2_name
	label3.text=p3_name
	label4.text=p4_name

func strint(t):
	return str(int(t))
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	#for t in timers:
		#print(t)
		#print("%s time left: %s" % [t, t.time_left])
		#if t.time_left<=0:
			#print("x")
			#timers[t].text=str(int(t.wait_time))
		#else:
			#timers[t].text=str(int(t.time_left))
	%P1_Time.text=strint(%P1_TL.time_left)
	%P2_Time.text=strint(%P2_TL.time_left)
	%P3_Time.text=strint(%P3_TL.time_left)
	%P4_Time.text=strint(%P4_TL.time_left)
	


func _on_timer_timeout() -> void:
	print("Timeout")

func pause_unpause(t1, t2):
	t1.paused=true
	if t2.time_left == 0:
		t2.wait_time = Global.time
		t2.start()
		return
	t2.paused=false
	
func _on_p_1_ready_pressed() -> void:
	pause_unpause(%P1_TL, %P2_TL)
	


func _on_p_2_ready_pressed() -> void:
	pause_unpause(%P2_TL, %P3_TL)


func _on_p_3_ready_pressed() -> void:
	pause_unpause(%P3_TL, %P4_TL)


func _on_p_4_ready_pressed() -> void:
	pause_unpause(%P4_TL, %P1_TL)


func _on_quit_pressed() -> void:
	get_tree().change_scene_to_file("res://start.tscn")
