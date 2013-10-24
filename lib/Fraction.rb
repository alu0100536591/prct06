
require "gcd"

class Fraction

  	attr_accessor :_num, :_den
	
	def initialize(n,d)
		@_num, @_den = n, d
	end
	
	def minimize #minimiza dividiendo por el mínimo común divisor
		gcd = gcd(@_num, @_den)
		@_num /= gcd
		@_den /= gcd
	end
	
	def to_s
		"#{@_num}/#{@_den}"
	end
	
	def to_float
		"#{@_num/@_den}"
	end
	
	def ==(frac) #Compara dos fracciones
		if (@_num = frac._num) and (@_den = frac._den)
			true
		else
			false
		end
	end
  
end
