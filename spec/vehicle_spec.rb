require './lib/vehicle'
require './lib/passenger'

RSpec.describe Vehicle do
  before do
    @vehicle = Vehicle.new("2001", "Honda", "Civic")    
  end

  describe '#initialize' do
    it 'can initialize' do
      expect(@vehicle).to be_a(Vehicle)
    end
  end

  describe '#attributes' do
    it 'has readable attributes' do
      expect(@vehicle.year).to eq("2001")
      expect(@vehicle.make).to eq("Honda")
      expect(@vehicle.model).to eq("Civic")
    end
  end

  describe '#speeding' do
    it 'has the ability to speed' do
      expect(@vehicle.speeding?).to eq(false)

      @vehicle.speed

      expect(@vehicle.speeding?).to eq(true)
    end
  end
  
  describe '#passengers' do
    it 'can hold passengers' do
      charlie = Passenger.new({"name" => "Charlie", "age" => 18})
      jude = Passenger.new({"name" => "Jude", "age" => 20})
      taylor = Passenger.new({"name" => "Taylor", "age" => 12})


      expect(@vehicle.passengers).to eq([])

      @vehicle.add_passenger(charlie)
      @vehicle.add_passenger(jude)
      @vehicle.add_passenger(taylor)
      
      expect(@vehicle.passengers).to eq([charlie, jude, taylor])

      expect(@vehicle.num_adults).to eq(2)
    end
  end
end