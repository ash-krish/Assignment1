class User
    attr_accessor :username, :password

    def initialize (username,password)
        @username = username
        @password = password
    end

    def welcome(username,password)
        if password == username
            puts "Welcome #{username}"
        begin
            
        rescue => exception
            
        else
            
        end
        end
    end
    
end

user1 = User.new (username,password)
# user2 = User.new ("Food_panda","xyz")
# user3 = User.new ("grub.hub", "aaa")
User.welcome("IamHungry","abcd")
