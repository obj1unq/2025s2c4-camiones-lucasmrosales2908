import cosas.*
import camion.*
 
object estadoAuto{
    const peligrosidad = 15

    method getPeligrosidad() { 
        return peligrosidad 
    }

    method accidente(){
        bumblebee.setEstado(estadoRobot)
    }  
}
object estadoRobot{
    const peligrosidad = 30

    method getPeligrosidad() {
         return peligrosidad 
    }

    method accidente(){
         bumblebee.setEstado(estadoAuto)
    }
    
}


object estadoCargadoConMisiles{ // gran canion?
    const peligrosidad = 100
    const peso = 300
    const bulto = 2

    method getPeligrosidad() { 
        return peligrosidad 
    }  

    method getPeso() { 
        return peso 
    }

   method getBulto(){
        return bulto
    }

    method accidente(){
        bateriaAntiaerea.setEstado(estadoDescargado)
    }
}

object estadoDescargado{
    const peligrosidad = 200
    var peso = 100
    const bulto = 1

     method getBulto(){
        return bulto
    }

    method getPeligrosidad() { 
        return peligrosidad 
    }  
    
    method setPeso(_peso) { 
        peso = _peso 
    }
    
    method getPeso() { 
        return peso 
    }

    method accidente(){}

}

