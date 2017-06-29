# your code goes here
class Person
    attr_reader :name
    attr_accessor :bank_account
    attr_reader :happiness
    attr_reader :hygiene

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(value)
        if value < 0
            value = 0
        elsif value > 10
            value = 10
        end
        @happiness = value
    end

    def hygiene=(value)
        if value < 0
            value = 0
        elsif value > 10
            value = 10
        end
        @hygiene = value
    end

    def happy?
        happiness > 7
    end
    
    def clean?
        hygiene > 7
    end

    def get_paid(value)
        @bank_account += value
        'all about the benjamins'
    end

    def take_bath
        self.hygiene += 4
         "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness += 2
        self.hygiene -=3 
        "♪ another one bites the dust ♫"
    end

    def call_friend(person)
        self.happiness += 3
        person.happiness += 3
        "Hi #{person.name}! It's #{self.name}. How are you?"
    end
    
    def start_conversation(person, topic)
        msg = ""
        case topic
            when "politics"
                self.happiness -= 2
                person.happiness -= 2
                msg = "blah blah partisan blah lobbyist"
            when "weather"
                self.happiness += 1
                person.happiness += 1
                msg = "blah blah sun blah rain"
            else
                msg = "blah blah blah blah blah"
        end
        msg
    end


end