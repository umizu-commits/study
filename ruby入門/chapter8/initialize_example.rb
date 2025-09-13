class Person
  def initialize(name, age)
    @name = name
    @age = age
  end

  def info
    "#{@name}, #{@age}歳"
  end
end

person = Person.new("太郎", 30)
p person
puts person.info