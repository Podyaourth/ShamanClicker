extends ProgressBar


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if value >= 100 :
		var tween = create_tween()
		tween.tween_property(self,"value",0.0,0.5).set_ease(Tween.EASE_OUT).set_trans(Tween.TRANS_SINE)
		GlobalMachins.current_golds += 20
