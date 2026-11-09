extends Node2D

@export var buttonsArr: Array[Button]
var button_genes: Array[Genome] = []

func _ready() -> void:
	Gamemanager.selected_genes.clear()
	for i in range(0, 3):
		button_genes.append(Genome.random())

func _on_button1_pressed() -> void:
	Gamemanager.selected_genes.append(button_genes[0])

func _on_button_2_pressed() -> void:
	Gamemanager.selected_genes.append(button_genes[1])

func _on_button_3_pressed() -> void:
	Gamemanager.selected_genes.append(button_genes[2])

func _process(delta: float) -> void:
	print(Gamemanager.selected_genes)
	if len(Gamemanager.selected_genes) == 3:
		get_tree().change_scene_to_file("res://scenes/game/game.tscn")
