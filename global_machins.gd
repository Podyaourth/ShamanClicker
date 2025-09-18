extends Node

var RemousToolTip : String = "Remous : fais des trucs forts.\nCoût en Mana : X"
var AffluxToolTip : String = "Afflux : fais des trucs plus forts.\nCoût en Mana :"

# Variables Mana
var current_mana: int = 100
var mana_max: int = 100
var mana_regen: int = 1
var crit_mana_regen: int = 5

var mana_cost_healing_surge: int = 15
var mana_cost_healing_wave: int = 5
var mana_cost_riptide: int = 10
var healing_value: int 


# Called when the node enters the scene tree for the first time.
func _ready():
	#Timer MP5
	var timer = Timer.new()
	timer.wait_time = 1.0
	timer.autostart = true
	timer.timeout.connect(regen_mana)
	add_child(timer)
	
func regen_mana():
	if current_mana < mana_max:
		current_mana = min(current_mana + mana_regen, mana_max)
		
		
func mana_use(cost) -> bool:
	if current_mana > cost:
		current_mana -= cost
		return true
	return false
	
func spell_used(spell_name: String, cost: int):
	if mana_use(cost):
		spell_used(spell_name, cost)
		print("Mana restante : ", current_mana)
	else: 
		print("Pas assez de mana pour ", spell_name, " !")
		
func healing_surge_used():
	spell_used("healing_surge", mana_cost_healing_surge) 

func healing_wave_used():
	spell_used("healing_wave", mana_cost_healing_wave)	

func riptide_used():
	spell_used("riptide", mana_cost_riptide)	
	