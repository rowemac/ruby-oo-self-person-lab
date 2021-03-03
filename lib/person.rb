require 'pry'


# your code goes here
class Person
    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene
    
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8

    end

    def happiness
        @happiness.clamp(0, 10)
    end

    def hygiene
        @hygiene.clamp(0, 10)
    end 

    def happy?
       if @happiness > 7
        return true
       else
        false
       end
    end 

    def clean?
        if @hygiene > 7
            return true
        else
            false
        end
    end

    def get_paid(salary)
        @bank_account += salary
        return "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        return "♪ another one bites the dust ♫"
    end 

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end 

    def start_conversation(person, topic)
        if topic == "politics"
            person.happiness -= 2
            self.happiness -= 2
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            person.happiness +=1
            self.happiness +=1
            return "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end 

    
    
    end 





end 

