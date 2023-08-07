def calcular_media(notas)
    total = notas.reduce(0, :+)
    media = total.to_f / notas.length
    return media

end

  def verificar_aprovacao(media, frequencia)
    if media >= 6.0 && frequencia >= 75
        return "Aprovado"
    else
        return "Reprovado"

    end
end

puts "Digite as notas do aluno:"
    notas = gets.chomp.split.map(&:to_f)

    puts "Digite a frequencia do aluno em porcentagem:"
        frequencia = gets.chomp.to_f

media = calcular_media(notas)
resultado = verificar_aprovacao(media, frequencia)

puts "a media do aluno é: #{media.round(2)}"
puts "Situação do aluno: #{resultado}"
