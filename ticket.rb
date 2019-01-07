class Ticket
  attr_accessor :vehicle_type, :number, :seat

  def initialize(vehicle_type, number = nil, seat = nil)
    @vehicle_type = vehicle_type
    @number = number
    @seat = seat
  end
end
