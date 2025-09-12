def cashier(items)
  sum = 0
  items.each do |item|
    puts "#{item[:name]}が1点"
    sum += item[:price]
  end
  puts "合計金額は#{(sum * 1.1).floor}円です"
end

items = [{ name: "apple", price: 100 }, { name: "banana", price: 200 }, { name: "orange", price: 300 }]
cashier(items)