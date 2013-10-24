
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
	
	def abs #devuelve el valor absoluto
		@_num/@_den
	end
	
	def reciprocal  #devuelve el reciproco
		"#{@_den}/#{@_num}"	
	end
	
	def ==(frac) #Compara dos fracciones
		if (@_num = frac._num) and (@_den = frac._den)
			true
		else
			false
		end
	end
	
	def - #opuesta
		"#{-@_num}/#{@_den}"	
	end
	
	def +(frac) #suma
		n = (@_num*frac._den)+(@_den*frac._num)
		d = (@_den*frac._den)
		
		res = Fraccion.new(n,d)
		res.minimize
	end	
	
	def -(frac) #resta
		n = (@_num*frac._den)-(@_den*frac._num)
		d = (@_den*frac._den)
		
		res = Fraccion.new(n,d)
		res.minimize
	end
	
	def *(frac) #producto
		n = (@_num*frac._num)
		d = (@_den*frac._den)
		
		res = Fraccion.new(n,d)
		res.minimize
	end
	
	def /(frac) #división
		n = (@_num*frac._den)
		d = (@_den*frac._num)
		
		res = Fraccion.new(n,d)
		res.minimize
	end

  
end
