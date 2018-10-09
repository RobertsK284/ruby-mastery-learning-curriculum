my_die = 0
opponent_die = 0

while my_die == opponent_die do
my_die = rand(6) + 1
opponent_die = rand(6) + 1
puts "I rolled a " + my_die.to_s
puts "My opponent rolled a " + opponent_die.to_s
if my_die > opponent_die
puts "I won!"
break
elsif opponent_die > my_die
puts "I lose!"
break
end
puts "Roll again!"
end
