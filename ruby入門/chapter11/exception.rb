begin
  puts "String" + 1
rescue TypeError => e
  puts "エラーが発生しました: #{e.message}"
end