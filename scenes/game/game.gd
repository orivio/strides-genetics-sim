extends Node2D

var animals: Array[Creature] = []

func _ready() -> void:
	var i = 0
	for gene in Gamemanager.selected_genes:
		make_creature(gene, Gamemanager.generation)

func make_creature(geno: Genome, gen: int):
	var critter = Creature.create(geno, gen)
	critter.position = Vector2(50, 50)
	add_child(critter)

func _process(delta: float) -> void:
	pass
