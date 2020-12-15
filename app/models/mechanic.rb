class Mechanic

  attr_reader :name, :specialty

  @@all = []

  def initialize(name, specialty)
    @name = name
    @specialty = specialty
    @@all << self
  end

  # - `Mechanic.all` Get a list of all mechanics
  def self.all
    @@all
  end
    # - `Mechanic#cars` Get a list of all cars that a mechanic services
  def cars
    Car.all.select{|cars| cars.mechanic == self}
  end
    # - `Mechanic#car_owners` Get a list of all the car owners that go to a specific mechanic
  def car_owners
    cars.map{|cars| cars.owner}
  end
    # - `Mechanic#car_owners_names` Get a list of the names of all car owners who go to a specific mechanic
  def car_owners_names
    owner = cars.map{|cars| cars.owner}
    owner.map(&:name)
  end


end
