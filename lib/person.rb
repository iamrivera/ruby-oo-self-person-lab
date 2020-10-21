require 'pry'

class Person
    attr_accessor :bank_account, :hygiene
    attr_reader :name, :happiness
    attr_writer 

    def initialize(name,happiness = 8, hygiene = 8)
        @name = name
        @bank_account = 25
        @happiness = happiness
        @hygiene = hygiene
    end

    def happiness=(number)
        @happiness = number 
        if number > 10 
            @happiness = 10
        elsif number < 0 
            @happiness = 0 
        end
    end
      
    def hygiene=(number)
        @hygiene = number 
        if number > 10 
            @hygiene = 10
        elsif number < 0 
            @hygiene = 0 
        end
    end

    def clean?         
        self.hygiene > 7 ? true : false
    end

    def happy? 
        self.happiness > 7 ? true : false
    end

    def get_paid(salary_amount)
        self.bank_account += salary_amount
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        # binding.pry
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        # @friend = friend
        friend.happiness += 3 
        self.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"    
    end

    def start_conversation(person, topic)
        if topic == "politics"
            person.happiness -= 2
            self.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather" 
            person.happiness += 1
            self.happiness += 1
            "blah blah sun blah rain"        
        else
            "blah blah blah blah blah"
        end
    end
end
