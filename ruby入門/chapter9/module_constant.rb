module Greeting
  HELLO = "Hello!"
end

class Person
  include Greeting

  def hello
    HELLO
  end
end

person = Person.new
puts person.hello
puts Greeting::HELLO