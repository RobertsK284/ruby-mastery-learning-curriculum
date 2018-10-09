my_wins = 0
opponent_wins = 0

while my_wins < 2 && opponent_wins < 2 do
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
my_wins += 1
elsif opponent_score > my_score
puts "I lose!"
opponent_wins += 1
else
puts "This round is a draw!"
end
puts "Roll again!"
end

if my_wins > opponent_wins
puts "I am the first to win 2 rounds!"
else
puts "My opponent is the first to win 2 rounds!"
end
