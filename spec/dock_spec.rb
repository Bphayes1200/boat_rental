require './lib/boat' 
require './lib/renter'
require './lib/dock'

RSpec.describe Dock do 
  describe "#initialize" do 
    it 'will instantiate dock' do 
      dock = Dock.new("The Rowing Dock", 3)

      expect(dock).to be_a(Dock)
    end 

    it 'will have a dock name' do
      dock = Dock.new("The Rowing Dock", 3)

      expect(dock.name).to eq("The Rowing Dock")
    end

    it 'will have a max rental time of 3' do 
      dock = Dock.new("The Rowing Dock", 3)

      expect(dock.max_rental_time).to eq(3)
    end 
  end

  describe "#rent_log" do 
    it 'will have a log of renters' do 
      dock = Dock.new("The Rowing Dock", 3)

      expect(dock.rental_log).to eq({})
    end 
  end 

  describe "#rent" do 
    it 'will rent boats to renters' do 
      dock = Dock.new("The Rowing Dock", 3)
      kayak_1 = Boat.new(:kayak, 20)
      kayak_2 = Boat.new(:kayak, 20)    
      sup_1 = Boat.new(:standup_paddle_board, 15)
      patrick = Renter.new("Patrick Star", "4242424242424242")   
      eugene = Renter.new("Eugene Crabs", "1313131313131313")  
      dock.rent(kayak_1, patrick)


      expect(dock.rental_log).to eq({kayak_1 => patrick})
    
      dock.rent(kayak_2, patrick)

      expect(dock.rental_log).to eq({ kayak_1 => patrick,
                                    kayak_2 => patrick})

      dock.rent(sup_1, eugene) 

      expect(dock.rental_log).to eq({ kayak_1 => patrick,
                                      kayak_2 => patrick, 
                                      sup_1 => eugene})
    end 
  end 

  describe "#charge" do 
    it 'will charge the renters' do 
      dock = Dock.new("The Rowing Dock", 3)
      kayak_1 = Boat.new(:kayak, 20)
      kayak_2 = Boat.new(:kayak, 20)    
      sup_1 = Boat.new(:standup_paddle_board, 15)
      patrick = Renter.new("Patrick Star", "4242424242424242")   
      eugene = Renter.new("Eugene Crabs", "1313131313131313")  
      dock.rent(kayak_1, patrick)
      kayak_1.add_hour
      kayak_1.add_hour
      dock.charge(kayak_1)
# require 'pry'; binding.pry
      expect(dock.charge(kayak_1)[:amount]).to eq(40)
    end 
  end 
end 
