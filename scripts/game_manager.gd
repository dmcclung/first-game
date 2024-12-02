extends Node

var score = 0

@onready var scoreLabel: Label = $CanvasLayer/Score

func add_point():
	score += 1
	scoreLabel.text = "Score: " + str(score)
