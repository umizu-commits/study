#barcode_readerメソッドを定義し、1つ目の引数にはitem、2つ目の引数にはキーワード引数としてpriceを設定しています。barcode_readerメソッドが実行されると、「●はxxxになります」という文字列を返す処理を記載してください。「●」はitemの値が表示され、「xxx」はpriceの値が表示されます。尚、itemとpriceがどちらも空の場合は、「メモリは256になります」という文字列を返す処理を記載してください。

def barcode_reader(item = 'メモリ', price: 256)
  # コードを記述

end
puts barcode_reader
