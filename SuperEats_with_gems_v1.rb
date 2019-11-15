require "tty-prompt"
require "colorize"
prompt = TTY::Prompt.new
cuisine = ["Italian", "Mexican", "Indian"]
italian = {"Margherita Pizza" => 14, "BBQ Chicken" => 17, "Bolognese Pasta" => 19, "Basil Pasta" => 18, "Pumpkin Risotto" => 20, "Garlic Bread" => 7}
mexican = {"Veggie nachos" => 13, "Chicken tacos" => 9, "Burritos" => 11, "Stuffed Jalapenos" => 6, "Quesadilla" => 13, "Jarritos soda" => 8, "Warm churros" => 8}
indian = {"Butter chicken" => 20, "Lamb Biriyani" => 18, "Chicken Kofta" => 21, "Dal Tadka" => 16, "Naan" => 5, "Mango lassi" => 4}

puts "WELCOME TO SUPER EATS".colorize(:background => :red)
puts "Please enter you username"
username = gets.chomp
prompt.mask ("Please enter your password")
password = gets.chomp 
puts "What are you in the mood to eat today?"
puts

total_order = []
selecting_food = true
while selecting_food
    
cuisine.each do |cuisine|
    puts cuisine.colorize(:cyan)
end
puts "or type done to finish"

cuisine_type = gets.chomp
puts

if (cuisine_type == "Italian" || cuisine_type == "italian")
    
    puts "Please choose from our sensational Italian menu."
    dish = ["margharita pizza", "pumpkin risotto", "basil pasta", "garlicbread"]
    order = prompt.multi_select("Select dish?", dish)
    total_order += order
puts
elsif (cuisine_type == "Mexican" || cuisine_type == "mexican")
puts "Please select from our flavorful Mexican menu"
dish = ["Veggie-nachos", "Stuffed Jalapenos", "Jarritos soda", "Chicken tacos"].colorize(:light_blue)
    order = prompt.multi_select("Select dish?" , dish)
    total_order += order
# mexican.each_key do |key|
#     puts key
elsif (cuisine_type == "Indian" || cuisine_type == "indian")
puts "Please select from our finger-licking Indian menu"
dish = ["Butter chicken", "Lamb Biriyani", "Chicken kofta", "Dal Tadka", "Naan","Mango lassi"].colorize(:light_green)
    order = prompt.multi_select("Select dish?", dish)
    total_order += order
# indian.each_key do |key|
#     puts key
elsif cuisine_type == "done"
    selecting_food = false

else 
    puts "Please enter a valid option"
end
end
puts
puts "Here is your final order : #{total_order}".colorize(:red)
puts
puts "Please feel free to let us know any additional requests"
requests = gets.chomp
puts
puts "Your order is almost complete.....Please type in your delivery address"
address = gets.chomp
puts
puts "Hope you had a good experience ordering on Super Eats. We are pleased to offer you $5 off on your next order!".colorize(:yellow)

# puts String.colors