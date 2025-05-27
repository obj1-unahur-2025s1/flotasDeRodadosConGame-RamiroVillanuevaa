class ChevroletCorsa{
  var color
  method capacidad() = 4
  method velocidadMaxima() = 180
  method peso() = 1300
  method color() =  color
}

class RenaultKwid{
  var property tanqueAdicional = false

  method capacidad() =  if (tanqueAdicional) 3 else 4
  method velocidad() = if (tanqueAdicional) 110 else 120
  method peso() = 1200 + if (tanqueAdicional) 150 else 0 
  method color() = "azul"
}

object trafic {
  var property interior = interiorPopular
  var property motor = motorPulenta
  
  method capacidad() = interior.capacidad()
  method velocidad() = motor.velocidad()
  method peso() = (4000 + interior.peso()) + motor.peso()

  method color() =  "blanco"
  }

object interiorComodo {
  method capacidad() = 5
  method peso() = 700

}

object interiorPopular {
  method capacidad() = 12
  method peso() =  1000
}

object motorPulenta {
  method peso() = 800
  method velocidad() = 130
}

object motorBaraton {
  method peso() = 500
  method velocidad() = 80
}

object autoEspecial {
  method capacidad() =  5
  method velocidad() = 160
  method peso() = 1200
  method color() = "beige"
}