class Passenger
  attr_accessor :name, :age, :driver

  def initialize(data)
    @name = data["name"]
    @age = data["age"]
    @driver = false
  end

  def adult?
    if @age >= 18
      @age = true
    else
      @age = false
    end
  end

  def driver?
    @driver
  end
  
  def drive
      @driver = true
  end
end