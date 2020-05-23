class AvengersHeadQuarter
    attr_accessor :list

    def initialize
        self.list = []
    end

    def put(avenger)
        self.list.push(avenger)
    end
end


describe AvengersHeadQuarter do

    it 'deve adicionar um vingador' do
        hq = AvengersHeadQuarter.new
        hq.put('Spiderman')

        expect(hq.list).to eql ['Spiderman']
    end


    it 'deve adicionar uma lista de vingadores' do

        hq = AvengersHeadQuarter.new
        hq.put('Thor')
        hq.put('Hulk')
        hq.put('Spiderman')

        res = hq.list.size > 0

        expect(hq.list).to include 'Thor'
        expect(res).to be true
    end

    it 'thor deve ser o primeiro da lista' do

        hq = AvengersHeadQuarter.new

        hq.put('Thor')
        hq.put('Hulk')
        hq.put('Spiderman')
        
        expect(hq.list).to start_with('Thor')
    end

    it 'Iron man deve ser o ultimo da lista' do

        hq = AvengersHeadQuarter.new

        hq.put('Thor')
        hq.put('Hulk')
        hq.put('Spiderman')
        hq.put('IronMan')
        
        expect(hq.list).to end_with('IronMan')
    end

    it 'deve conter o sobre nome' do
        avenger = 'Peter Parker'

        expect(avenger).to match(/Parker/)
        expect(avenger).not_to match(/Vinicius/)
    end

end