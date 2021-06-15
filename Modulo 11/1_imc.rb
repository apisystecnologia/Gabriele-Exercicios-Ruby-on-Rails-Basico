def obterValor
    valor = nil
    unless /^\d*\.?\d+$/.match valor
        valor = gets
    end
    
    return valor.to_f
end

def principal
    puts "Informe o seu peso em kg (em um valor numérico):"
    peso = obterValor
    
    puts "Informe a sua altura em m (Ex.: 1.67):"
    altura = obterValor
    
    imc = peso / (altura * altura)
    
    #puts "O IMC é #{imc}" => valor literal
    puts "%0.02f\n" % imc.round(2) # => valor arredondado com 2 casas decimais
    
end

principal
