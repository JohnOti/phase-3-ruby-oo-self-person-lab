# your code goes here
class Person
  attr_accessor :bank_account
  attr_reader :name,:happiness,:hygiene
  def initialize (name)
    @name=name
    @bank_account=25
    @happiness=8
    @hygiene=8
    end
    def happiness=(value)
      @happiness=if value > 10
        10
      elsif value < 0
        0
      else
        value
      end
    end
    def hygiene=(val)
      @hygiene=if val > 10
        10
        elsif val < 0
          0
        else
          val
        end
    end
    def happy?
      self.happiness > 7
    end
    def clean?
      self.hygiene > 7
    end
    def get_paid(amout)
      @bank_account+= amout
      "all about the benjamins"
    end
    def take_bath
      self.hygiene +=4
      "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    def work_out
      self.hygiene -=3
      self.happiness +=2
      "♪ another one bites the dust ♫"
    end
    def call_friend(friend)
      friend.happiness +=3
      self.happiness +=3
      "Hi #{friend.name}! It's #{self.name}. How are you?"

    end
    def start_conversation(friend,topic)
      case topic 
    when "politics"
      [self, friend].each { |person| person.happiness -= 2 }
      "blah blah partisan blah lobbyist"
    when "weather"
      [self, friend].each { |person| person.happiness += 1 }
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
    end

  end
