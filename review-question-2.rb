# Finish the implementation of the Car class so it has the functionality described below

class Car
  attr_accessor :make, :model
  @@all = []

  def initialize (make:, model:)
    @model = model
    @make = make
    @@all << self
  end

  def self.all
    @@all
  end

  def drive
    "VROOOOOOOOOOOOM!"
  end

  def self.drive
    "VROOOOOOOOOOOOM!"
  end
end

volvo_lightning = Car.new("Volvo", "Lightning")
yugo = Car.new("Zastava", "Yugo")
lada = Car.new("AvtoVAZ", "Lada")
car = Car.new("Saab", "900SPG")

puts volvo_lightning.make
#=> "Volvo"
puts volvo_lightning.model
#=> "Lightnwing"

puts car.drive
# => "VROOOOOOOOOOOOM!"

puts Car.drive
# => "VROOOOOOOOOOOOM!"

puts Car.all
#=> [#<Car:0x00007fae28930f20>, #<Car:0x00007fae28923370>, #<Car:0x00007fae2891ae78>]

#BONUS:

volvo_lightning = Car.new(make: "Volvo", model: "Lightning")

puts volvo_lightning.make
#=> "Volvo"
puts volvo_lightning.model
#=> "Lightning"
