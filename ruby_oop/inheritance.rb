class Person
    @@people_count = 0

    def initialize(name)
      @name = name
      @@people_count += 1
    end

    def run
        puts "#{@name}이(가) 달립니다."
    end

    def drink
        puts "#{@name}이(가) 물을 마십니다."
    end

    def self.number_of_instance
        puts "#{@@people_count}명의 사람이 현재까지 생성되었습니다."
    end
end

person = Person.new("chanha")
person.run
person.drink

Person.number_of_instance

person2 = Person.new("hanna")
person2.run
person2.drink
Person.number_of_instance


#상속
#두 개 이상의 상속은 불가능

class SoccerMan < Person
    def run
        # super:기존의 run()를 사용하고 싶을 때 사용
        super
        puts "#{@name}이(가) 축구공을 차면서 달립니다!"
    end
    def kick
        puts "#{@name}이(가) 축구공을 찼습니다!"
    end
end

class BasketBallMan < Person
    def run
        puts "#{@name}이(가) 농구공을 드리블하면서 달립니다!"
    end
    def shot
        puts "#{@name}이(가) 농구공을 던졌습니다!"
    end
end

ronaldo = SoccerMan.new("호날두")
ronaldo.run
ronaldo.kick

#Traceback (most recent call last): first.rb:51:in `<main>': undefined method `shot' for #<SoccerMan:0x00007ffbb7040d98 @name="호날두"> (NoMethodError)
#BasketBallMan에 있는 함수를 사용했으므로 위와 같은 에러가 뜸.
#ronaldo.shot

jordan = BasketBallMan.new("조던")
jordan.run
jordan.shot
