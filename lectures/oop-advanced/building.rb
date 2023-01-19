class Building
  attr_reader :name

  def initialize(name, width, length)
    # STATE
    @name = name # string
    @width = width # integer
    @length = length # integer
  end

  def surface
    @width * @length
  end
end