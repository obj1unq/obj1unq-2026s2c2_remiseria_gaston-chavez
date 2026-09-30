object tranportadorSillaRuedas {
    method espacioOcupado() {
      return 1
    }

    method velocidadMax() {
      return 90
    }

    method puedeLlevarSillaDeRueda() {
      return true
    }

    method esSilencioso() {
      return false //no influye
    }

    method autonomia() {
      return -20
    }
}

object tanqueExtraDeGas {
    method espacioOcupado() {
      return 1
    }

    method velocidadMax() {
      return 80
    }

    method puedeLlevarSillaDeRueda() {
      return false
    }

    method esSilencioso() {
      return true
    }

    method autonomia() {
      return 200
    }
}

object cañonEscapeSilencioso {
    method espacioOcupado() {
      return 0 //no ocupa espacio
    }

    method velocidadMax() {
      return 115
    }

    method puedeLlevarSillaDeRueda() {
      return false
    }

    method esSilencioso() {
      return true
    }

    method autonomia() {
      return -10
    }
}