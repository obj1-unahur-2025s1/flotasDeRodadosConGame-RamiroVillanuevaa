
// me falta agregar la propiedad cantidadEmpleados
// y la capacidadFaltante que es la cantidad de empleados menos la capacidad total de la flota

class Dependencias {
    const property flota = []
    var property cantidadEmpleados

    method agregarAFlota(rodado){
        flota.add(rodado)
    } 

    method quitarDeFlota(rodado) {
      flota.remove(rodado)
    }

    method pesoTotalFlota() =  flota.sum( {r => r.peso() })

    method estaBienEquipado() {
      return flota.size() >= 3 and self.todosPuedenIrAlMenosA100(100)
    }

    method todosPuedenIrAlMenosA100(velocidad) = flota.all({r=> r.velocidad() >= velocidad})
    

    method capacidadTotalEnColor(color) {
     return flota.filter({r => r.color() == color}).sum( {r => r.capacidad()}) //devuelve la suma de los objetos de la coleccion filtrada por **color**
    }

    method colorDelRodadoMasRapido() {
        return flota.max({r=>r.velocidad()}).color({r=> r.color()}) //devuelve el color del rodado mas rapido
    } 

    method capacidadTotal() = flota.sum({r=>r.capacidad()})

    method capacidadFaltante() = (cantidadEmpleados - self.)

    method esGrande() = (cantidadEmpleados >= 40) and (flota.size() >= )
}

