
class Person

    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account

    def initialize(name)
        
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(num)
        @happiness = num
        if @happiness < 0
            @happiness = 0
        end
        if @happiness > 10
            @happiness = 10
        end
    end

    def hygiene=(num)
        @hygiene = num
        if @hygiene < 0
            @hygiene = 0
        end
        if @hygiene > 10
            @hygiene = 10
        end
    end

    def happy?
        if @happiness > 7
            return true
        end
        false
    end

    def clean?
        if @hygiene > 7
            return true
        end
        false
    end

    def get_paid(salary)
        self.bank_account += salary
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        hygiene=(self.hygiene)
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        hygiene=(self.hygiene)
        happiness=(self.happiness)
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        happiness=(self.happiness)
        happiness=(friend.happiness)
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == "politics"
            self.happiness -= 2
            friend.happiness -= 2
            happiness=(self.happiness)
            happiness=(friend.happiness)
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            friend.happiness += 1
            happiness=(self.happiness)
            happiness=(friend.happiness)
            "blah blah sun blah rain"
        else 
            "blah blah blah blah blah"
        end
    end

end