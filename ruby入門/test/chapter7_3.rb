#引数が渡された場合、「今日もxxxを頑張ります」という文字列を返し、引数が渡されなかった場合は「今日もプログラミング学習を頑張ります」という文字列を返すdecideメソッドを定義してください。なお、キーワード引数は使用しないようにしてください。

class Runteq
  # コードを記述
  def initialize(name:"らんてくん") #キーワード引数を見逃したため苦戦
    @name = name
  end

  def name #Runteqクラスにはnameメソッドがあり、このメソッドを呼び出すと、Runteq.newで指定されたnameが返されます。←が理解できず苦戦
  @name
end

  def decide
"#{@name}はRUNTEQで学習してエンジニアになるぞ"
  end
end
person = Runteq.new(name:"らんてくん")
puts Runteq.new.decide
puts person.name