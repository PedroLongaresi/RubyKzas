#tudo é OO no Ruby
# Classe possui atributos e metodos
#Caracteristicas e ações

# carro(nome,marca, modelo, cor)


class Carro
    attr_accessor :nome

    def ligar
        puts 'O carro esta pronto apra iniciar o trajeto'

    end
end

civic = Carro.new


civic.nome= 'Covid'

puts civic.nome

civic.ligar