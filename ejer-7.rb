class Punto
  attr_accessor :posx, :posy
  def initialize(x, y)
    @posx = x
    @posy = y
  end
end

puntos = []
num = Random.new
10.times do
  puntos.push(Punto.new(num.rand(-100..100), num.rand(-100..100)))
end

puntos.each do |e|
    puts "El punto #{e} esta en: (#{e.posx}, #{e.posy})"
end

# Crear la clase punto, un punto tiene una posición x y una posición y.
# Crear métodos getter y setter para los atributos del punto.
# Crear 10 puntos al azar.
