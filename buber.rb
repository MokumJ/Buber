require_relative "spacetaxis.rb"
class Buber
attr_accessor :taxis

def initialize
  @taxis = []

  for number in (1..20)
    @taxis << Spacetaxis.new("Black", "fast", number)
end
end


def taxi_print
  puts "This is our list of spacetaxis"
    @taxis.each do |taxi|
      puts "#{taxi.number}: #{taxi.taxi_color} - #{taxi.taxi_speed}"
    end
  end
  def make_choice

    puts "Which taxi would you like?"
    taxi_number = gets.chomp.to_i

    @selected_taxi = @taxis.find { |taxi| taxi.number == taxi_number }

  end
def pay
  puts "That makes 20 spacetokens"
  puts "Do you wish to pay with"
  puts "1: spacecoins"
  puts "2: spacecard"
  payment = gets.chomp.to_i
  done = (payment == 1 || payment == 2)
end
  end
