extends Node2D

var genome = Genome.new(0, "", 0)
var creature1: Creature
var creature2: Creature
var creature3: Creature

func _on_button1_pressed() -> void:
	genome = Genome.new(20, "Black", 20)

func _on_button_2_pressed() -> void:
	genome = Genome.new(20, "White", 20)

func _on_button_3_pressed() -> void:
	genome = Genome.new(20, "Orange", 20)

func _process(delta: float) -> void:
	print(genome.color)
