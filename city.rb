require 'set'

class City
  attr_accessor :adjacents, :name

  def initialize(name)
    @adjacents = Set.new
    @name = name
  end

  def to_s
    @name
  end
end
