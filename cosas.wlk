object knightRider {
	const peso = 500 
    const peligrosidad = 10


	method peso() { return peso}
	method peligrosidad() { return peligrosidad }
}

object arenaAGranel{
	var property peso = 0
	const peligrosidad = 1
	method peso() { return peso }
	method peligrosidad() { return peligrosidad}
}

object bumblebee{
	const peso = 800
    var transformacion = "normal"
	const peligrosidad = 15

	method peso(){return peso}
	method peligrosidad(){if  (transformacion == "normal"){ return peligrosidad }
						   else {return peligrosidad * 2}}
}

object paqueteDeLadrillos{
	const pesoLadrillo = 2
	var cantidadDeLadrillos = 2
	const peligrosidad = 2
	method peso(){
		return pesoLadrillo * cantidadDeLadrillos
	}

	method peligrosidad(){ return peligrosidad}
}


object bateriaAntiaerea{
	var peso = 200 
	var peligrosidad = 0
	var cargadoCon = "vacio"
	method peso(){
		if (cargadoCon == "misiles"){
			return peso + 100
		}
		else { return peso}
	}
	method peligrosidad(){
		if (cargadoCon == "misiles"){
			return peligrosidad + 100
		}
		else { return peligrosidad}
	}
}

object residuosRadioactivos{
	var  property  peso = 0
	const peligrosidad = 200
	method peligrosidad(){ return peligrosidad}
    method peso(){return peso}
}