#if文がfalseの場合は、raiseメソッドによって例外が発生します。chapter11_01メソッドで例外が発生した場合、「らんてくん不在」という文字列を返却するようにコードを修正してください。


def chapter11_01(text)
  # コードを記述
  begin
  if text == 'らんてくん'
    'ランニング中のらんてくんが現れた'
  else
    raise
  end
  # コードを記述
    rescue RuntimeError
    "らんてくん不在"
    end
end
puts chapter11_01('RUNTEQ')
