#general salida de manera correcta

class Car
  attr_reader :modelo, :year
  def initialize(modelo, year)
    @modelo = modelo
    @year = year
  end
end

car = Car.new('Camaro', 2016)
puts "Mi auto favorito es un #{car.modelo} del año #{car.year}!"
