#以下を満たすRunteqクラスを記載してください。
#Runteq.newが呼び出された場合、引数が指定されなかった場合は、nameキーワード引数に「らんてくん」がデフォルト値として設定されます。
#Runteqクラスにはnameメソッドがあり、このメソッドを呼び出すと、Runteq.newで指定されたnameが返されます。
#Runteqクラスにはdecideメソッドがあり、'xxxはRUNTEQで学習してエンジニアになるぞ'という文字列を返します。「xxx」 には、Runteq.newで指定された name が入ります。

class Runteq
  # コードを記述
  def (name = "らんてくん")
"#{name}はRUNTEQで学習してエンジニアになるぞ"
  end
end
person = Runteq.new
puts Runteq.new.decide
