require_relative 'building'
require_relative 'butler'

class Castle < Building
  def initialize(name, width, length)
    super(name, width, length)
    @butler = Butler.new(self) # self refers to the instance
  end

  def self.types # self refers to the class
    ['medieval', 'ancient', 'norman']
  end

  def has_a_butler?
    @butler != nil
  end
end
