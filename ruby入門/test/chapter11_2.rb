#以下を満たすGraduateRunteqStudentクラスを定義してください。
#initializeメソッドの引数にnameをキーワード引数として受け取る
#initializeメソッド内で、「@job = 'Webエンジニア'」というインスタンス変数を定義する
#attr_accessorメソッドに「name」をセットする
#attr_readerメソッドに「job」をセットする

class GraduateRunteqStudent
  # コードを記述
  attr_accessor :name
  attr_reader :job
  def initialize (name:)
    @name =name
    @job = 'Webエンジニア'
  end
end
puts GraduateRunteqStudent.new(name: 'らんてくん').name
