cuisine = ["Italian", "Mexican", "Indian"]

italian = {"Margherita Pizza" => 14, "BBQ Chicken" => 17, "Bolognese Pasta" => 19, "Basil Pasta" => 18, "Pumpkin Risotto" => 20, "Garlic Bread" => 7}
mexican = {"Veggie nachos" => 13, "Chicken tacos" => 9, "Burritos" => 11, "Stuffed Jalapenos" => 6, "Quesadilla" => 13, "Jarritos soda" => 8, "Warm churros" => 8}
indian = {"Butter chicken" => 20, "Lamb Biriyani" => 18, "Chicken Kofta" => 21, "Dal Tadka" => 16, "Naan" => 5, "Mango lassi" => 4}

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
if (cuisine_type == "Italian" || cuisine_type == "italian")
    
    puts "Please choose from our sensational Italian menu."
 
italian.each_key do |key|
        puts key
    end
puts
elsif (cuisine_type == "Mexican" || cuisine_type == "mexican")
puts "Please select from our sassy Mexican menu"
mexican.each_key do |key|
    puts key
end
puts
elsif (cuisine_type == "Indian" || cuisine_type == "indian")
puts "Please select from our finger-licking Indian menu"
indian.each_key do |key|
    puts key
end
else puts "Please enter a valid option"
end
  