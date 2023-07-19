require './lib/passenger'

RSpec.describe Passenger do
  before do
    @charlie = Passenger.new({"name" => "Charlie", "age" => 18})    
    @taylor = Passenger.new({"name" => "Taylor", "age" => 12}) 
  end

  describe '#initialize' do
    it 'can initialize' do
      expect(@charlie).to be_a(Passenger)
      expect(@tayolor).to be_a(Passenger)
    end
  end

  




end