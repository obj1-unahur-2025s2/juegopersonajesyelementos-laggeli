object ballesta {
    var flechas = 10
    method estáCargada() {
        return flechas > 0
    }
    method potencia() = 4
    method usar() {
      flechas = flechas - 1
    }
}

object jabalina {
    var estáCargada = true
    method potencia() = 30
    method estáCargada() = estáCargada
    method usar() {
      estáCargada = false
    }
}