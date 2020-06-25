class AvengersHeadQuarter
    attr_accessor :list
    
    def initialize
        self.list = []
    end

    def put(avenger)
        #puts self.list.class 
        self.list.push(avenger)
    end
end
describe AvengersHeadQuarter do
    
    it 'deve adicionar um vingador' do
        hq=AvengersHeadQuarter.new
        hq.put('Spiderman')
        #expect(hq.list).to eql ['Spiderman'] # verifica se a lista é igual
        expect(hq.list).to include 'Spiderman' # verifica se esta incluido
    end

    it 'deve adicionar uma lista de vingadores' do
        hq = AvengersHeadQuarter.new
        hq.put('Thor')
        hq.put('Hulk')
        hq.put('Spiderman')

        res = hq.list.size > 0

        expect(res).to be true
        #expect(hq.list.size).to be > 0
        #expect(hq.list).to include 'Thor' and 'Hulk'
    end

    it 'Thor deve ser o primeiro da lista' do
        hq = AvengersHeadQuarter.new

        hq.put('Thor')
        hq.put('Hulk')
        hq.put('Spiderman')

        expect(hq.list).to start_with('Thor')
    end

    it 'Iroman ultimo da lista?' do
        hq = AvengersHeadQuarter.new

        hq.put('Thor')
        hq.put('Hulk')
        hq.put('Spiderman')
        hq.put('Ironman')

        expect(hq.list).to end_with('Ironman')

    end

    it 'deve conter sobrenome' do
        avenger= 'Peter Parker'

        expect(avenger).to match (/Parker/)
        expect(avenger).not_to match(/Papito/)
    end

end