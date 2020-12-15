class Car

  attr_reader :make, :model 
  attr_accessor :owner, :mechanic, :classification

  @@all = []

  def initialize(make, model, classification, owner, mechanic)
    @make = make
    @model = model
    @classification = classification
    @owner = owner
    @mechanic = mechanic
    @@all << self
  end
  # - `Car.all` Get a list of all cars
  def self.all
    @@all
  end
  # - `Car.classifications` Get a list of all car classifications
  def self.classifications
    self.all.map{|car| car.classification}
  end
  # - `Car.find_mechanics(classification)` Get a list of mechanics that have an expertise that matches the passed in car classification
  def self.find_mechanics(classification)
    car = self.all.select{|car| car.classification == classification}
    car.map{|car| car.mechanic}
  end



end
