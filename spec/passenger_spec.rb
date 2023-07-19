require './lib/passenger'

RSpec.describe Passenger do
  before do
    @charlie = Passenger.new({"name" => "Charlie", "age" => 18})    
    @taylor = Passenger.new({"name" => "Taylor", "age" => 12}) 
  end

  describe '#initialize' do
    it 'can initialize' do
      expect(@charlie).to be_a(Passenger)
      expect(@taylor).to be_a(Passenger)
    end
  end

  describe '#attributes' do
    it ' has readable attributes' do
      expect(@charlie.name).to eq("Charlie")
      expect(@charlie.age).to eq(18)

      expect(@taylor.name).to eq("Taylor")
      expect(@taylor.age).to eq(12)
    end

  end




end