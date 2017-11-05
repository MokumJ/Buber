class Passenger
attr_accessor :first_name, :last_name, :age, :pick_up_adress, :destination_adress
def initialize
  @first_name = []
  @last_name = []
  @age = []
  @pick_up_adress = []
  @destination_adress = []
end

def add
  puts "Your firs name please:"
  @first_name << gets.chomp.capitalize
  puts "your last name please:"
  @last_name << gets.chomp.capitalize
  puts "your age please:"
  @age << gets.chomp.to_i

end
def pick_up
  puts "Where would you like to be picked up?"
  @pick_up_adress << gets.chomp.capitalize
end
def destination
  puts "where would you like to go?"
  @destination_adress << gets.chomp.capitalize
end

end
