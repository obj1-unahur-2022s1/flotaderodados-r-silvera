class Pedido {
	const property distancia 				// lo ponemos como var para poder cambiarlo en la consolo(pero seria const)
	const property tiempoMaximo				// lo ponemos como var para poder cambiarlo en la consolo(pero seria const)
	const property pasajerosATransportar
	const property coloresIncompatibles = []
	
	method velocidadRequerida() = distancia / tiempoMaximo
	method puedeSatisfacerPedido(auto){
		return auto.velocidadMaxima() >= self.velocidadRequerida() + 10
		and auto.capacidad() >= pasajerosATransportar
		and !coloresIncompatibles.contains(auto.color())
	}
	
}
