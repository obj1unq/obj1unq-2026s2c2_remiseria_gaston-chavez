import objectCombi.*
import adaptaciones.*

//Punto 1 Los vehiculos --------------------------
class Torino {
var color 
var velocidadMax 
var autonomia 

  method capacidad() {
    return 4
  }

  method esRuidoso() {
    return true
  }

  method puedeLlevarSillaDeRueda() {
    return false
  }

  method velocidadMax() {
    return velocidadMax 
  }

  method autonomia() {
    return autonomia
  }

  method color() {
    return color
  }
}

class Economico {
  const adaptaciones = #{}
  const capacidadBase = 5
  const color = "Beige"
  const autonomiaBase = 200

  method capacidad() {
    return capacidadBase - self.capacidadConAdaptaciones()
  }

  method agregarAdaptaciones(adaptacion) {
    adaptaciones.add(adaptacion)
  }

  method capacidadConAdaptaciones() {
    return adaptaciones.sum({adaptacion => adaptacion.espacioOcupado()})
  }

  method velocidadMax() {
    return adaptaciones.map({adaptacion => adaptacion.velocidadMax()}).minIfEmpty({120})
  }

  method color() {
    return color
  }

  method puedeLlevarSillaDeRueda() {
    return adaptaciones.any({adaptacion => adaptacion.puedeLlevarSillaDeRueda()})
  }

  method esRuidoso() {
    return not adaptaciones.any({adaptacion => adaptacion.esSilencioso()})
  }
  
  method autonomia() {
    return autonomiaBase + self.autonomiaConAdaptaciones()
  }

  method autonomiaConAdaptaciones() {
    return adaptaciones.sum({adaptacion => adaptacion.autonomia()})
  }
}

object combiAdaptable {
  var property color = "Celeste" //es reconfigurable el color
  var interior = espacioso
  var motor = deportivo

 method interior(_interior) {
    interior = _interior
 }

 method capacidad() {
   return interior.capacidad()
 }

 method motor(_motor) {
   motor = _motor
 }

 method velocidadMax() {
   return motor.velocidadMax()
 }

 method autonomia() {
   return motor.autonomia()
 }

 method esRuidoso() {
   return not motor.esSilencioso()
 }

 method puedeLlevarSillaDeRueda() {
   return interior.puedeLlevarSillaDeRueda()
 }
}

//Punto 2 Reservas --------------------------
class Reserva {
  var cantPersonas
  var distanciaARecorrer
  var tiempoMaximoViaje
  var coloresContraIndicados
  var necesitaVehiculoNoRuidoso
  var puedeTransportaSilla

  method puedeSerCumplidaPorUn(vehiculo) {
    return self.puedeCumplirCapacidadEn(vehiculo) && 
           self.puedeCumplirAutonomiaEn(vehiculo) &&
           self.esVelocidadMaxMayor(vehiculo)     &&
           self.esVehiculoRespetuoso(vehiculo)    
  }

  method puedeCumplirCapacidadEn(vehiculo) {
    return vehiculo.capacidad() >= cantPersonas
  }

  method puedeCumplirAutonomiaEn(vehiculo) {
    return vehiculo.autonomia() >= distanciaARecorrer
  }

  method esVelocidadMaxMayor(vehiculo) {
    return vehiculo.velocidadMax() >= self.velocidadPromedio()
  }

  method velocidadPromedio() {
    return 10 + distanciaARecorrer / tiempoMaximoViaje
  }

  method esVehiculoRespetuoso(vehiculo) {
    return self.esDeVehiculoDiferenteColor(vehiculo)   && 
           self.puedeTransportarSillaDeRueda(vehiculo) &&
           self.esVehiculoNoRuidoso(vehiculo)
  }

  method esDeVehiculoDiferenteColor(vehiculo) {
    return coloresContraIndicados.all({color => self.esDeDiferenteColor(vehiculo,color)})
  }

  method esDeDiferenteColor(vehiculo,color) {
    return vehiculo.color() != color
  }

  method puedeTransportarSillaDeRueda(vehiculo) {
    return not puedeTransportaSilla or vehiculo.puedeLlevarSillaDeRueda()
  }

  method esVehiculoNoRuidoso(vehiculo) {
    return not necesitaVehiculoNoRuidoso or not vehiculo.esRuidoso()
  }
}