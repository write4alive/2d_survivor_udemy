extends Node

var current_experince = 0

func _ready():
	GameEvents.experince_vial_collected.connect(on_experince_vial_collected)
	
	
func increment_experince ( number : float):
	current_experince += number
	print(current_experince)

#signal hanlder
func on_experince_vial_collected(number: float):
	increment_experince(number)
