#Crie uma classe com nome Produto, declare as variáveis nome do produto, descrição, quantidade,
#    valor unitário. Leia valores para as variáveis. Mostre os dados lidos e o total do produto (quantidade * quantidade).

class Produto
    attr_accessor :nome, :descricao, :quantidade, :valor

    def calcula_total (quantidade, valor)
        return quantidade * valor
    end

end

produto = Produto.new

puts 'Informe o nome do produto:'
produto.nome = STDIN.gets

puts 'Informe a descriçao:'
produto.descricao = STDIN.gets

puts 'Informe a quantidade:'
produto.quantidade = STDIN.gets.to_i

puts 'Informe valor unitário:'
produto.valor = STDIN.gets.to_f

puts produto.nome
puts produto.descricao
puts produto.quantidade
puts produto.valor

puts "O valor total de produtos cadastrados: #{produto.calcula_total(produto.quantidade, produto.valor)}"