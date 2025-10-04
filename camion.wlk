import cosas.*

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
		return cosas.sum({cosa => cosa.peso()})
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
	
}
