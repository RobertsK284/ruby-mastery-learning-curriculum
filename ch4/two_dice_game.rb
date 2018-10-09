my_score = 0
opponent_score = 0

while my_score == opponent_score do
my_1st_die = rand(6) + 1
my_2nd_die = rand(6) + 1
my_score = my_1st_die + my_2nd_die
opponent_1st_die = rand(6) + 1
opponent_2nd_die = rand(6) + 1
opponent_score = opponent_1st_die + opponent_2nd_die
puts "I rolled a " + my_1st_die.to_s + " and a " + my_2nd_die.to_s + ", adding up to " + my_score.to_s
puts "My opponent rolled a " + opponent_1st_die.to_s + " and a " + opponent_2nd_die.to_s + ", adding up to " + opponent_score.to_s
if my_score > opponent_score
puts "I won!"
break
elsif opponent_score > my_score
puts "I lose!"
break
else
puts "Roll again!"
end
end
