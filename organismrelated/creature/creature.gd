extends Node2D
class_name Creature

var gene: Genome
var generation: int

const creature_scene = preload("res://organismrelated/creature/creature.tscn")

func create(genome: Genome, gen: int):
	gene = genome
	generation = gen
	scale = Vector2.ONE * (gene.size/20.0)
	modulate = Color(gene.color.to_lower())

func _process(delta: float) -> void:
	position.x += gene.speed * delta

func spawn(genome: Genome) -> void:
	var critter = creature_scene.instantiate() #fix!
	critter.create(genome, Gamemanager,generation)
	add_child(critter)
