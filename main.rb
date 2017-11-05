
require_relative "spacetaxis.rb"
require_relative "passenger.rb"
require_relative "buber.rb"
done = false
passenger = Passenger.new
buber = Buber.new
puts "welcome to Buber, we have several spacetaxis available."

while not done
puts  "Would you like to order a spacetaxi?? (y/n)"
  choise = gets.chomp.downcase
  case choise
  when "y"
puts "before you pick a taxi please register yourself"
sleep 2
passenger.add
puts "Thanks for registering: #{passenger.first_name} #{passenger.last_name}\n
Here is a list of taxis"
sleep 1
Buber.new.taxi_print
@selected_taxi = buber.make_choice
puts " Thank you for picking taxi number :#{@selected_taxi.number}."
passenger.pick_up
puts " alright see you at #{passenger.pick_up_adress}"
3.times {print "---{.&.}---" ; sleep 0.5}
puts "Hi #{passenger.first_name} #{passenger.last_name} your taxi arrived at #{passenger.pick_up_adress}"
passenger.destination
5.times {print "---{.&.}---" ; sleep 0.5}
puts "taxi arrived at #{passenger.destination_adress}"
buber.pay
puts "Thanks for driving with us"

when "n"
  done = true
end
if done == true
  puts "Thank you for your visit! hope to see you again soon."

end
end
