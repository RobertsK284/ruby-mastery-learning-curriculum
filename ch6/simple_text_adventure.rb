# User starts facing forward and is told they can type 'right', 'left', or 'forward'.
# If user enters 'right', they die (goblin).
# If user enters 'left', they die (werewolf).
# If user enters 'forward', they live.
# If user enters anything other than above inputs, they are given messsage from 1 again.
# If user enters 'right', they die (goblin)
# If user enters 'left', they die (werewolf).
# If user enters 'forward', they are told they have won and the game exits.

move_number = 1

while true do
  puts 'You are facing forward. You can type forward, left, or right.'
  user_direction = gets.chomp

  when 'right'
    puts 'A goblin guts you with a knife! You die!'
    break
  when 'left'
    puts 'A werewolf eviscerates you with its fangs! You die!'
    break
  when 'forward'
    if move_number == 2
        puts "You win!"
        break
    end
    move_number += 1
  end
end