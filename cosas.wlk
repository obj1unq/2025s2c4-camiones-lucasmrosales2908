import extras.*

object knightRider {
	const peso = 500 
    const peligrosidad = 10


	method peso() { 
		return peso
	}

	method peligrosidad() { 
		return peligrosidad 
	}
}

object arenaAGranel{
	var property peso = 0
	const peligrosidad = 1
	
	method peso() { 
		return peso 
	}
	method peligrosidad() {
		 return peligrosidad
	}
}

object bumblebee{
	const peso = 800
    var estado = estadoAuto

	method getEstado(){ 
		return estado 
	}
	
	method setEstado(_estado){
		 estado = _estado 
	}
	
	method peligrosidad(){ 
		return estado.getPeligrosidad()
	} 
	
	method peso(){
		return peso
	}
}


object paqueteDeLadrillos{
	const pesoLadrillo = 2
	const peligrosidad = 2
	var cantidadDeLadrillos = 0
	
	method setCantidadDeLadrillos(_cantidadDeLadrillos){ 
		cantidadDeLadrillos = _cantidadDeLadrillos 
	}
	
	method peso(){
		return pesoLadrillo * cantidadDeLadrillos
	}

	method peligrosidad(){
		 return peligrosidad
	}
}


object bateriaAntiaerea{

}

object residuosRadioactivos{
	var  property  peso = 0
	const peligrosidad = 200
	
	method peligrosidad(){ 
		return peligrosidad
	}
    method peso(){
		return peso
	}
}