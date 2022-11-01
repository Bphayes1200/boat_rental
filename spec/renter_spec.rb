require './renter'

RSpec.describe Renter do 
  describe "#initialize" do 
    it 'will instantiate Renter' do 
      renter = Renter.new("Patrick Star", "4242424242424242")

      expect(renter).to be_a(Renter)
    end 
  end 
end 