class Pedido {
	var property distancia 				// lo ponemos como var para poder cambiarlo en la consolo(pero seria const)
	var property tiempoMaximo				// lo ponemos como var para poder cambiarlo en la consolo(pero seria const)
	var property pasajerosATransportar
	var property coloresIncompatibles = []
	
	method velocidadRequerida() = distancia / tiempoMaximo
	method puedeSatisfacerPedido(auto){
		return auto.velocidadMaxima() >= self.velocidadRequerida() + 10
		and auto.capacidad() >= pasajerosATransportar
		and !coloresIncompatibles.contains(auto.color())
	}
	
	method acelerar(){tiempoMaximo -= 1}
	
	method relajar(){tiempoMaximo += 1}
}
