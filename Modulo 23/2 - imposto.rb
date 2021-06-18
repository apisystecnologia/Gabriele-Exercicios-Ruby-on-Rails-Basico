IMPOSTO_AREA_CONSTRUIDA = 5.0
IMPOSTO_AREA_NAO_CONSTRUIDA = 3.8

def obterValor
    valor = nil
    unless /^\d*\.?\d+$/.match valor
        valor = gets
    end
    
    return valor.to_f
end

def principal
    puts "Area total do terreno:"
    areaTotal = obterValor

    puts "Area total construída:"
    areaConstruida = obterValor

    areaNaoConstruida = areaTotal - areaConstruida
    resultado = (IMPOSTO_AREA_NAO_CONSTRUIDA * areaNaoConstruida) + (IMPOSTO_AREA_CONSTRUIDA * areaConstruida)

    puts "O valor a ser pago é %0.2f" % resultado
end

principal