#Runteqモジュールとモジュール内にcommercial_messageメソッドを定義し、問1で定義された MobilePhoneクラスでcommercial_messageクラスメソッドを利用できるようにしてください。commercial_messageメソッドは「https://www.youtube.com/@_runteq_」の文字列を返してください。

module Runteq
  # コードを記述
  def commercial_message
    'https://www.youtube.com/@_runteq_'
  end
end

module NiceVoiceFunction
  def beautiful_voice
    call + '(自動で音声を美しくします)'
  end
end

class MobilePhone
  # コードを記述
  include NiceVoiceFunction
extend Runteq

  def call
    '通話機能'
  end
end
puts MobilePhone.commercial_message

