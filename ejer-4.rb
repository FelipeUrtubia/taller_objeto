class Dog
  attr_accessor :propiedades
  def initialize(propiedades)
    @propiedades = propiedades
  end
  def ladrar
    puts "#{@propiedades[:nombre]} está ladrando!"
  end
end

dog1 = Dog.new({nombre: 'Beethoven', raza: 'San Bernardo', color: 'Café'})
dog1.ladrar
