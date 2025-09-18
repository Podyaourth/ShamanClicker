extends TextEdit


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$".".visible = false
	$".".position = Vector2(611.0, 341.0)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_remous_button_mouse_entered() -> void:
	$".".visible = true
	# Pour plus tard : tween tooltip slide
	#var tween = create_tween()
	#tween.tween_property(self,"position",Vector2(611.0, 341.0),0.5).set_ease(Tween.EASE_OUT).set_trans(Tween.TRANS_SINE)
	$".".text = GlobalMachins.RemousToolTip
	pass # Replace with function body.


func _on_remous_button_mouse_exited() -> void:
	# Pour plus tard : tween tooltip slide
	#var tween = create_tween()
	#tween.tween_property(self,"position",Vector2(1163.0, 341.0),0.5).set_ease(Tween.EASE_OUT).set_trans(Tween.TRANS_SINE)
	$".".visible = false
	pass # Replace with function body.


func _on_afflux_button_mouse_entered() -> void:
	$".".visible = true
	$".".text = GlobalMachins.AffluxToolTip
	pass # Replace with function body.

func _on_afflux_button_mouse_exited() -> void:
	$".".visible = false
	pass # Replace with function body.


func _on_vague_button_mouse_entered() -> void:
	$".".visible = true
	$".".text = GlobalMachins.HealingWaveTooltip
	pass # Replace with function body.


func _on_vague_button_mouse_exited() -> void:
	$".".visible = false
	pass # Replace with function body.


func _on_viveterre_button_mouse_entered() -> void:
	$".".visible = true
	$".".text = GlobalMachins.EarthlivingTooltip
	pass # Replace with function body.


func _on_viveterre_button_mouse_exited() -> void:
	$".".visible = false
	pass # Replace with function body.


func _on_gold_icon_mouse_entered() -> void:
	$".".visible = true
	$".".text = GlobalMachins.GoldsTooltip
	pass # Replace with function body.


func _on_gold_icon_mouse_exited() -> void:
	$".".visible = false
	pass # Replace with function body.


func _on_crit_icon_mouse_entered() -> void:
	$".".visible = true
	$".".text = GlobalMachins.CritTooltip
	pass # Replace with function body.


func _on_crit_icon_mouse_exited() -> void:
	$".".visible = false
	pass # Replace with function body.


func _on_mana_icon_mouse_entered() -> void:
	$".".visible = true
	$".".text = GlobalMachins.ManaRegenTooltip
	pass # Replace with function body.


func _on_mana_icon_mouse_exited() -> void:
	$".".visible = false
	pass # Replace with function body.


func _on_mana_pot_button_mouse_entered() -> void:
	$".".visible = true
	$".".text = GlobalMachins.ManaPotTooltip
	pass # Replace with function body.


func _on_mana_pot_button_mouse_exited() -> void:
	$".".visible = false
	pass # Replace with function body.


func _on_crit_flask_button_mouse_entered() -> void:
	$".".visible = true
	$".".text = GlobalMachins.CritFlaskTooltip
	pass # Replace with function body.


func _on_crit_flask_button_mouse_exited() -> void:
	$".".visible = false
	pass # Replace with function body.


func _on_crit_button_mouse_entered() -> void:
	$".".visible = true
	$".".text = GlobalMachins.BuyCritTooltip
	pass # Replace with function body.


func _on_crit_button_mouse_exited() -> void:
	$".".visible = false
	pass # Replace with function body.


func _on_mana_regen_button_mouse_entered() -> void:
	$".".visible = true
	$".".text = GlobalMachins.BuyManaRegenTooltip
	pass # Replace with function body.


func _on_mana_regen_button_mouse_exited() -> void:
	$".".visible = false
	pass # Replace with function body.
