class Student
	attr_accessor :nombre, :nota
	def initialize(name, grade = 0)
		@nombre = name
    @nota = grade
	end
end

nombres = %w(Alicia Javier Camila Francisco Pablo Josefina)

nombres.each do |e|
 Student.new(e)
end



    # Iterar los nombres para crear un nuevo arreglo de objetos de Student.
    # Modificar el objeto para que pueda recibir una nota del alumno.
    # Agregar un getter para la nota.
    # Modificar la iteración para asignar notas incrementales de 1 en adelante.
    # Utilizar un map para obtener todas las notas de los alumnos a partir del arreglo de estudiantes.
