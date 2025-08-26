object castillo {
    var defensa = 150
    method altura() = 20
    method recibirAtaque(potencia) {
        defensa = (defensa - potencia).max(0)
    }
    method valorOtorgado() = defensa * 0.2
    method recibirTrabajo() {
        defensa = (defensa + 20).min(200)
    }
}

object aurora {
    var estaViva = true
    method altura() = 1
    method recibirAtaque(potencia) {
        estaViva = potencia < 10
    }
    method recibirTrabajo() {}
    method valorOtorgado() = 15
}

object tipa {
    var altura = 8
    method altura() = altura
    method recibirAtaque(potencia) {}
    method recibirTrabajo() {
        altura = altura + 1
    }
    method valorOtorgado() = altura * 2
}

object elementoVacio {
    method altura() = 0
    method recibirAtaque(potencia) {} 
}