class Estudiante {

	var property materiasAprobadas = []
	var carreras = []

	method registrarMateriaAprobada(materiaAprobada, notaAprobacion) {
		materiasAprobadas.add(new MateriaAprobada(materia = materiaAprobada, nota = notaAprobacion))
	}

	method cantidadMateriasAprobadas() = materiasAprobadas.size()

	method promedio() {
		const sumaDeNotas = materiasAprobadas.sum({ m => m.nota()})
		return sumaDeNotas.div(self.cantidadMateriasAprobadas())
	}

	method tieneAprobadaMateria(materia) = materiasAprobadas.any({ma => ma.materia() == materia})

}

class MateriaAprobada {

	var property materia
	var property nota

}

