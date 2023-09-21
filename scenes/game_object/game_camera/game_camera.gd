extends Camera2D

var target_poisition = Vector2.ZERO


func _ready():
	make_current()


func _process(delta):
	aquire_target()
	global_position = global_position.lerp(target_poisition, 1.0 - exp(-delta * 20))


func aquire_target():
	var player_nodes = get_tree().get_nodes_in_group("player")
	if player_nodes.size() > 0:
		var player = player_nodes[0] as Node2D
		target_poisition = player.global_position
