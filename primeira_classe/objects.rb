class Car
	attr_reader :price
	attr_accessor :year

	def initialize(fuel_type, year, price)
		@fuel_type = fuel_type
		@year = year
		@price = price
	end

	def price
		@price*discount_tax
	end

	private
	def discount_tax
		0.92
	end
end

class SportCar < Car
	def initialize(fuel_type, year, price, turbo)
		super(fuel_type,year,price)
		@turbo = turbo
	end

	private
	def discount_tax
		if(@turbo)
			0.90
		else
			0.85
		end
	end

end

porsche = SportCar.new(:gasolina, 2015, 100000, false)
puts porsche.price
