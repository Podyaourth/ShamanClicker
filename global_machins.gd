extends Node


# Variables Mana
var current_mana: int = 50
var mana_max: int = 100
var mana_regen: int = 1
var crit_mana_regen: int = 5

# Variables Golds
var current_golds : int = 0

# Variables Critical
var current_crit_chance : float = 0.0

var mana_cost_healing_surge: int = 10
var mana_cost_healing_wave: int = 10
var mana_cost_riptide: int = 10
var mana_cost_earthliving : int = 10


# Varaiables Healing

# Variables valeur de heal

var healing_surge_value: int = 10
var riptide_value : int = 10
var healing_wave_value : int = 10
var earthliving_value : int = 10


var RemousToolTip : String = "Remous : fais des trucs forts.\nCoût en Mana : "+var_to_str(mana_cost_riptide)
var AffluxToolTip : String = "Afflux : fais des trucs plus forts.\nCoût en Mana : "+var_to_str(mana_cost_healing_surge)
var HealingWaveTooltip : String = "Vague de soins : pas mal en vrai.\nCoût en Mana : "+var_to_str(mana_cost_healing_wave)
var EarthlivingTooltip : String = "Viveterre : pas mal mais bon.\nCoût en Mana : "+var_to_str(mana_cost_earthliving)


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
		current_mana += mana_regen
		
		
func mana_use(cost) -> bool:
	if current_mana >= cost:
		current_mana = current_mana - cost
		return true
	return false
	
func spell_used(spell_name: String, cost: int) -> bool :
	if mana_use(cost):
		match spell_name :
			"healing_wave" :
				print("vague de soin")
			"healing_surge" :
				print("Afflux de soin")
			"riptide" :
				print("Remous")
			"earthliving" :
				print("Viveterre")
		print("Mana restante : ", current_mana)
		return true
	else: 
		print("Pas assez de mana pour ", spell_name, " !")
		return false

func healing_surge_used():
	if spell_used("healing_surge", mana_cost_healing_surge) :
		return healing_surge_value
	else :
		return 0

func healing_wave_used():
	if spell_used("healing_wave", mana_cost_healing_wave) :
		return healing_wave_value
	else : 
		return 0

func riptide_used():
	if spell_used("riptide", mana_cost_riptide) :
		return riptide_value
	else :
		return 0

func earthliving_used() :
	if spell_used("earthliving", mana_cost_earthliving) :
		return earthliving_value
	else :
		return 0
	
