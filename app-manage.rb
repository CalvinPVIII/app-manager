require './allergies/lib/project'
require './coincounter/lib/project'
require './prime-numbers/lib/project'
puts "Which app would you like to use?"

puts "Enter 1 for: Coin Counter"
puts "Enter 2 for Prime Numbers"
puts "Enter 3 for Allergies"

input = gets.chomp.to_i

if input == 1
puts "enter a cent value"
input = gets.chomp
coin = Coins.new(input)

puts coin.coin_counter
elsif input == 2
puts "enter a number"
input = gets.chomp
prime = Prime.new(input)

puts prime.prime_numbers
elsif input == 3
  puts "###########################################"
  puts "Let's Play Allergy!"
  puts "Please enter a number to find out what you are allergic to"

  input = gets.chomp
  allergy = Score.new(input)

  puts allergy.allergy_score
end
puts "Choose again? Y or N"
again = gets.chomp
if again == "y"
system("ruby app-manage.rb")
elsif again == "n"
  puts "Thanks for Playing!"

end
