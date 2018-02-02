# Have to do some tricky manipulation because of floating point imprecision
# tried BigDecimal but couldn't get it to work
# => multiply by 10 instead ... I believe this is called fixed-point arithmetic
# NOTE: wrote a class just for kicks, even though tests are calling methods

def ftoc(farh)
	celc = (((farh*10) - 320).to_f) / 18
end
def ctof(celc)
	fahr = (((celc*18) + 320).to_f) / 10
end

# class Temperature
# 	def initialize(temp=0)
# 		@temp = temp
# 	end
# 	def ftoc(temp)
# 		celc = (((temp*10) - 320).to_f) / 18
# 	end
# 	def ctof(temp)
# 		fahr = (((temp*18) + 320).to_f) / 10
# 	end
# end

# puts temp1 = Temperature.new
# puts temp1.ftoc(32)
# puts temp1.ftoc(212)
# puts temp1.ftoc(98.6)
# puts temp1.ftoc(68)
# puts temp1.ctof(0)
# puts temp1.ctof(100)
# puts temp1.ctof(20)
# puts temp1.ctof(37)






