import camion.*
import cosas.*
import extras.*
import rutas.*


object almacen {
    var contenidoDelAlmacen = []

    method getContenidoDelAlmacen(){
        return contenidoDelAlmacen
    }
    method setContenidoDelAlmacen(_contenidoDelAlmacen){
        contenidoDelAlmacen = _contenidoDelAlmacen
    }

    method recibirLaMercaderia(vehiculo){
        contenidoDelAlmacen.addAll(vehiculo.cosas().asList())   
    }
  
}
