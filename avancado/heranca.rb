class Veiculo
    attr_accessor :nome, :marca, :modelo
    def initialize(nome, marca, modelo)
        self.nome =nome
        self.marca = marca
        self.modelo = modelo
    end

    def ligar
        puts "#{nome} esta pronto apra iniciar o trajeto"
    end

    def buzinar
        puts 'Beep! Beep!'
    end
end

class Carro < Veiculo
    
    def dirigir
        puts "#{nome} iniciando o trajeto"
    end
end

class Moto < Veiculo

    def pilotar
        puts "#{nome} iniciando o trajeto"
    end

end

civic= Carro.new('Civic', 'Honda', 'si')
lancer = Carro.new('Lancer', 'Mitsubishi', 'Evo')
fazer = Carro.new('Fazer', 'Yamaha', '250x')

civic.ligar

lancer.ligar
lancer.buzinar
lancer.dirigir