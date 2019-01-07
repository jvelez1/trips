require 'pry'
class Sort
  attr_accessor :post_order

  def initialize(trip)
    @post_order = []
    @visited = []

    trip.destinations.each do |destination|
      dfs(destination) unless @visited.include?(destination)
    end
    @post_order = @post_order.reverse
  end

  private

  def dfs(destination)
    @visited << destination
    destination.adjacents.each do |next_destination|
      dfs(next_destination) unless @visited.include?(next_destination)
    end

    @post_order << destination
  end
end
