To run the test
be located on the console, in the project folder and run: 

```
ruby main.rb
```

To change the test it is necessary to create cities (nodes)
Tickets, and assign the nodes to the trip, and add the routes and tickets

# Example:

```
full_trip = Trip.new

node1 = City.new('Caracas')
node2 = City.new('Lisboa')
node3 = City.new('Barcelona')

ticket2 = Ticket.new('Airplane', 001, F001)
ticket1 = Ticket.new('Airplane', '355', 'F06')

full_trip.destinations << node1
full_trip.destinations << node2
full_trip.destinations << node3

FROM : TO : TICKET
trip.add_route(node1, node2, ticket1)
trip.add_route(node2, node3, ticket2)
trip.add_route(node3, node4, ticket3)
```

the cities variable contains all the cities of the trip, ordered by the routes created

```
cities = Sort.new(trip).post_order.map(&:to_s)
```

full_trip method 
according to the ordered cities, it gives you the complete structure of the origin to the destination, with the ticket

```
p trip.full_trip(cities)
```
