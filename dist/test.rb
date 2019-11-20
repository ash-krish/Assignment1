require_relative "username"

# def test_successful_login
#     name = "menuman"
#     password = "abcd"
#     expected_result = true
#     actual_result = log_in(name,password)
#     if expected_result == actual_result
#         puts "Pass"
#     else
#         puts"Fail"
#     end
# end

# test_successful_login

def test_unsuccessful_login
    name = "jhsjvdf"
    password = "qwerty"
    expected_result = false
    actual_result = log_in(name,password)
    if expected_result == actual_result
        puts "Pass"
    else
        puts "Fail"
    end
end

test_unsuccessful_login