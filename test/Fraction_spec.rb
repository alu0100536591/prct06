require 'Fraction'

describe Fraction do
  before :each do
    @FractionA = Fraction.new
  end
  
  it "should initially have a state of :initial" do
    @FractionA.state.should == :initial
  end
  
end
