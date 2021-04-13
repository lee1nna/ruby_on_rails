class Person
    def initialize(name, age)
        @name = name
        @age = age
    end

    public
    def run
        "#{@age}살 #{@name}이(가) 달립니다."
    end

    def check_password(password)
        if password == your_password
            puts "성공적으로 로그인하셨습니다!"
        else
            puts "비밀번호가 틀렸습니다."
        end
    end

    # object안에서만 접근할 수 있는 private method
    # private
    def your_password
        @password = "1234"
    end

end

hanna = Person.new("한나", 23)
puts hanna.run

# second.rb:20:in `<main>': private method `your_password' called for #<Person:0x00007fc99391e1f0 @name="한나", @age=23> (NoMethodError)
# private한 메소드에 접근했기 때문에 위와 같은 오류가 뜸.
puts hanna.your_password

puts hanna.check_password("1234")