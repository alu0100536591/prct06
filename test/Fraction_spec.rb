require 'Fraction'

describe Fraction do
	before :each do
		@FractionA = Fraction.new
	end
	
	if "Deberia inicializarse con el stado de :initial" do
		@FractionA.state.should == :initial
	end
end
