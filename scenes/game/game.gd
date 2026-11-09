extends Node2D

var animals: Array[Creature] = []

func _ready() -> void:
	var i = 0
	for gene in Gamemanager.selected_genes:
		animals.append(Creature.new())
		animals[i].create(gene, Gamemanager.generation)
		i += 1
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
