import cosas.*

object camion {
	const property cosas = #{}

	method cargar(unaCosa) {
		cosas.add(unaCosa)
	}

	method descargar(unaCosa){
		cosas.remove(unaCosa)
	}

	method pesoTotalDelCamion(){
		var pesoTotal =1000
		cosas.forEach({n => pesoTotal = pesoTotal + n.peso()})
		return pesoTotal

	}

	method pesoExedido(){
		return self.pesoTotalDelCamion() >= 2500
	}
	
}
