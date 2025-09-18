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
