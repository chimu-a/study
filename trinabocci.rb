# # トリボナッチ数列
# # 10番目の数を計算
tribonacci = [1, 1, 2]
while tribonacci.length < 10
  tribonacci << tribonacci[-1] + tribonacci[-2] + tribonacci[-3]
end

puts tribonacci.last

or

def fibonacci(n)
  a = 1
  b = 1
  c = 2

  (n - 1).times do
    temp = a + b + c
    a = b
    b = c
    c = temp
    n += 1
  end

  return a
end

puts fibonacci(10)

or

def tribonacci(n)
  return   if n < 1
  a, b, c = 0, 0, 1
  (n - 1).times { a, b, c = b, c, a + b + c }
  a
end

puts "数を出したいのは何項目ですか？"
n = gets.to_i
# -> 11を入力
puts "#{n}項目の数字は#{tribonacci(n)}"
# -> 11項目の数字は81

# a1=0, a2=0, a3=1
# 第n項、anを10007で割った余りを求める
a = Array.new(1000000)

a[0] = 0
a[1] = 0
a[2] = 1

n = gets.to_i
(3..n).each{|i|
  a[i] = (a[i - 1] + a[i - 2] + a[i - 3]) % 10007
}

p a[n - 1]
