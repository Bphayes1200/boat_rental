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

  describe '#hours_rented' do 
    it 'will show the amount of hours the boat has been rented' do 
      kayak = Boat.new(:kayak, 20)

      expect(kayak.hours_rented).to eq(0)
    end 

    it 'will add hours rented' do
      kayak = Boat.new(:kayak, 20)
      kayak.add_hour

      expect(kayak.hours_rented).to eq(1)

      kayak.add_hour

      expect(kayak.hours_rented).to eq(2)

      kayak.add_hour

      expect(kayak.hours_rented).to eq(3)
    end 
  end 
end 