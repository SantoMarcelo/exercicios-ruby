=begin
Escreva um programa que realize o cálculo de 10% de uma conta
em um restaurante. O programa deve ter como entrada o valor total
e deve mostrar o valor total sem os 10%, o valor dos 10% e o valor
total com os 10%. Os valores devem possuir exatamente 2 (duas)
casas decimais e estarem alinhados a direita. Considere que a
quantidade de caracteres total do número seja, no máximo, 10.
Abaixo segue um exemplo de cálculo
=end

puts "Informe o valor total da conta:"
valor = STDIN.gets.to_f

puts"Valor total da conta: #{valor}"
porcentagem = (valor * 0.10)
puts "Valor da porcentagem: #{porcentagem.round(2)}"
total_com_porcentagem = valor.to_f + porcentagem.to_f
puts "Valor total com porcentagem: #{total_com_porcentagem.round(2)}"