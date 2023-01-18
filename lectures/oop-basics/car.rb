class Car # UpperCamelCase
  attr_reader :brand#, color
  # attr_writer :color
  attr_accessor :color # creates both the reader and the writer

  # STATE (or DATA)
  # examples:
  # color, size, seats, horsepower, model, brand, number of doors, convertible, manual/auto
  # number of km, on/off, door open?

  # constructor
  # runs whenever you call Car.new
  def initialize(color, brand = "Honda")
    # @variables are instance variables
    # they live inside the instance as opposed to local_variables which disappear
    @engine_started = false
    @color = color # string
    @brand = brand # string

    # Encapsulation: instance variables are not accessible from outside the class
  end

  # BEHAVIOUR
  # instance methods
  def start_engine!
    crank_engine
    inject_fuel
    spark_plugs

    @engine_started = true
  end

  # attribute readers
  # attr_reader :color # this line creates the method below:
  # def color
  #   @color
  # end

  # attr_reader :brand
  # def brand
  #   @brand
  # end

  # explicit reader
  def engine_started?
    @engine_started
  end

  # def change_color(new_color)
  #   @color = new_color
  # end

  # attribute writer
  # attr_writer :color # this line creates the method below:
  # def color=(new_color)
  #   @color = new_color
  # end

  private

  def crank_engine
    puts "Cranking engine..."
  end

  def inject_fuel
    puts "Injecting fuel..."
  end

  def spark_plugs
    puts "Sparking plugs..."
  end
end

tan_car = Car.new('blue', 'Porsche')
jim_car = Car.new('black')

puts "Tan's #{tan_car.brand} is #{tan_car.color}" # need attr_readers
puts "Jim's #{jim_car.brand} is #{jim_car.color}"

puts "Changing Tan's car color to white..."
# tan_car.change_color('white')
tan_car.color = 'white' # same as calling tan_car.color=('white')
# the line above needs an attr_writer

puts "Tan's #{tan_car.brand} is now #{tan_car.color}"

puts "Tan's car engine is currently #{tan_car.engine_started? ? 'on' : 'off'}"

puts "Starting the engine of Tan's car"
tan_car.start_engine!

puts "Tan's car engine is now #{tan_car.engine_started? ? 'on' : 'off'}"
