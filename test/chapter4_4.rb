#引数arrayには['Hello', ' ', 'World', ' ', '僕らんてくん', '、', 'エンジニア歴5年以上のエンジニアだぞ']が渡されます。渡された配列を元に「"Hello World 僕らんてくん、エンジニア歴5年以上のエンジニアだぞ"」の文字列を返す処理を記載してください。

def chapter04_04(array)
  # コードを記述
  sentence = '' 
  array.each do |a|
   sentence += a
end
sentence    #sentenceで返すということに苦戦
end
p chapter04_04(['Hello', ' ', 'World', ' ', '僕らんてくん', '、', 'エンジニア歴5年以上のエンジニアだぞ'])
