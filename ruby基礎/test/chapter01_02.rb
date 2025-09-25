#異なるn個のものから2個を選ぶ、重複のない組み合わせを出力するプログラム(chapter01_02メソッド)を作成してください。
#出力例：numberに5が渡された場合、[[1,2], [1,3], [1,4], [1,5], [2,3], [2,4], [2,5], [3,4], [3,5], [4,5]]を返す

def chapter01_02(number)
  # コードを記載
  number_array = (1..number).to_a
  result = []
   # i は 0 から 3 まで（配列のインデックス）
  for i in 0..(number_array.length - 2) do
    # j は i+1 から 4 まで
    for j in (i + 1)..(number_array.length - 1) do
      # ここで組み合わせを出力
      result << [number_array[i], number_array[j]]
      
    end
  end
  result
end
p chapter01_02(5)