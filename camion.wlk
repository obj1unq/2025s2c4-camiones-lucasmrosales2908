import cosas.*
import rutas.*
import extras.*



object camion {
	const property cosas = #{}
	const tara = 1000
	
	method getTara(){
		return tara
	}

    method cosas(){
		return cosas
	}

	method cargar(unaCosa) {
		cosas.add(unaCosa)
	}

	method descargar(unaCosa){
		cosas.remove(unaCosa)
	}
	method pesoCarga(){
		return cosas.sum({cosa => cosa.getPeso()})
	}
	
	method pesoTotalDelCamion(){
		return self.getTara() + self.pesoCarga()

	}


	method pesoExedido(){
		return self.pesoTotalDelCamion() >= 2500
	}

	method pesoParDeTodoENLaCarga(){
		return cosas.all({cosa => cosa.getPeso() % 2 == 0})
	}
	
	method hayAlgunoQuePesa(peso){
		return cosas.any({cosa => cosa.getPeso() == peso})
	}

	method encontralCosaConPeligosidad(peligrosidad){
		return cosas.find({cosa => cosa.getPeligrosidad() == peligrosidad})
	}

	method cosasConPeligrosidadMayorA(peligrosidad){
		return cosas.filter({cosa => cosa.getPeligrosidad() > peligrosidad})
	}

	method cosasConMasPeligrosasQue(cosa){
		return self.cosasConPeligrosidadMayorA(cosa.getPeligrosidad())
	}
	method peligrosidadMasAlta(peligrosidad){
		return cosas.any({cosa => cosa.getPeligrosidad() > peligrosidad}) }
	

	method aptoParaCircularEnRuta(ruta){

		return not self.pesoExedido() &&  not self.peligrosidadMasAlta(ruta.getPeligrosidadAceptada())
	}

	method tieneAlgoQuePesaEntre(pesoMinimo,pesoMaximo){
		return cosas.any({cosa => cosa.getPeso().between(pesoMinimo, pesoMaximo)})
	}

	method cosaMasPesada(){
		return cosas.max({cosa => cosa.getPeso()})
	}
	
	method pesosDeLasCosas(){
		return cosas.map({cosa => cosa.getPeso()}).asSet()
	
	}

	method totalBultos(){
		return cosas.sum({cosa => cosa.getBulto()})
	}

	method meAccidente(){
		cosas.forEach({cosa => cosa.accidente()})
	}
}



