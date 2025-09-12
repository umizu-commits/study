class Person
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def introduce_text
    "私の名前は#{name}です。#{age}才です。"
  end
end

class Employee < Person
  def job_text
    "私は社員です。"
  end
end

employee = Employee.new("太郎", 30)
puts employee.introduce_text
puts employee.job_text