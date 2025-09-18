extends TextEdit


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$".".visible = false
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_remous_button_mouse_entered() -> void:
	$".".visible = true
	$".".text = GlobalMachins.RemousToolTip
	pass # Replace with function body.


func _on_remous_button_mouse_exited() -> void:
	$".".visible = false
	pass # Replace with function body.


func _on_afflux_button_mouse_entered() -> void:
	$".".visible = true
	$".".text = GlobalMachins.AffluxToolTip
	pass # Replace with function body.

func _on_afflux_button_mouse_exited() -> void:
	$".".visible = false
	pass # Replace with function body.
