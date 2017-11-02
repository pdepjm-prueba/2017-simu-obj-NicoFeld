/** Acá el código del simulacro */

class Minion{
	var estamina
	var rol
	var dificultadTareas
	
	method realizarTarea(tarea){
		rol.realizarTarea(tarea)
	}
	
	method perderStamina(){
		
	}
	
	method fuerza(){
		return estamina/2+2
	}
	
	method comer(fruta){
		
	}
	method arreglarMaquinaSiPuede(complejidad,herramientasNecesarias)
	{
		if(estamina>=complejidad&&self.tieneLasHerramientas(herramientasNecesarias)){
			estamina-=complejidad
			dificultadTareas.add(complejidad*2)
			
		}
	}
	method tieneLasHerramientas(herramientasNecesarias){
		var herramientasDelMinion = rol.herramientas()
		return herramientasNecesarias.foreach({herramientaNecesaria=>herramientasDelMinion.contains(herramientaNecesaria)})
	}
	

}

class Ciclope inherits Minion{
	override method fuerza(){
		return rol.fuerza()/2
	}
}

class Biclope inherits Minion{
	override method comer(fruta)
	{
		
	}
}

class Soldado{
	var arma
	method realizarTarea(tarea){
		
	}
	method ganarPractica(){
		
	}
	method fuerza(minion){
		return minion.fuerza()+arma
	}
	method herramientas(){
		return null
	}
	
	
}
class Obrero{
	var herramientas
	method realizarTarea(tarea){
		
	}
	method herramientas(){
		return herramientas
	}
	
	
	
	
}
class Mucama{
	var arma
	method realizarTarea(tarea){
		
	}
	method herramientas(){
		return null
	}
	
}

class ArreglarMaquina{
	var herramientasNecesarias
	var complejidad
	method puedeRealizarlo(minion){
		if(minion.estamina()>=complejidad&&minion.tieneLasHerramientas(herramientasNecesarias)){
			
		}
	}
	
	method dificultad(){
		return complejidad*2
	}
}

class DefenderSector{
	var gradoDeAmenaza
	
	method puedeRealizarlo(minion){
		if(minion.rol!=&&minion.tieneLasHerramientas(herramientasNecesarias)){
			
		}
	}
	
	method dificultad(){
		return complejidad*2
	}
}



