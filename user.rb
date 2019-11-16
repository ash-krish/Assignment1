class User
    attr_accessor :username, :password

    def initialize (username,password)
        @username = username
        @password = password
    end

    def welcome(x,y)
        x-
            puts "Welcome #{username}"
    end
end

user1 = User.new ("IamHungry", "abcd")
user2 = User.new ("Food_panda", "xyz")
user3 = User.new ("grub.hub", "aaa")