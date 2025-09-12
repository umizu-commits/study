#以下を満たすEngineerクラス（親）とBackendEngineerクラス（子）を記載してください。
#Engineerクラスには、nameをキーワード引数に取る initializeメソッドがあります。
#Engineer クラスには、nameメソッドがあり、initializeメソッドで設定された nameの値を返します。
#BackendEngineerクラスには、identifyメソッドがあり、BackendEngineer.newで指定された引数を使って「xxx はバックエンドエンジニアです」という文字列を返します。ここで 「xxx」 は、BackendEngineer.newメソッドで指定された名前です。

class Engineer
  def initialize(name:)  # ← ここを修正
    @name = name
  end
  
  def name
    @name
  end
end

class BackendEngineer < Engineer
  def identify
    "#{name}はバックエンドエンジニアです" #@nameではなくnameだと上で変更があった際に対応しやすいため
  end
end
puts BackendEngineer.new(name: 'らんてくん').identify