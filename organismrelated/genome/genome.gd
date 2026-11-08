extends Resource

class_name Genome

const COLORARR = ["Black", "White", "Orange", "Brown", "Gray"]

var speed: int
var color: String
var size: int

func _init(spd: int = 0, clr: String = "", s: int = 0):
	speed = spd
	color = clr
	size = s

static func random() -> Genome:
	return Genome.new(randi_range(5, 40), COLORARR[randi_range(0, 4)], randi_range(5, 40))
	
