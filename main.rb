require_relative 'trip'
require_relative 'sort'
require_relative 'city'
require_relative 'ticket'
require 'pry'

trip = Trip.new
node1 = City.new('Barcelona')
node2 = City.new('Madrid')
node3 = City.new('Girona')
node4 = City.new('Stockholm')
node5 = City.new('New York')

ticket2 = Ticket.new('Bus', nil, nil)
ticket1 = Ticket.new('Airplane', '355', 'F06')
ticket3 = Ticket.new('Airplane', '001', 'G04')
ticket4 = Ticket.new('Airplane', 'F66', 'H01')

trip.destinations << node1
trip.destinations << node2
trip.destinations << node3
trip.destinations << node4
trip.destinations << node5

# Madrid > Barcelon > Girona > Stockholm > New York
trip.add_route(node2, node1, ticket1)
trip.add_route(node1, node3, ticket2)
trip.add_route(node3, node4, ticket3)
trip.add_route(node4, node5, ticket4)

cities = Sort.new(trip).post_order.map(&:to_s)
p '------ Cities ------ '
p cities
p '------ FULL TRIP ------ '
p trip.full_trip(cities)
