# フィナボッチ数列
# n番目の数を計算
def fibonacci(n)
  a = 0
  b = 1

  (n - 1).times do
    temp = a
    a = b
    b = temp + b
  end

  return a
end

puts fibonacci(10)

# or

fibonacci = [0, 1]
while fibonacci.length < 10
  fibonacci << fibonacci[-1] + fibonacci[-2]
end

puts fibonacci.last

# or

# 指定番のフィボナッチ数を求めるメソッドを定義
def fibonacci(num)
  # 再帰終了条件
  if num == 0
    return 0
  # 再帰終了条件
  elsif num == 1
    return 1
  else
    # 再帰呼び出し
    fibonacci(num - 1) + fibonacci(num - 2)
  end
end

# 第 0 項から第 9 項までを出力
(0..9).each do |i|
  puts "第 #{i} 項： #{fibonacci(i)}"
end