class Person
    # Traceback (most recent call last): third.rb:14:in `<main>': undefined method `age' for #<Person:0x00007fa5518be4a0 @name="한나", @age=24> (NoMethodError) Did you mean?  age=
    # attr_reader :name
    # attr_writer :name, :age

    # attr_reader :name, :age
    # attr_writer :name, :age

    # reader, writer 를 합침. 
    attr_accessor :name, :age

    def initialize(name, age)
        @name = name
        @age = age
    end
end


hanna = Person.new("한나", 24)
puts hanna.name # name / read
puts hanna.age

hanna.age = 23
hanna.name = "이한나" # name = (value) / write

puts hanna.name
puts hanna.age