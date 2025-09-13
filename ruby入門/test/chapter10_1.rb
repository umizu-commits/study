#'{"runteq":{"name":"らんてくん"}}'のJSON形式の文字列をRubyオブジェクトに変換して返す処理を記述してください。

require 'json'

def chapter10_01
  # コードを記述
  json_string = '{"runteq":{"name":"らんてくん"}}'
  JSON.parse(json_string)
end
puts chapter10_01