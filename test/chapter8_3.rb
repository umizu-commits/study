#以下を満たすShapeクラスを記載してください。
#Shape.newの引数には、「底辺」と「高さ」の2つを取ります。
#Shapeクラスには、reportメソッドがあります。このメソッドを呼び出すと、「底辺xxx、高さxxxの場合、三角形の面積はxxx 四角形の面積はxxx」という文字列が返されます。
#三角形の面積を示す部分は、private なメソッドを呼び出して算出された結果を返します。
#四角形の面積を示す部分は、private なメソッドを呼び出して算出された結果を返します。

class Shape
  # コードを記述
  def initialize(x,y)
    @x = x
    @y = y
  end

  def report
    "底辺#{@x}、高さ#{@y}の場合、三角形の面積は#{secret1} 四角形の面積は#{secret2}"
  end

  private
  def secret1
  @x * @y /2
  end

  private
  def secret2
    @x * @y
  end


end

puts Shape.new(10, 5).report
