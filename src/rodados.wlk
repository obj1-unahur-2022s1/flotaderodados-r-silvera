
class Corsa {
	var property color
	method capacidad() = 4
	method velocidadMaxima() = 150
	method peso() = 1300
}

class Kwid{
	var property tanqueAdicional = false
	method capacidad() = if(tanqueAdicional){3}else{4}
	method velocidadMaxima() = if(tanqueAdicional){120}else{110}
	method peso() = 1200 + if(tanqueAdicional){150}else{0}
	method color() = "Azul"
}

object traffic{
	var property interior
	var property motor
	method capacidad() = interior.capacidad()
	method velocidadMaxima() = motor.velocidadMaxima()
	method peso() = 4000 + interior.peso() + motor.peso()
	method color() = "Blanco"
}

object interiorComodo{
	method capacidad() = 5
	method peso() = 700
}

object interiorPopular{
	method capacidad() = 12
	method peso() = 1000
}

object motorPulenta{
	method peso() = 800
	method velocidadMaxima() = 130
}

object motorBataton{
	method peso() = 500
	method velocidadMaxima() = 80
}

class AutoEspecial{
	var property color
	var property velocidadMaxima
	var property peso
	var property capacidad
}