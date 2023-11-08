extends CanvasLayer

var current_value = 0

func _ready():
	$Slider.max_value = 100
	$Slider.min_value = 0
	$Slider.editable = true
	
func _process(delta):
	$Slider.value = current_value
	



func _on_slider_value_changed(value):
	if value > current_value:
		current_value = value
	
	if $Slider.value == $Slider.max_value:
		current_value = 0
		$Slider.value = 0
		

func _on_slider_drag_started():
	$Player.stream = load("res://art/ssss.ogg")
	$Player.play()
	$Player.volume_db = 10


func _on_slider_drag_ended(value_changed):
	$Player.stop()
