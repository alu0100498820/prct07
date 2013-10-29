#File: Fraccion

class Fraccion

  # Módulo Comparable
  include Comparable 
  
  attr_reader :num, :dem
  def initialize(num,dem)
	@num, @dem = num, dem
	mcm = gcd(num, dem)
	    @num = num/mcm
	    @dem = dem/mcm
  end

  def gcd(u, v)
     u, v = u.abs, v.abs
     while v != 0
       u, v = v, u % v
     end
    u
  end

  def to_s
    "#{@num}/#{@dem}"
  end
  
  def to_f
    @num/@dem
  end

  def == (fr)
    ((self.num == fr.num) && (self.dem == fr.dem)) #self es igual a la clase a la que pertenece el objeto (fr)
  end
  def abs  #Calculo del valor absoluto
    Fraccion.new(@num.abs, @dem)
  end
  def reciprocal  #Calculo del reciproco
     Fraccion.new(@dem, @num)
  end

  def -@   #Calculo del valor opuesto
    Fraccion.new(-@num, @dem)
  end

  def + (fr)  #Calculo de la suma
     num = (@num * fr.dem) + (@dem * fr.num)
     dem = @num * fr.dem
     Fraccion.new(num, dem)
  end

  def - (fr)  #Calculo de la resta
     num = (@num * fr.dem) - (@dem * fr.num)
     dem = @dem * fr.dem
     Fraccion.new(num, dem)
  end

  def * (fr)  #Calculo de la multiplicacion
     num = @num * fr.num
     dem = @dem * fr.dem
     Fraccion.new(num, dem)
  end
 
  def / (fr)  #Calculo de la division por medio del reciproco
    self * fr.reciprocal
  end
  
  def % (fr)  #Calculo del resto
    return ((self.num * fr.dem) % (self.dem * fr.num))
  end
  
  def <=> (fr)
  	(self.num * fr.dem) <=> (self.dem * fr.num) 
  end

end
