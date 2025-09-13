def chapter03_01(number)
  # コードを記述
    if number % 15 == 0
        return "らんてくん最高"
    elsif number % 5 == 0
        return "RUNTEQ"
    elsif number % 3 == 0
        return "プログラミング"
    else
        return number
puts chapter03_01(100)


def chapter03_02(hoge, fuga)
  # コードを記述
 if hoge||fuga
    "OR"
 end
end
puts chapter03_02(true, true)
