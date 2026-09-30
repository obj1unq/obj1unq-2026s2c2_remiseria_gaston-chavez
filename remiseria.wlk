import objectCombi.*
import adaptaciones.*

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
  const color = "beige"
  const autonomiaBase = 200

  method capacidad() {
    return capacidadBase - self.capacidadConAdaptaciones()
  }

  method capacidadConAdaptaciones() {
    return adaptaciones.sum({adaptacion => adaptacion.espacioOcupado()})
  }

  method velocidadMax() {
    return adaptaciones.map({adaptacion => adaptacion.velocidadMax()}).minIfEmpty(120)
  }

  method color() {
    return color
  }

  method puedeLlevarSillaDeRueda() {
    return adaptaciones.any({adaptacion => adaptacion.puedeLlevarSillaDeRueda()})
  }

  method esRuidoso() {
    return adaptaciones.any({adaptacion => adaptacion.esRuidoso()})
  }
  
  method autonomia() {
    return autonomiaBase - self.autonomiaConAdaptaciones()
  }

  method autonomiaConAdaptaciones() {
    return adaptaciones.sum({adaptacion => adaptacion.autonomia()})
  }
}

object combiAdaptable {
  var property color = ""
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
   return motor.esRuidoso()
 }
}