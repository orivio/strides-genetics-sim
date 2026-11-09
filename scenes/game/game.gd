extends Node2D

var animals: Array[Creature] = []

func _ready() -> void:
	var i = 0
	for gene in Gamemanager.selected_genes:
		animals.append(Creature.new())
		animals[i].spawn(gene)
		i += 1
	
func _process(delta: float) -> void:
	pass
