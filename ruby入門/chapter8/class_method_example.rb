class Person
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def introduce_text
    "私の名前は#{name}です。#{age}才です"
  end

  def self.adulthood_age_text
    "成人年齢は18才です"
  end
end

puts Person.adulthood_age_text