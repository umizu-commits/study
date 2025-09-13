#以下を満たすsearch_runtekunメソッドを定義してください。
#search_runtekunメソッドの引数(text)に「らんてくん」という文字列が含まれている場合、「らんてくん発見」という文字列を返す。

def search_runtekun(text)
  'らんてくん発見' if text.match?(/らんてくん/) #match?はtrueかfalseかのみを処理するので今回の例ではmatchよりも良いコードになる
end
puts search_runtekun('RUNTEQらんてくんRUNTEQ')