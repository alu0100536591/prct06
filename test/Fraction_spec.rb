require 'Fraction'

describe Fraction do
	before :each do
		@numerador = 3
		@denominador = 9
		@FractionA = Fraction.new(@numerador, @denominador)
		@FractionB = Fraction.new(15, 30)
	end
  
	describe "# almacenamiento de variables" do
		it "Debe existir un numerador" do
			@FractionA._num.should eq(@numerador)
		end
	  
		it "Debe existir un denominador" do
			@FractionA._den.should eq(@denominador)
		end  
	end
  
  
	describe "# prueba de métodos" do
		it "Debe de estar en su forma reducida" do
			@FractionA.minimize()
			@FractionA._num.should eq(1)
			@FractionA._den.should eq(3)
		end
		
		it "Se debe invocar al metodo _num para obtener el numerador" do
			@FractionA._num.should eq(@numerador)
		end
		
		it "Se debe invocar al metodo _den para obtener el denominador" do
			@FractionA._den.should eq(@denominador)
		end
		
		it "Se debe mostar por la consola la fraccion de la forma: a/b, donde a es el numerador y b el denominador" do
			@FractionA.to_s.should eq("3/9")
		end
		
		 it "Se debe mostar por la consola la fraccion en formato flotante" do
			@FractionA._num = 3.0
			@FractionA._den = 9.0
			@FractionA.to_float.should eq("0.333333333333333")
		 end
		 
		it "Se debe comparar si dos fracciones son iguales con ==" do
			@FractionA.==(Fraction.new(@numerador, @denominador)).should eq(true)
		end
		
		it "Se debe calcular el valor absoluto de una fraccion con el metodo abs" do
			@FractionA.abs.should eq(0)
		end
		
		it "Se debe calcular el reciproco de una fraccion con el metodo reciprocal" do
			@FractionA.reciprocal.should eq("9/3")
		end
		
		it "Se debe calcular el opuesto de una fraccion con --" do
			@FractionA.op.should eq("-3/9")
		end
		
		it "Se debe sumar dos fracciones con + y dar el resultado de forma reducida" do	
			result = @FractionA.+(@FractionB)
			Fraction.new(5,6)._num.should eq(result._num)
			Fraction.new(5,6)._den.should eq(result._den)
		end
		
		it "Se debe restar dos fracciones con - y dar el resultado de forma reducida" do
			result = @FractionA.-(@FractionB)
			Fraction.new(-1,6)._num.should eq(result._num)
			Fraction.new(-1,6)._den.should eq(result._den)
		end
		
		it "Se debe multiplicar dos fracciones con * y dar el resultado de forma reducida" do
			result = @FractionA.*(@FractionB)
			Fraction.new(1,6)._num.should eq(result._num)
			Fraction.new(1,6)._den.should eq(result._den)		
		end
		
		it "Se debe dividir dos fracciones con / y dar el resultado de forma reducida" do
			result = @FractionA./(@FractionB)
			Fraction.new(2,3)._num.should eq(result._num)
			Fraction.new(2,3)._den.should eq(result._den)	
		end
		

  #Se debe calcular el resto dos fracciones con % y dar el resultado de forma reducida
  #Se debe de poder comprobar si una fracion es menor que otra
  #Se debe de poder comprobar si una fracion es mayor que otra
  #Se debe de poder comprobar si una fracion es menor o igual que otra
  #Se debe de poder comprobar si una fracion es mayor o igual que otra
	end
	


  
end
