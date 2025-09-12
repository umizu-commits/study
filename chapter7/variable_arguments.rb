def greet(*names)
  names.each do |name|
    puts "Hello, #{name}!"
  end
end

greet("Alice", "Bob", "Carol")