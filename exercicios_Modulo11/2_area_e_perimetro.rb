def obterValor
    valor = nil
    unless /^\d*\.?\d+$/.match valor
        valor = gets
    end
    
    return valor.to_f
end

def principal
    puts "Informe o comprimento do retângulo (em um valor numérico):"
    comprimento = obterValor
    
    puts "Informe a largura do retângulo (em um valor numérico):"
    largura = obterValor
    
    area = largura * comprimento
    perimetro = (2 * comprimento) + (2 * largura)
    
    puts "A área do retângulo é %0.02f\n"% area
    puts "O prerímetro do retângulo é #{perimetro}"
end

principal
