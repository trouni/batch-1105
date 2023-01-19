require_relative 'building'

class Skyscraper < Building
  def initialize(name, width, length, floors)
    super(name, width, length)
    @floors = floors # integer
  end

  def surface
    # `super` is an alias for the instance method with the same name in the parent (super) class
    # @width * @length * @floors
    # surface_of_parent * @floors
    super * @floors
  end
end
