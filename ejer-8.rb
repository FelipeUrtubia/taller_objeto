class MyPet
  def initialize name
    @name = name
    @sleep = false
    @satisfied = 10 #  Esta lleno
    @fullIntestine = 0 # No necesita ir
    puts "Spawneate a #{@name}"
  end

  def walk
    @satisfied -= 2
    @fullIntestine  += 2
    timeLapse
      puts "tu quedaste cansado, pero #{@name} no!"
  end

  def bathroom
    puts "#{@name} está en el baño, dejalo cagar tranquilo almenos"
    @fullIntestine = 0
    timeLapse
  end

  def feed
    puts "#{@name} está comiendo"
    @satisfied = 10
    timeLapse
  end

  def sleep
    puts "#{@name} se quedó dormidition :3"
    puts " "
    @sleep = true
    @satisfied -= 2
    @fullIntestine += 2
    timeLapse
  end

  def hungry?
    @satisfied <= 2
  end

  def needToGo?
    @fullIntestine == 10
  end

  def timeLapse
    if @satisfied > 0
      #  Mueve el alimento del vientre al intestino.
      @satisfied      = @satisfied      - 1
      @fullIntestine  = @fullIntestine  + 1
    else  #  Nuestro dragon esta hambriento!
      if @sleep
        @sleep = false
        puts "se depertó"
      end
      puts "wn mala onda, como no le diste de comer #{@name} se te murio :("
      exit  #  Sale del programa.
    end


    if @fullIntestine  > 10
      @fullIntestine  = 0
      puts "AYY LMAO " + @name + " Se cagó nomas guei"
    end

    if hungry?
      if @sleep
        @sleep = false
        puts "se despertó"
      end
      puts "la guatita de " + @name + " ruge con fervocidad"
    end

    if needToGo?
      if @sleep
        @sleep = false
        puts "se despertó"
      end
      puts @name + "Esta que se mea loco won"
    end
  end
end

def menu
  puts " "
  puts "1) darle comidita"
  puts "2) intenta hacerlo dormir"
  puts "3) camina con el perrete"
  puts "4) que vaya al cagadero"
  puts " "

  menu = gets.chomp.to_i
end

mascota = MyPet.new('doggo')

continuar = true
while continuar
  case menu
  when 1
    puts "Dadole comida para perros marca uno"
    mascota.feed
  when 2
    puts "intentando hacer dormir al perrete"
    mascota.sleep
    puts "lo lograste!"
  when 3
    puts "caminando con el perrete"
    mascota.walk
  when 4
    puts "esta llendo al baño, te esperas"
    mascota.bathroom
  else
    puts "no cache eso prro, dale denuevo"
  end
end
