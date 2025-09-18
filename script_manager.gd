extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_afflux_button_pressed() -> void:
	$"../Labels/BarreDeVie".value += GlobalMachins.healing_surge_used()


func _on_remous_button_pressed() -> void:
	$"../Labels/BarreDeVie".value += GlobalMachins.riptide_used()


func _on_vague_button_pressed() -> void:
	$"../Labels/BarreDeVie".value += GlobalMachins.healing_wave_used()


func _on_viveterre_button_pressed() -> void:
	$"../Labels/BarreDeVie".value += GlobalMachins.earthliving_used()


func _on_mana_pot_button_pressed() -> void:
	GlobalMachins.current_mana += 50


func _on_mana_regen_button_pressed() -> void:
	print("INNVER")
	GlobalMachins.mana_regen += 5
	var timer = Timer.new()
	timer.one_shot = true
	timer.wait_time = 5.0
	timer.autostart = true
	timer.timeout.connect(innervOMG)
	add_child(timer)

func innervOMG() :
	GlobalMachins.mana_regen -= 5
