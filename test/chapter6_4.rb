#引数runtekun_profileには、{ name: 'らんてくん', birthday: '7月8日', tall: 80, weight: 25.6 }が渡されます。「nameは、らんてくんです。birthdayは、7月8日です。tallは、80です。weightは、25.6です。」を返す処理を記載してください。

def chapter06_04(runtekun_profile)
  # コードを記述
  a = ""
  runtekun_profile.each do |key, value|
a += "#{key}は、#{value}です。" 
  end
  a
end
puts chapter06_04({ name: 'らんてくん', birthday: '7月8日', tall: 80, weight: 25.6 })