#File: fraccion_spec

require "lib/fraccion.rb"

describe Fraccion do
  before :each do
     @fr = Fraccion
  end

 
    it "Se almacena correctamente el numerador" do
      @fr.new(1, 2).num.should eq(1) 
    end
    it "Se almacena correctamente el denominador" do
      @fr.new(1, 2).dem.should eq(2) 
    end
    it "Debe de estar en su forma reducida" do
       @fr.new(2, 4).num.should eq (1) 
       @fr.new(7, -21).dem.should eq(-3)
    end
    it "Invocar al metodo num() ,para obtener el numerador" do
      @fr.new(1, 2).respond_to?("num").should be_true
    end
    it "Invocar al metodo dem() ,para obtener elnumerador" do
      @fr.new(1, 2).respond_to?("dem").should be_true
    end
    it "Se debe mostar por la consola la fraccion de la forma: a/b, donde a es el numerador y b el denominador" do
      @fr.new(-2, 6).to_s.should == "-1/3"
    end
    it "Se debe mostar por la consola la fraccion en formato flotante" do
      @fr.new(1, 2).to_f.should == 1/2
    end
    it "Comparar si dos fracciones son iguales con ==" do
      @fr.new(1, 2).should == @fr.new(2, 4)
    end
    it "Calcular el valor absoluto de una fraccion con el metodo abs" do
      @fr.new(-2, 3).abs.should == @fr.new(2, 3)
    end
    it "Calcular el reciproco de una fraccion con el metodo reciprocal" do
      @fr.new(2, 3).reciprocal.should == @fr.new(3, 2)
    end
    it "Calcular el opuesto de una fraccion con -" do
      (-@fr.new(-2, 3)).should == @fr.new(2, 3)
      (-@fr.new(2, 4)).should == @fr.new(-1, 2)
    end
    it "Se debe sumar dos fracciones de forma reducida" do
      (@fr.new(1, 1) + @fr.new(1, 1)).should == @fr.new(2, 1)
      (@fr.new(2, 2) + @fr.new(1, 4)).should == @fr.new(5, 4)
    end

    it "Se debe restar dos fracciones de forma reducida" do
      (@fr.new(1, 1) - @fr.new(1, 1)).should == @fr.new(0, 1)
      (@fr.new(1, 2) - @fr.new(1, 4)).should == @fr.new(1, 4)
    end
 
    it "Se debe multiplicar dos fracciones de forma reducida" do
      (@fr.new(1, 1) * @fr.new(1, 1)).should == @fr.new(1, 1)
      (@fr.new(1, 2) * @fr.new(1, 4)).should == @fr.new(1, 8)
    end

    it "Se debe dividir dos fracciones de forma reducida" do
      (@fr.new(1, 2) / @fr.new(1, 4)).should == @fr.new(2, 1)
    end

     it "Resto dos fracciones con % y dar el resultado de forma reducida" do
      (@fr.new(5, 1) % @fr.new(2, 1)).should == 1
      (@fr.new(7, 1) % @fr.new(4, 1)).should == 3
      (@fr.new(1, 2) % @fr.new(1, 4)).should == 0
     end

     it "Comprobar si una fracion es menor que otra" do
      (@fr.new(1, 1) < @fr.new(2, 1)).should be_true
      (@fr.new(1, 4) < @fr.new(1, 2)).should be_true
     end

     it "Comprobar si una fracion es mayor que otra" do
      (@fr.new(2, 1) > @fr.new(1, 1)).should be_true
      (@fr.new(1, 2) > @fr.new(1, 4)).should be_true
     end

     it "Comprobar si una fracion es menor o igual que otra" do  
      (@fr.new(1, 1) <= @fr.new(1, 1)).should be_true
      (@fr.new(1, 4) <= @fr.new(1, 2)).should be_true
     end
     
     it "Comprobar si una fracion es mayor o igual que otra" do
      (@fr.new(1, 1) >= @fr.new(1, 1)).should be_true
      (@fr.new(1, 2) >= @fr.new(1, 4)).should be_true
     end
end
