class Lista
    def initialize
        @Lista = Array.new
    end

    def adiciona(contato)
        @Lista << contato
    end

    def mostra
        for contato in @Lista
           puts "#######################################"
           puts "Nome do contato: #{contato.nome}"
           puts "Email do contato: #{contato.email}"
           puts "Tel do contato: #{contato.tel}"
           puts "Endereço do contato #{contato.endereco}"
           puts "#######################################"

        end
    end


end

class Contato
        attr_accessor :nome, :email, :tel, :endereco
    
        def initialize(nome)
            self.nome = nome
            
        end

    
        def report(informacao)
             puts informacao
        end
    
        def dados_cadastrais
             puts self.nome
             puts self.email if self.email
             puts self.tel if self.tel
             puts self.endereco if self.endereco
        end

     end

     puts "Bem vindo ao sistema de contatos"
     puts "O que você deseja fazer:
     1 - Cadastrar
     2 - Alterar
     3 - Apagar"
     opcao = STDIN.gets.to_i
     puts opcao

     lista_contatos = Lista.new
     
     resposta = 0
     if opcao == 1

        puts "Resposta1: #{resposta}"
               
        #cadastra um novo contato até o usuário selecionar a opção 2
        until resposta  == 2 do

            puts "cadastro"
            puts "##############"

            puts "Informe o nome do contato:"
            nome = STDIN.gets
            puts "##############"

            puts "Informe a email"
            email = STDIN.gets
            puts "##############"

            puts "Informe telefone"
            tel = STDIN.gets.to_i     
            puts "##############"

            puts "Informe endereço"
            endereco = STDIN.gets 

        #monta obejto contato
            contato = Contato.new(nome)
            contato.email = email
            contato.tel = tel
            contato.endereco = endereco
        
        #adiciona contato a lista
            lista_contatos.adiciona(contato)
        
        #verifica se o usuário que adicionar mais contatos
            puts "####################"
            puts "####################"
            puts "Você deseja cadastar um novo contato: 
            1 - Sim
            2 - Nao"
            resposta = STDIN.gets.to_i            
        end
    #mostra a lista de contatos adicionada
        puts lista_contatos.mostra

     elsif opcao == 2
    #Edita um contato
    
    puts "##########"
    puts "Informe o nome do contato:"
    pesquisa_contato = STDIN.gets

    lista
        
    
        
     elsif opcao ==3
        #apaga um contato
        puts "apaga"
     else
        puts "Opção invalida."
     end
    
     
    