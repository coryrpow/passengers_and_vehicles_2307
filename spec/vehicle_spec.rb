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


    end
  end
end