require "lib/Fraccion.rb"

describe Fraccion do
  before :each do
    @f1=Fraccion.new(3,8)
    @f2=Fraccion.new(1,8)
  end 

describe "Racional" do
    it "Existe un numerador" do
      @f1.num().should_not be_nil
      @f2.num().should_not be_nil
    end
    it "Existe un denominador" do
      @f1.denom().should_not be_nil
      @f2.denom().should_not be_nil
    end
    it "Debe de estar en su forma reducida" do
      @f1.num().should eq(3)
      @f1.denom().should eq(8)
      @f2.num().should eq(1)
      @f2.denom().should eq(8)
      
    end
    it "Se debe invocar al metodo num() para obtener el numerador" do
      @f1.num().should eq(@f1.n)
      @f2.num().should eq(@f2.n)
    end
    it "Se debe invocar al metodo denom() para obtener el denominador" do
      @f1.denom().should eq(@f1.d)
      @f2.denom().should eq(@f2.d)
    end
    it "Se debe mostrar por la consola la fraccion de la forma: a/b, donde a es el numerador y b el denominador" do
      @f1.to_s().should eq("3/8")
      @f2.to_s().should eq("1/8") 
    end
    it "Se debe mostrar por la consola la fraccion en formato flotante" do
      @f1.float().should eq(0.375)
      @f2.float().should eq(0.125)
    end
    
    it "Se debe comparar si dos fracciones son iguales con ==" do
      (@f1.num==@f2.num and @f1.denom==@f2.denom).should eq(false)
      @f1.to_s.should eq(Fraccion.new(6, 16).to_s)
      @f2.to_s.should eq(Fraccion.new(2, 16).to_s)
    end
    
    it "Se debe calcular el valor absoluto de una fraccion con el metodo abs" do
      @f1.abs.should eq("3/8")
      @f2.abs.should eq("1/8")
    end
    
    it "Se debe calcular el reciproco de una fraccion con el metodo reciproco" do
      @f1.reciproco.should eq("8/3")
      @f2.reciproco.should eq("8/1")
    end
    
    it "Se debe calcular el opuesto de una fraccion con -" do
      (-@f1).should eq("-3/8")
      (-@f2).should eq("-1/8")
    end
    
    it "Se debe sumar dos fracciones con + y dar el resultado de forma reducida" do
      (@f1+@f2).to_s.should eq("1/2")
    end
    
    it "Se debe restar dos fracciones con - y dar el resultado de forma reducida" do
      (@f1-@f2).to_s.should eq("1/4")
    end
    
    it "Se debe multiplicar dos fracciones con * y dar el resultado de forma reducida" do
      (@f1*@f2).to_s.should eq("3/64")
    end
    
    it "Se debe dividir dos fracciones con / y dar el resultado de forma reducida" do
      (@f1/@f2).to_s.should eq("3/1")
    end
    
  end
end