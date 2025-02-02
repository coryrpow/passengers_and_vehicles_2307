class Vehicle
  attr_accessor :passengers
  attr_reader :year, :make, :model

  def initialize(year, make, model)
    @year = year
    @make = make
    @model = model
    @speeding = false
    @passengers = []
  end

  def speeding?
    @speeding
  end

  def speed
    @speeding = true
  end

  def add_passenger(name)
    @passengers << name
  end

  def num_adults
    adults = 0
    @passengers.each do |passenger|
      if passenger.adult?
        adults += 1
      end
    end
    adults
  end
end