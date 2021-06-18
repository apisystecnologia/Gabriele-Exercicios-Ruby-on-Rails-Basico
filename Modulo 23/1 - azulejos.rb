def obterValor
    valor = nil
    unless /^\d*\.?\d+$/.match valor
        valor = gets
    end
    
    return valor.to_f
end

def principal    
    puts "Altura da parede:"
    hp = obterValor

    puts "Largura da parede:"
    lp = obterValor

    puts "Altura do azulejo:"
    ha = obterValor

    puts "Largura do azulejo:"
    la = obterValor

    areaParede = hp * lp
    areaAzulejo = ha * la
    qtoAzulejos = areaParede / areaAzulejo

    puts "A quantidade de azulejos necessários é #{qtoAzulejos}"
end

principal