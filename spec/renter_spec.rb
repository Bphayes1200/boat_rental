require './lib/renter'

RSpec.describe Renter do 
  describe "#initialize" do 
    it 'will instantiate Renter' do 
      renter = Renter.new("Patrick Star", "4242424242424242")

      expect(renter).to be_a(Renter)
    end 

    it 'will have a name' do 
      renter = Renter.new("Patrick Star", "4242424242424242")

      expect(renter.name).to eq("Patrick Star")
    end 

    it 'will have a credit card number' do 
      renter = Renter.new("Patrick Star", "4242424242424242")

      expect(renter.credit_card_number).to eq("4242424242424242")
    end 
  end 
end 