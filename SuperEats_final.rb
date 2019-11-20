require "tty-prompt"
require "colorize"
require "artii"
require 'colorized_string'
a = Artii::Base.new
puts a.asciify('Super Eats!')
prompt = TTY::Prompt.new(active_color: :green)

def get_price_of_dish(dish,italian,mexican,indian)
    if italian.key?(dish)
        return italian[dish]
    elsif mexican.key?(dish)
        return mexican[dish]
    elsif indian.key?(dish)
        return indian[dish]
    else puts "Unknown dish"
    end
end
def get_total_price_of_dishes(dishes,italian,mexican,indian)
    total = 0
    dishes.each do |dish|
        total += get_price_of_dish(dish,italian,mexican,indian)
    end
    return total
end
cuisine = ["Italian", "Mexican", "Indian"]
italian = {"Margherita Pizza" => 14, "BBQ Chicken" => 17, "Bolognese Pasta" => 19, "Basil Pasta" => 18, "Pumpkin Risotto" => 20, "Garlic Bread" => 7}
mexican = {"Veggie nachos" => 13, "Chicken tacos" => 9, "Burritos" => 11, "Stuffed Jalapenos" => 6, "Quesadilla" => 13, "Jarritos soda" => 8, "Warm churros" => 8}
indian = {"Butter chicken" => 20, "Lamb Biriyani" => 18, "Chicken Kofta" => 21, "Dal Tadka" => 16, "Naan" => 5, "Mango lassi" => 4}

puts ("WELCOME TO SUPER EATS").colorize(:cyan).underline
puts ("Please enter your username").colorize(:light_magenta)
username = gets.chomp
password = prompt.mask ("Please enter your password").colorize(:light_magenta)
username_validity = true
if (username == "menuman" && password == "abcd")
    puts "You are signed in" 
elsif (username == "iamhungry" && password == "xyz")
    puts "You are signed in"
elsif(username == "food_panda" && password == "1234")
    puts "You are signed in"
else(username_validity = false) 
    puts "Incorrect username / password please try again!"
end

while (username_validity == true)
puts "What are you in the mood to eat today?".colorize(:light_magenta)
puts
total_order = []
selecting_food = true
while selecting_food
cuisine.each do |cuisine|
    puts cuisine.colorize(:cyan)
end 
puts"or type done to finish".colorize(:cyan)
cuisine_type = gets.chomp
puts
if (cuisine_type == "Italian" || cuisine_type == "italian" || cuisine_type == "ITALIAN")
    puts "Please choose from our sensational Italian menu.".colorize(:light_yellow)
    dish = italian.keys
    order = prompt.multi_select("Select dish?", dish)
    total_order += order
    response = prompt.select("Do you want to choose a dish from another cuisine", %w(Yes No))
    if response == "No"
    selecting_food = false
    else
    selecting_food = true
    end
puts
elsif (cuisine_type == "Mexican" || cuisine_type == "mexican" || cuisine_type == "MEXICAN")
puts "Please select from our flavorful Mexican menu"
dish = mexican.keys
    order = prompt.multi_select("Select dish?" , dish)
    total_order += order
    response = prompt.select("Do you want to choose a dish from another cuisine", %w(Yes No))
    if response == "No"
    selecting_food = false
    else
    selecting_food = true
    end
puts
elsif (cuisine_type == "Indian" || cuisine_type == "indian" || cuisine_type == "INDIAN")
puts "Please select from our finger-licking Indian menu"
dish = indian.keys
    order = prompt.multi_select("Select dish?", dish)
    total_order += order
    response = prompt.select("Do you want to choose a dish from another cuisine", %w(Yes No))
    if response == "No"
    selecting_food = false
    else
    selecting_food = true
    end
    elsif cuisine_type == "done"
    selecting_food = false
else 
    puts "Please enter a valid option".colorize(:red)
end
end

puts "Please feel free to let us know any additional requests".colorize(:light_magenta)
requests = gets.chomp
puts
puts "Your order is almost complete.....Please type in your delivery address".colorize(:light_magenta)
address = gets.chomp
puts
puts "Hey #{username}.Hope you had a good experience ordering on Super Eats. We are pleased to offer you $5 off on your next order!".colorize(:light_magenta)
puts
puts "***********HERE IS YOUR FINAL ORDER************\n\n#{total_order}".colorize(:yellow)
puts
puts "***********THE TOTAL PRICE FOR YOUR ORDER IS $#{get_total_price_of_dishes(total_order,italian,mexican,indian)}*************".colorize(:yellow)
puts
if total_order.length <= 2
    puts "***********THE DELIVERY TIME IS APPROXIMATELY 20 MINUTES***********".colorize(:yellow)
elsif total_order.length > 2 && total_order.length < 6
    puts "*************THE DELIVERY TIME IS APPROXIMATELY 35 MINUTES***********".colorize(:yellow)
elsif total_order.length >= 6
    puts "***********THE DELIVERY TIME IS APPROXIMATELY 50 MINUTES***********".colorize(:yellow)
else puts "Invalid"
end
username_validity = false
end

