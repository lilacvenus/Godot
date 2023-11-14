extends CharacterBody2D

# Where the player is on the map
var currentPosition = [0, 0]
var pixelsToMove = 17

func _input(event):
	if event.is_action_pressed("ui_right"):
		currentPosition[0] += pixelsToMove
	
	elif event.is_action_pressed("ui_left"):
		currentPosition[0] -= pixelsToMove
	
	elif event.is_action_pressed("ui_up"):
		currentPosition[1] -= pixelsToMove
	
	elif event.is_action_pressed("ui_down"):
		currentPosition[1] += pixelsToMove
	
	self.position = Vector2(currentPosition[0], currentPosition[1])
