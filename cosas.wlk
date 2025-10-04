import extras.*

object knightRider {
	const peso = 500 
    const peligrosidad = 10


	method getPeso() { 
		return peso
	}

	method getPeligrosidad() { 
		return peligrosidad 
	}
}

object arenaAGranel{
	var property peso = 0
	const peligrosidad = 1
	
	method setPeso(_peso){ 
		peso = _peso 
	}
	method getPeso() { 
		return peso 
	}
	method getPeligrosidad() {
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
	
	method getPeligrosidad(){ 
		return estado.getPeligrosidad()
	} 
	
	method getPeso(){
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
	
	method getPeso(){
		return pesoLadrillo * cantidadDeLadrillos
	}

	method getPeligrosidad(){
		 return peligrosidad
	}
}


object bateriaAntiaerea{
    var estado = estadoCargadoConMisiles

	method getEstado(){ 
		return estado  
	
	}

	method getPeligrosidad(){ 
		return estado.getPeligrosidad() 
	}

	method getPeso(){ 
		return estado.getPeso()
	}
}

object residuosRadioactivos{
	var  property  peso = 0
	const peligrosidad = 200

	method getPeligrosidad(){ 
		return peligrosidad
	}
    method getPeso(){
		return peso
	}
}