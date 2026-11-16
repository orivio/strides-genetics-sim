extends Node2D
class_name Creature

var gene: Genome
var generation: int


static func create(genome: Genome, gen: int):
	var creature_scene: PackedScene = load("res://organismrelated/creature/creature.tscn")
	var critter: Creature = creature_scene.instantiate() #fix!
	critter.gene = genome
	critter.generation = gen
	#critter.scale = Vector2.ONE * (gene.size/20.0)
	#modulate = Color(gene.color.to_lower())
	
	return critter

func _process(delta: float) -> void:
	position.x += gene.speed * delta

func spawn(genome: Genome) -> void:
	pass
