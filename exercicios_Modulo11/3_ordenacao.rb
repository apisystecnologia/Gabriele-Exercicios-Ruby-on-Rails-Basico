def obterValor
    valor = nil
    unless /^\d+$/.match valor
        valor = gets
    end
    
    return valor.to_i
end

def ordenacao(vetor)
    aux = nil
    
    for i in 0...vetor.size
        for j in (i+1)...vetor.size
            if vetor[i] > vetor[j]
                aux = vetor[j]
                vetor[j] = vetor[i]
                vetor[i] = aux
            end
        end
    end
end

def principal
    vetor = Array.new
    
    puts "Informe a quantidade de elementos que serão informados (em um valor inteiro):"
    n = obterValor
      
    for i in 0...n
        puts "Informe o elemento #{i+1} do array (em um valor inteiro):"
        vetor[i] = obterValor
    end  
        
    ordenacao(vetor)

    puts "Vetor ordenado:"
    for i in 0...vetor.size
        puts vetor[i]
    end

end

principal
