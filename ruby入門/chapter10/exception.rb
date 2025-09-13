begin
  1 / 0
rescue ZeroDivisionError => e
  puts "ZeroDivisionError: #{e.message}"
end