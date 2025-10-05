





object ruta9{
    
    const peligrosidadAceptada = 20

    method getPeligrosidadAceptada(){
        return peligrosidadAceptada
    }
    method soportaElViaje(vehiculo){
        return vehiculo.aptoParaCircularEnRuta(self)
    }

}

object caminosVecinales{
    var property pesoPermitido = 0 

   method getPesoPermitido(){
    return pesoPermitido
   } 
    
    method setPesoPermitido(_pesoPermitido){
        pesoPermitido = _pesoPermitido
    }

    method soportaElViaje(vehiculo){
        return vehiculo.pesoTotalDelCamion() <= self.getPesoPermitido()
    }
    
}