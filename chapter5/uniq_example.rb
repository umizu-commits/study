numbers = [1, 2, 2, 3, 4, 4, 5, 5, 5]
unique_numbers = []
numbers.each do |number|
  if !unique_numbers.include?(number)
    unique_numbers << number
  end
end
p numbers
p unique_numbers