import dias.*

object registroProduccion {
	const registro = [lunes.piezas(), martes.piezas(), miercoles.piezas(), jueves.piezas(), viernes.piezas()]
	
	 method algunDiaSeProdujo(cantidad) = registro.contains(cantidad)
	
	 method maximoValorDeProduccion() = registro.max()

	 method valoresDeProduccionPares() = registro.filter({x => x.even()} )
	
	 method produccionEsAcotada(n1,n2) = registro.map({numPiezas => numPiezas.between(n1,n2)})
	
	 method produccionesSuperioresA(cuanto) = registro.filter({ x =>  x >=cuanto })
	 
	 method produccionesSumando(n) = registro.map ({numPiezas => numPiezas + n})
	 
	 method totalProducido() {return lunes.piezas() + martes.piezas() + miercoles.piezas()}
	 
	 method ultimoValorDeProduccion() = registro.last()
	 
	 method cantidadProduccionesMayorALaPrimera() = registro.filter({numPiezas => lunes.piezas() < numPiezas })
	
}


