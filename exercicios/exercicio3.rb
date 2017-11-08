class Dado
    def rolar
        return 1+rand(6)
    end
end

jogador1 = Dado.new
jogador2 = Dado.new

resultado1 = jogador1.rolar
resultado2 = jogador2.rolar

puts "Jogador 1: #{resultado1}"
puts "Jogador 2: #{resultado2}"

if resultado1 > resultado2
    puts "Vitoria do jogador 1"
else
    puts "vitoria do jogador 2"
end

