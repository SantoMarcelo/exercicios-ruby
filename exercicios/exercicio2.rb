=begin
Crie uma classe com nome de Bilhete. 
Escreva um programa para determinar o tipo de bilhete que cada visitante de um parque de diversão deve comprar. 
O tipo de bilhete é determinado em função da idade do visitante, de acordo com a tabela abaixo. 
 - O programa deverá solicitar a leitura de um novo bilhete. 
 - A execução do programa deverá encerrar quando o usuário informa “não”. 
 - Mostre no final a quantidade de bilhetes infantis e adultos vendidos

 Idade < 6 = isento de pagamento
 Idade entre 6 e 12 = bilhete criança
 Idade entre 13 e 65 = Bilhete normal
 Idade > 65 = bilhete 3° idade
=end

class Bilhete

    def verifica_bilhete (idade, nome)
        if idade <6
        puts "#{nome}, você está isento de pagamento"
        elsif idade >=6 || idade <=12
            puts "#{nome}, você tem direito a um bilhete  de criança"
        elsif idade >= 13 || idade <=65
            puts "#{nome}, você tem direito a um Bilhete Normal"
        else
            puts "#{nome}, você tem direito a um Bilhete 3° Idade"
        end
        
    end

end



i = "Sim"
x = "Sim"
bilhete = Bilhete.new

while i.to_s != x.to_s
    puts "Informe seu nome:"
    nome = STDIN.gets
    puts "Informe sua idade:"
    idade = STDIN.gets.to_i
    begin
        puts bilhete.verifica_bilhete( idade, nome)
    rescue Exception => ex
        puts 'Ocorreu um erro ao calcular o imc. Ligue para o Suporte XXXX'
        puts ex.message
        puts ex.backtrace
    end
    puts "você deseja um novo ingresso?"
    i = i+1
end

