#1から引数numberの値までの値を順番に、以下の条件に基づいた出力を返すchapter02_01メソッドを定義してください。
#- 3の倍数の場合は、「"Fizz!"」を返す
#- 5の倍数の場合は、「"Buzz!"」を返す
#- 15の倍数の場合は、「"FizzBuzz!"」を返す
#- 上記以外の場合は、値そのものを返す
# ダブルクォーテンションを使用してください

def chapter02_01(number)
  (1..number).each do |i|
    if i % 15 == 0
      p "FizzBuzz!"     # ← pに置き換え
    elsif i % 3 == 0
      p "Fizz!"         # ← pに置き換え
    elsif i % 5 == 0
      p "Buzz!"         # ← pに置き換え
    else 
      p i               # ← pに置き換え
    end
  end
end
chapter02_01(20)