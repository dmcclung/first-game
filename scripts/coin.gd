extends Area2D

@onready var game_manager: Node = %GameManager

@onready var audio_stream_player: AudioStreamPlayer2D = $AudioStreamPlayer2D
@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D

var collected = false

func _on_body_entered(_body: Node2D) -> void:
	if collected:
		return
	
	game_manager.add_point()
	animated_sprite.visible = false
	collected = true
	audio_stream_player.play()
	await audio_stream_player.finished
	queue_free()
