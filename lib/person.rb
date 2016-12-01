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

  def happiness=(happy)
     if happy > 10
       @happiness = 10
     elsif happy < 0
       @happiness = 0
     else
       @happiness = happy
    end
  end

  def hygiene=(hyg)
     if hyg > 10
       @hygiene = 10
     elsif hyg < 0
       @hygiene = 0
     else
       @hygiene = hyg
    end
  end

  def happy?
    if @happiness > 7
      return true
    else
      return false
    end
  end

  def clean?
   if @hygiene > 7
     return true
   else
     return false
   end
  end

  def get_paid(cash)
    @bank_account += cash
    "all about the benjamins"
  end

  def take_bath
    new_hy = @hygiene + 4
    self.hygiene=(new_hy)
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end


  def work_out
    self.hygiene=(@hygiene - 3)
    self.happiness=(@happiness + 2)
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    friend.happiness=(friend.happiness + 3)
    self.happiness=(self.happiness + 3)
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(friend, topic)
    if topic == "politics"
      friend.happiness=(friend.happiness - 2)
      self.happiness=(self.happiness - 2 )
      return 'blah blah partisan blah lobbyist'
    elsif topic == "weather"
      friend.happiness=(friend.happiness + 1)
      self.happiness=(self.happiness + 1)
      return 'blah blah sun blah rain'
    else
      return 'blah blah blah blah blah'
    end
  end
end
