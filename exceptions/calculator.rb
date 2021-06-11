puts("digite um numero ou um operador matematico (+,-,*,/): ")
digits = []
while (line = gets)
	begin
		if /^[0-9]+$/.match line
			digits << line.chomp.to_i
		else
			operator = line.chomp
			result = nil
			operands = [digits.pop, digits.pop]
			if operator == "+"
				result = operands[0]+operands[1]
			elsif operator == "*"
				result = operands[0]*operands[1]
			elsif operator == "/"
				result = operands[1]/operands[0]
			elsif operator == "-"
				result = operands[1]-operands[0]
			else
				raise ArgumentError, "caractere invalido: '#{operator}'"
		end
		puts result
		digits << result
	end
	rescue ArgumentError => e
		puts e
	rescue ZeroDivisionError => r
		puts r
	rescue
		puts "erro! tente novamente"
	end
end
