Ransack.configure do |config|
  config.add_predicate 'lteq_end_of_day',  # predicate名
    arel_predicate: 'lteq',     # 使用するarel predicate
    formatter: proc { |v|  v.end_of_day} # 値の変換処理
end