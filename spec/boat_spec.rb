require './lib/boat'

RSpec.describe Boat do 
  describe "#initialize" do 
    it 'will instantiate boat' do 
      kayak = Boat.new(:kayak, 20)
      
      expect(kayak).to be_a(Boat)
    end 

    it 'will have a type of boat' do 
      kayak = Boat.new(:kayak, 20)

      expect(kayak.type).to eq(:kayak)
    end 

    it 'will have a cost per hour' do 
      kayak = Boat.new(:kayak, 20)

      expect(kayak.price_per_hour).to eq(20)
    end
  end 
end 