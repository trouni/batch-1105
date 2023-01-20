class Human
  attr_reader :name
  # def name
  #   @name
  # end

  def initialize(name, gender)
    @name = name
    @gender = gender
    @age = 0
  end

  def say(something)
    puts something
  end

  def sleep
    # TODO
  end

  def eat(food)
    # TODO
  end
end