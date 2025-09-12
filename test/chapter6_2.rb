#引数runtekun_profileには、{ name: 'らんてくん', birthday: '7月8日', tall: 80, weight: 25.6 }が渡されます。runtekun_profileから誕生日を返す処理を記載してください。

def chapter06_02(runtekun_profile)
  # コードを記述
runtekun_profile[:birthday]
end
puts chapter06_02({ name: 'らんてくん', birthday: '7月8日', tall: 80, weight: 25.6 })
