extends CharacterBody2D

@export var speed = 400 # Velocidade em pixels por segundo

func _physics_process(delta):
	# Captura as entradas do teclado (esquerda, direita, cima, baixo)
	var direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	
	# Define a velocidade multiplicando a direção pela velocidade
	velocity = direction * speed
	
	# Aplica o movimento e lida com colisões
	move_and_slide()
