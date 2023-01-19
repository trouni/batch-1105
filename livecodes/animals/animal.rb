class Animal
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def self.phyla
    [
      'the worms',
      'the squids',
      'the sea cucumbers',
      'the ones with the backend'
    ]
  end

  def eat(food)
    "#{name} eats #{food}"
  end
end
