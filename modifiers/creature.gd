extends Node

class_name Creature

var gene: Genome
var generation: int

func _init(genome: Genome, gen: int):
	gene = genome
	generation = gen
