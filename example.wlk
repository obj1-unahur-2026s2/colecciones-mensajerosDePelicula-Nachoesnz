object puenteDeBrooklyn{
  method puedePasar(personajeObjeto){
    return personajeObjeto.peso() <= 1000 && paquete.estaPago()
  }
}

object laMatrix{
  method puedePasar(personajeObjeto){
    return personajeObjeto.puedeLlamar() && paquete.estaPago()
  }

}

///


object paquete{
  var estadoPaquete = true
  method estaPago() = estadoPaquete
  method cambiarEstadoPaquete(){
    if (self.estaPago()) {
      estadoPaquete = false
    }
    else{
      estadoPaquete = true
    }
  }
}

///

object empresaMensajeria{

/*Ahora aparece una empresa de mensajería. Esta tiene un conjunto de mensajeros, los cuales podrían ser Roberto, Chuck y Neo.

Se necesita poder:

Contratar a un mensajero
Despedir a un mensajero
Despedir a todos los mensajeros
Analizar si la mensajeria es grande (si tiene mas de dos mensajeros)
Consultar si el paquete puede ser entregado por el primer empleado de la la empresa de mensajería.
Saber el peso del último mensajero de la empresa.
Hacer al menos un test por cada punto de los anteriores que demuestren su correcto funcionamiento.*/


  const empleados = []
  method empleados(){
    return empleados
  }

  method contratarMensajero(mensajeroAContratar){
    empleados.add(mensajeroAContratar)
  }
  method despedirMensajero(mensajeroADespedir){
    empleados.remove(mensajeroADespedir)
  }
  method despedirATodosLosMensajeros(){
    empleados.clear()
  }
  method mensajeriaGrande(){
    return empleados.size() > 2
  }
  method primerEmpleadoEficiente(destinoAViajar){
    return destinoAViajar.puedePasar(empleados.first())
  }
  method pesoUltimoMensajero(){
    return empleados.last().peso()
  }





}










///


object roberto{
  const peso = 90
  var vehiculo = bicicleta
  method peso(){
    return peso + vehiculo.peso()
  }
  method vehiculo(){
    return vehiculo
  }
  method cambiarACamion(){
    vehiculo = camion
  }
  method cambiarABicicleta(){
    vehiculo = bicicleta
  }
  method puedeLlamar(){
    return false
  }
}

object camion{
  var cantidadAcoplados = 0
  method cambiarCantidadAcoplados(nuevaCantidadAcoplados){
    cantidadAcoplados = nuevaCantidadAcoplados
  }
  method peso(){
    return cantidadAcoplados * 500
  }
}


object bicicleta{
  method peso(){
    return 5
  }
}


object chuckNorris{
  method peso(){
    return 80
  }
  method puedeLlamar(){
    return true
  }

}

object neo{
  var creditoCelular = 5
  method cambiarCreditoCelular(nuevoCreditoCelular){
    creditoCelular = nuevoCreditoCelular
  }
  method peso(){
    return 0
  }
  method puedeLlamar(){
    return creditoCelular > 0
  }

}