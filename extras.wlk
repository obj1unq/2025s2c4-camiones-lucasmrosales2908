import cosas.*
import camion.*
 
object estadoAuto{
    const peligrosidad = 15

    method getPeligrosidad() { 
        return peligrosidad 
    }  
}
object estadoRobot{
    const peligrosidad = 30

    method getPeligrosidad() {
         return peligrosidad 
    }
    
}


object estadoCargadoConMisiles{
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

}

