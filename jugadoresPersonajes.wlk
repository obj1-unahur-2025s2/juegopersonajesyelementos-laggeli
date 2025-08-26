import elementos.*
import armas.*

object luisa {
    var personajeActivo = mario
    method cambiarPersonaje(unPersonaje) {
        personajeActivo = unPersonaje
    }
    method aparece(unElemento) {
        personajeActivo.encontrar(unElemento)
    }
}

object floki {
    var arma = jabalina
    method encontrar(unElemento) {
        if (arma.estáCargada()) {
            unElemento.recibirAtaque(arma.potencia())
            arma.usar()
        }
    }
    method cambiarArma(unArma) {
        arma = unArma
    } 
}

object mario {
    var valorRecolectado = 0
    var últimoElemento = elementoVacio
    method encontrar(unElemento) {
        unElemento.recibirTrabajo()
        valorRecolectado = valorRecolectado + unElemento.valorOtorgado()
        últimoElemento = unElemento
    }
    method estaFeliz() = valorRecolectado >= 50 || últimoElemento.altura() >= 10
}