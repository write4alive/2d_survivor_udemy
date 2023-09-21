extends Node

signal experince_vial_collected(number: float)

func emit_experince_vial_collected(number : float):
	experince_vial_collected.emit(number)
