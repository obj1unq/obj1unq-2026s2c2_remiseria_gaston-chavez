object espacioso {
    method capacidad() {
      return 7
    }

    method puedeLlevarSillaDeRueda() {
      return false
    }
}

object accessible {
    method capacidad() {
      return 5
    }

    method puedeLlevarSillaDeRueda() {
      return true
    }
}

object deportivo {
    method autonomia() {
      return 400
    }

    method velocidadMax() {
      return 230
    }

    method esRuidoso() {
      return true
    }
}

object urbano {
  method autonomia() {
      return 1000
    }

    method velocidadMax() {
      return 130
    }

    method esRuidoso() {
      return false
    }
}