import extras.*

object knightRider {
	const peso = 500 
    const peligrosidad = 10
	const bulto = 1

	method getBulto(){
		return bulto
	}

	method accidente(){}

	method getPeso() { 
		return peso
	}

	method getPeligrosidad() { 
		return peligrosidad 
	}
}

object arenaAGranel{
	const bulto = 1
	var property peso = 0
	const peligrosidad = 1
	

	method getBulto(){ 
		return bulto 
	}


	method setPeso(_peso){ 
		peso = _peso 
	}
	
	method getPeso() { 
		return peso 
	}

	method getPeligrosidad() {
		 return peligrosidad
	}
	
	method accidente(){
		var pesoAccidente = (self.getPeso() + 20)
		self.setPeso(pesoAccidente)
	}
}

object bumblebee{
	const peso = 800
    var estado = estadoAuto
	const bulto = 1

	method getBulto(){ 
		return bulto 
	}


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

	method accidente(){
		estado.accidente()}
			
}



object paqueteDeLadrillos{
	const pesoLadrillo = 2
	const peligrosidad = 2
	var cantidadDeLadrillos = 0
	

	method getBulto(){ 
		return ((cantidadDeLadrillos -1)/100).floor().min(2)+1 
	}

	method getCantidadDeLadrillos(){
		return(cantidadDeLadrillos)
	}


	method setCantidadDeLadrillos(_cantidadDeLadrillos){ 
		cantidadDeLadrillos = _cantidadDeLadrillos 
	}
	
	method getPeso(){
		return pesoLadrillo * cantidadDeLadrillos
	}

	method getPeligrosidad(){
		 return peligrosidad
	}

	method accidente(){
		cantidadDeLadrillos = (cantidadDeLadrillos - 12).max(0)
	}

}


object bateriaAntiaerea{
    var estado = estadoCargadoConMisiles

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
		return estado.getPeso()
	}

	method getBulto(){
		return estado.getBulto()
	}

	method accidente(){
		estado.accidente()
	}
}

object residuosRadioactivos{
	var  property  peso = 0
	const peligrosidad = 200
	const bulto = 1

	method getBulto(){
		return bulto
	}

	method setPeso(_peso){
		peso = _peso
	}

	method getPeligrosidad(){ 
		return peligrosidad
	}


    method getPeso(){
		return peso
	}

	method accidente(){
		var pesoAccidente = peso + 15
		self.setPeso(pesoAccidente)
	}




}

object contenedorPortuario{
	var contenedor =#{}
	const pesoBase = 100 
	
	method setContenedor(_contenedor){
		contenedor = _contenedor
	}


	method getPeso(){
		return pesoBase + self.pesoTotalDelContenido()
	}
   
    method peligrosidadMasAlta(){
		
		var peligrosidadDeObjetos = contenedor.map({cosa => cosa.getPeligrosidad()})
		
		return peligrosidadDeObjetos.maxIfEmpty({peligrosidad => peligrosidad},{0}) 
	}
	

	
	method pesoTotalDelContenido(){
		return contenedor.sum({cosa => cosa.getPeso()})
	}

	method getPeligrosidad(){
		return self.peligrosidadMasAlta() 
	}

	method getBulto(){
		return self.totalBultos()+1
	}

	method totalBultos(){
		return contenedor.sum({cosa => cosa.getBulto()}) 
	}

	method accidente(){
		contenedor.forEach({cosa => cosa.accidente()})
	}

}

object embalajeDeSeguridad{
	var cosaQueEnvuelve = null
	
	var bulto = 2

	method setCosaQueEnvuelve(_cosaQueEnvuelve){
		cosaQueEnvuelve = _cosaQueEnvuelve
	}

	method getPeso(){
		return cosaQueEnvuelve.getPeso()
	}

	method getPeligrosidad(){
		return cosaQueEnvuelve.getPeligrosidad() / 2
	}

	method getBulto(){
		return bulto 
	}

	method accidente(){

	}

}