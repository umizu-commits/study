#Runtekunモジュールを作成し、モジュール内に定数NAMEとBIRTHDAYを定義してください。NAMEには「らんてくん」、BIRTHDAYには「7月8日」の文字列を記載してください。MobilePhoneクラスにRuntekunモジュールを組み込んでください。MobilePhoneクラスにインスタンスメソッドdigital_runtekunを定義してください。digital_runtekunメソッドはRuntekunモジュールの定数NAMEとBIRTHDAYを使用して、「初めまして。僕、らんてくんです。誕生日は7月8日だぞ。」という文字列を返すようにしてください。

module Runtekun
  # コードを記述
  NAME = 'らんてくん'
  BIRTHDAY = '7月8日'
end

module Runteq
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
    extend Runteq
    include NiceVoiceFunction
    extend Runtekun
def digital_runtekun
    "初めまして。僕、#{Runtekun::NAME}です。誕生日は#{Runtekun::BIRTHDAY}だぞ。"
end

  def call
    '通話機能'
  end

  # コードを記述
end
puts MobilePhone.new.digital_runtekun