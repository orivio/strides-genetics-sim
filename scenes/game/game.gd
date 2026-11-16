extends Node2D

var animals: Array[Creature] = []

func _ready() -> void:
	var i = 0
	for gene in Gamemanager.selected_genes:
		make_creature(gene, Gamemanager.generation, Vector2(1, 1))#make this vector random
 
func make_creature(geno: Genome, gen: int, pos: Vector2):
	var critter = Creature.create(geno, gen)
	critter.position = pos
	add_child(critter)

func _process(delta: float) -> void:
	pass
