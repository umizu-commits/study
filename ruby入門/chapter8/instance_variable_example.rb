class Person
  def initialize(name, age)
    @name = name
    @age = age
    @country = "Japan"
  end

  def info
    "#{@name}, #{@age}歳, #{@country}出身"
  end
end

person = Person.new("太郎", 30)
p person
puts person.info