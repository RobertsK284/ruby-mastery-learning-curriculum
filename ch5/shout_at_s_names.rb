# The user sees a greeting, which asks them to enter their name.
# The user enters their name.
# If the user's name begins with 'S', the program shouts the user's name back at them.
# If the user's name begins with any other letter, the program just says 'Hi, ' plus their name.

puts "Hi, what is your name?"
user = gets.chomp

puts user.upcase if user.chr == "S" 
puts "Hi, #{user}" if user.chr != "S"