
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
		n = @_num + 0.0
		d = @_den + 0.0
		"#{n/d}"
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
	
	def op #opuesta
		"#{-@_num}/#{@_den}"	
	end
	
	def +(frac) #suma
		n = (@_num*frac._den)+(@_den*frac._num)
		d = (@_den*frac._den)
		
		res = Fraction.new(n,d)
		res.minimize()
		res
	end	
	
	def -(frac) #diferencia
		n = (@_num*frac._den)-(@_den*frac._num)
		d = (@_den*frac._den)
		
		res = Fraction.new(n,d)
		res.minimize()
		res
	end
	
	def *(frac) #producto
		n = (@_num*frac._num)
		d = (@_den*frac._den)
		
		res = Fraction.new(n,d)
		res.minimize()
		res
	end
	
	def /(frac) #división
		n = (@_num*frac._den)
		d = (@_den*frac._num)
		
		res = Fraction.new(n,d)
		res.minimize()
		res
	end
	
	def %(frac) #resto
		n1, d1 = @_num + 0.0, @_den + 0.0
		n2, d2 = frac._num + 0.0, frac._den + 0.0
	    
		f1 = n1/d1
		f2 = n2/d2
	      
		f1%f2
	end
	
	def <(frac) #menor que
		n1, d1 = @_num + 0.0, @_den + 0.0
		n2, d2 = frac._num + 0.0, frac._den + 0.0
		f1 = n1/d1
		f2 = n2/d2
	      
		if f1<f2
		   true
		else
		   false
		end		  
	end
	
	def >(frac) #mayor que
		n1, d1 = @_num + 0.0, @_den + 0.0
		n2, d2 = frac._num + 0.0, frac._den + 0.0
		f1 = n1/d1
		f2 = n2/d2
	      
		if f2<f1
		   true
		else
		   false
		end		  
	end
	
	def <=(frac) #menor igual que
		n1, d1 = @_num + 0.0, @_den + 0.0
		n2, d2 = frac._num + 0.0, frac._den + 0.0
		f1 = n1/d1
		f2 = n2/d2
	      
		if f1<=f2
		   true
		else
		   false
		end		  
	end
	
	def >=(frac) #mayor igual que
		n1, d1 = @_num + 0.0, @_den + 0.0
		n2, d2 = frac._num + 0.0, frac._den + 0.0
		f1 = n1/d1
		f2 = n2/d2
	      
		if f2<=f1
		   true
		else
		   false
		end		  
	end
	  
	
  
end
