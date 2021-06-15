puts("digite um numero ou um operador matematico (+,-,*,/): ")
digits = []
while (line = gets)
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
    else 
      result = operands[1]-operands[0]
    end
    puts result
    digits << result
  end
end
