import dependencia.*
import rodados.*

class Pedido {
	
	var property coloresIncompatibles = #{"azul"}
	
    var property tiempoMaximo 
	var property distanciaARecorrer
	var property capacidadDePasajeros
	
	method velocidadRequerida() { return distanciaARecorrer / tiempoMaximo }
	method puedeSatisfacerPedido(auto) { 
		return ((auto.velocidadMaxima() - self.velocidadRequerida()) >= 10)
		and (auto.capacidad() <= capacidadDePasajeros)
		and (not coloresIncompatibles.any{ c => c == auto.color()}) }
		
	method acelerar() {tiempoMaximo -= 1.max(tiempoMaximo -1)}
	method relajar() {tiempoMaximo =+ 1}
}