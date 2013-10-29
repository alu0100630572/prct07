require 'lib/racional.rb'
require 'rspec'

describe Fraccion do

  before :each do
    @rc = Fraccion
  end
  #Comprobamos el constructor de la clase
  it "debe existir un numerador" do
    @rc.new(2, 3).num.should == 2
  end

  it "debe existir un denominador" do
    @rc.new(2, 3).den.should == 3
  end
  #Comprobamos el metodo gdc()
  it "debe estar en su forma reducida" do
    @rc.new(4, 6).num.should == 2
    @rc.new(4, 6).den.should == 3
  end
  #Comprobamos el "get" de num
  it "se debe invocar al metodo num() para obtener el numerador" do
    @rc.new(1, 4).respond_to?("num").should be_true
  end
  #Comprobamos el "get" de den
  it "se debe invocar al metodo den() para obtener el denominador" do
    @rc.new(1, 4).respond_to?("den").should be_true
  end
  #Comprobamos el metodo to_s()
  it "Se debe mostar por la consola la fraccion de la forma: a/b, donde a es el numerador y b el denominador" do
    @rc.new(1, 4).to_s.should == "1/4"
  end
  #Comprobamos el metodo para flotantes
  it "Se debe mostar por la consola la fraccion en formato flotante" do
    @rc.new(1,2).to_f.should == 1/2
  end
  #Sobrecarga del =="
  it "Se debe comparar si dos fracciones son iguales con ==" do
    @rc.new(3, 2).should == @rc.new(6, 4)
  end
  #Comprobamos el metodo abs()
  it "Se debe calcular el valor absoluto de una fraccion con el metodo abs" do
    @rc.new(-3, 2).abs.should == @rc.new(3, 2)
  end
  #Comprobamos el metodo reciproco
  it "Se debe calcular el reciproco de una fraccion con el metodo reciprocal" do
    @rc.new(2, 3).reciproco.should == @rc.new(3, 2)
  end
  #Sobrecarga del operador opuesto -
  it " Se debe calcular el opuesto de una fraccion con -" do
    (-@rc.new(4, 6)).should == @rc.new(-2, 3)
  end
  #Sobrecarga del operador +
  it "Se debe sumar dos fracciones con + y dar el resultado de forma reducida" do
    (@rc.new(1,2) + @rc.new(1,4)).should == @rc.new(3,4)
  end
  #Sobrecarga del operador resta -
  it "Se debe restar dos fracciones con - y dar el resultado de forma reducida" do
    (@rc.new(1, 2) - @rc.new(1, 4)).should == @rc.new(1, 4)
  end 
  #Sobrecarga del operador *
  it "Se debe multiplicar dos fracciones con * y dar el resultado de forma reducida" do
    (@rc.new(2, 5) * @rc.new(1, 2)).should == @rc.new(1, 5)
  end
  #Sobrecarga del operador /
  it "Se debe dividir dos fracciones con / y dar el resultado de forma reducida" do
    (@rc.new(1, 5) / @rc.new(1, 2)).should == @rc.new(2, 5)
  end
  #Sobrecarga del operador %
  it "Se debe calcular el resto dos fracciones con % y dar el resultado de forma reducida" do
    (@rc.new(17,1) % @rc.new(3,1)).should == 2
  end
  #Sobrecarga del operador <
  it "Se debe de poder comprobar si una fracion es menor que otra" do
    (@rc.new(1, 2) < @rc.new(3, 2)).should be_true
    (@rc.new(3, 2) < @rc.new(1, 2)).should be_false
  end
  #Sobrecarga del operador >
  it "Se debe de poder comprobar si una fracion es mayor que otra" do
    (@rc.new(1, 2) > @rc.new(3, 2)).should be_false
    (@rc.new(3, 2) > @rc.new(1, 2)).should be_true
  end
  #Sobrecarga del operador <=
  it "Se debe de poder comprobar si una fracion es menor o igual que otra" do
    (@rc.new(1, 2) <= @rc.new(2, 4)).should be_true
    (@rc.new(1, 2) <= @rc.new(3, 2)).should be_true
    (@rc.new(3, 2) <= @rc.new(1, 2)).should be_false
  end
  #Sobrecarga del operador >=
  it "Se debe de poder comprobar si una fracion es mayor o igual que otra" do
    (@rc.new(1, 2) >= @rc.new(2, 4)).should be_true
    (@rc.new(1, 2) >= @rc.new(3, 2)).should be_false
    (@rc.new(3, 2) >= @rc.new(1, 2)).should be_true
  end
  #Modificacion
  it "Se debe cumplir |f1*f2|" do
    (@rc.new(-1, 2) * @rc.new(2, 5)).abs.should == @rc.new(1, 5)
  end
end
