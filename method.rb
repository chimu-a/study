# # each
# 配列の各要素に対してブロックを実行
numbers = [1, 2, 3, 4, 5]
numbers.each do |num|
  puts num * 2  # 配列の各要素を2倍して出力
end

# # map
# 配列の各要素に対してブロックを実行し、その結果から新しい配列を作成
numbers = [1, 2, 3, 4, 5]
doubled = numbers.map do |num|
  num * 2  # 配列の各要素を2倍した新しい配列を生成
end
puts doubled  # [2, 4, 6, 8, 10] と出力

# # select
# 配列の各要素に対してブロックを実行し、その結果が真である要素からなる新しい配列を作成
numbers = [1, 2, 3, 4, 5]
evens = numbers.select do |num|
  num.even?  # 配列から偶数だけを抽出した新しい配列を生成
end
puts evens  # [2, 4] と出力
# …奇数かどうか判定:odd?メソッド

# # inject
# 配列の要素を順に集約していく際に使用
# 例)配列の要素の総和を計算する際などに使用
numbers = [1, 2, 3, 4, 5]
sum = numbers.inject do |total, num|
  total + num  # 配列の各要素の合計を計算
end
puts sum  # 15 と出力