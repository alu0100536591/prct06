require 'Fraction'

describe Fraction do
  before :each do
	@numerador = 3
	@denominador = 9
    @FractionA = Fraction.new(@numerador, @denominador)
  end
  
  describe "# almacenamiento de variables" do
  
    it "Debe existir un numerador" do
		@FractionA._num.should eq(@numerador)
	end
	  
	it "Debe existir un denominador" do
		@FractionA._den.should eq(@denominador)
	end  

  end
  

  
end
