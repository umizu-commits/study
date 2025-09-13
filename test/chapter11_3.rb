#以下を満たすWaterクラスを定義してください。
#initializeメソッドに引数は取らない
#initializeメソッド内に、「@color = 'ブルー'」というインスタンス変数を定義する
#attr_accessorメソッドに「color」をセットする
#Waterクラスにインスタンスメソッド(change_color_to_orange)を定義する
#change_color_to_orangeメソッドは、インスタンスのcolorの値をオレンジに変える

class Water
  # コードを記述
  attr_accessor :color
  def initialize
    @color = 'ブルー'
  end
  def change_color_to_orange
    @color = 'オレンジ' #拡張性を考慮すると、self.colorのほうがよい
  end
end
puts Water.new.color
puts Water.new.change_color_to_orange