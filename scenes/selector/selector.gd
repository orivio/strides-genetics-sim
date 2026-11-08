extends Node2D

@export var buttonsArr: Array[Button]
var genomes: Array[Genome] = []

func _ready() -> void:
	Gamemanager.selected_genomes.clear() #continue here
