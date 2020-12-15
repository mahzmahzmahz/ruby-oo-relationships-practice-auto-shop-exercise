require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

o1 = CarOwner.new("Alex")
o2 = CarOwner.new("Dave")

m1 = Mechanic.new("Chuck", "Mufflers")
m2 = Mechanic.new("Steve", "Engines")

c1 = Car.new("Chevy", "Traverse", "Sport", o1, m1)
c2 = Car.new("Fiat", "Tiny", "Luxury", o2, m2)
c3 = Car.new("Lambo", "Bugatti", "SUV", o2, m1)
c4 = Car.new("Ford", "Fusion", "Sedan", o1, m2)

binding.pry
0
