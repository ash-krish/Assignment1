cuisine = ["Italian", "Burgers and Shakes", "Indian"]

italian = {"Margherita Pizza" => 14, "BBQ Chicken" => 17, "Bolognese Pasta" => 19, "Basil Pasta" => 18, "Pumpkin Risotto" => 20, "Garlic Bread" => 7}
burger_and_shakes = {"Pork Belly" => 13, "Crispy chicken" => 12, "Mushroom burger" => 11, "Onion rings" => 6, "Caramel Shake" => 8, "Chocolate Shake" => 8, "Vanilla Shake" => 8}
indian = {"Butter chicken" => 20, "Lamb Biriyani" => 18, "Chicken Kofta" => 21, "Dal Tadka" => 16, "Naan" => 5}


puts "WELCOME TO SUPER EATS"
puts "Please enter you username"
username = gets.chomp
puts "Please enter your password"
password = gets.chomp 
puts
puts "What are you in the mood to eat today?"
puts
cuisine.each do |cuisine|
    puts cuisine
end

cuisine_type = gets.chomp
puts
if cuisine_type = italian
    puts "Please choose from our sensational Italian menu."

cuisine_type = italian 
italian.each_key do |key|
        puts key
end


puts
elsif cuisine_type = burger_and_shakes
puts "Please select from our Burger & Shakes menu"
burger_and_shakes.each_key do |key|
    puts key
end

puts
elsif cuisine_type = indian
puts "Please select from our finger-licking Indian menu"
indian.each_key do |key|
    puts key
end
else puts "Please enter a valid option"
end
