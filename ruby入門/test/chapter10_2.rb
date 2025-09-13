#「 https://zipcloud.ibsnet.co.jp/api/search?zipcode=1500042 」にリクエストを飛ばした結果をJSON形式で取得し、取得したJSONをRubyオブジェクトに変換して返す処理を記述してください。

require 'net/http'
require 'uri'
require 'json'

def chapter10_02
  # コードを記述
  uri = URI.parse("https://zipcloud.ibsnet.co.jp/api/search?zipcode=1500042")
  response = Net::HTTP.get(uri) #文字列を返す、オブジェクト全体を返す場合はget_response
  JSON.parse(response)
end
puts chapter10_02
