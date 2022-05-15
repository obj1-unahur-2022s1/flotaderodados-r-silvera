import rodados.*

class Dependencia {
	var rodados = []
	var property cantidadEmpleados = 0
	var pedidos = []
	
	method agregarAFlota(rodado) = rodados.add(rodado)
	method quitarDeFlota(rodado) = rodados.remove(rodado)
	
	method pesoTotalFlota(){
		return rodados.sum{r => r.peso()}	
	}
	
	method cantidadRodados() = rodados.size()
	
	method todosPuedenIrA(velocidadMaxima){
		return rodados.all{r => r.velocidadMaxima() >= velocidadMaxima}
	}
	
	method estaBienEquipada(){
		return self.cantidadRodados() >= 3 and self.todosPuedenIrA(100)
	}
	
	method rodadosDeColor(color){
		return rodados.filter{r => r.color() == color}
	}
	
	method capacidadTotalEnColor(color){
		return self.rodadosDeColor(color).sum{r => r.capacidad()}
	}
	
	method colorDelRodadoMasRapido(){
		return rodados.max{r => r.velocidadMaxima()}.color()	
	}
	
	method capacidadTotal() = rodados.sum{r => r.capacidad()}
	
	method capacidadFaltante(){
		return (cantidadEmpleados - self.capacidadTotal()).max(0)
	}
	
	method esGrande(){
		return cantidadEmpleados >= 40 and self.cantidadRodados() >= 5
	}
	
	method agregarPedido(pedido) = pedidos.add(pedido)
	
	method quitarPedido(pedido) = pedidos.remove(pedido)
	
	method totalPasajerosEnPedidos(){
		return pedidos.sum{p => p.pasajerosATransportar()}
	}
	
	method puedeSerSatisfechoPorAlgunRodado(pedido){
		return rodados.any{r => pedido.puedeSatifacerPedido(r)}
	}
	
	method pedidosInsatisfechos(){
		return pedidos.filter{p => not self.puedeSerSatisfechoPorAlgunRodado(p)}
	}
	
	method esColorIncompatibleParaTodosLosPedidos(color){
		pedidos.all{p => p.coloresIncompatibles().contains(color)}
	}
	
	method relajarTodosLosPedidos(){
		pedidos.forEach{p => p.relajar()}
	}
}
