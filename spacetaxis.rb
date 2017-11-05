class Spacetaxis
  attr_accessor :taxi_color, :taxi_speed, :number

  def initialize(taxi_color, taxi_speed, number)
    @taxi_color = taxi_color
    @taxi_speed = taxi_speed
    @number = number
  end
end
