require 'pry'
class Trip
  attr_accessor :destinations, :trips

  def initialize
    @destinations = []
    @trips = []
  end

  def add_route(from, to, ticket)
    from.adjacents << to
    @trips << { from: from, to: to, ticket: ticket }
  end

  def full_trip(cities)
    @full_trip = []
    cities.each_with_index do |city, index|
      break if index == cities.size

      ticket = find_trip(city, cities[index + 1])

      next if ticket.nil?

      @full_trip << add_trip(ticket)
    end
    @full_trip
  end

  private

  def add_trip(ticket)
    {
      from: ticket[:from].name,
      to: ticket[:to].name,
      ticket_number: ticket[:ticket].number || 'NA',
      seat: ticket[:ticket].seat || 'NA',
      vehicle_type: ticket[:ticket].vehicle_type
    }
  end

  def find_trip(init_city, end_city)
    @trips.find { |trip| trip[:from].name == init_city && trip[:to].name == end_city }
  end
end
