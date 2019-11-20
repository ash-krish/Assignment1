# puts "Username"
# username = gets.chomp
# puts "password"
# password = gets.chomp
# case username
# when username = "menuman" && password = "abcd"
#     puts "You are signed in"
# when username = "iamhungry" && password = "xyz"
#     puts "You are signed in"
# when username = "food_panda" && password = "1234"
#     puts "You are signed in"
# else puts "Username/password incorrect.Try again"
# end


def log_in(username,password)
    
    if username == "menuman" && password == "abcd"
        return true
    elsif username == "iamhungry" && password == "xyz"
        return true
    elsif username == "food_panda" && password == "1234"
        return true
    else 
        return false
    end
end


