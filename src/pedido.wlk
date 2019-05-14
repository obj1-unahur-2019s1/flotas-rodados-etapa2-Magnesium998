import dependencia.*
import rodados.*

class Pedido {
	
	var property coloresIncompatibles = []
	
    var property tiempoMaximo 
	var property distanciaARecorrer
	var property capacidadDePasajeros
	
	method velocidadRequerida() { return tiempoMaximo / distanciaARecorrer }
	method puedeSatisfacerPedido(auto) { 
		return ((auto.velocidadMaxima() - self.velocidadRequerida()) >= 10)
		and (auto.capacidad() <= capacidadDePasajeros)
		and (not coloresIncompatibles.any{ c => c == auto.color()}) }
}