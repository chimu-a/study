# 約数、約数の数、約数の合計
def divisor(num)
  (1..num).select{ |i| num % i == 0 }
end

puts "約数を算出したい整数を入力してください"
num = gets.to_i
r = divisor(num)
puts r
puts "約数の数は#{r.length}です"
puts "約数の合計は#{r.sum}です"

def divisor(num,range)
  num_div = (1..num).select{ |count| num % count == 0 }
  range_div = (1..range).select{ |count| num % count == 0 }
  puts "約数の数は#{num_div.length}です"
  puts "約数の総和は#{num_div.sum}です"
  puts "#{range}以下の約数の和は#{range_div.sum}です"
end

# 特定の条件下での約数の和も出す
# 例)12600の約数の中から5000以下の約数の和も出す
puts "約数の総和を出したい整数を入力してください"
num = gets.to_i
puts "和を出したい約数の範囲を指定してください"
range = gets.to_i
divisor(num,range)

# 最大公約数（GCD: Greatest Common Divisor）
# 2つ
a.gcd(b)
# 3つ
a.gcd(b).gcd(c)
# 配列
numbers = [30, 20, 15]

puts numbers.inject(:gcd) # => 5

# 最小公倍数（LCM: Least Common Multiplier）
# 2つ
a.lcm(b)
# 3つ
a.lcm(b).lcm(c)
# 配列
numbers = [30, 20, 15]

# 最小公倍数
puts numbers.inject(:lcm) # => 60

# 1234567890の約数の内、30000000以下の約数を足した合計の値
def divisor_sum(num, limit)
  (1..limit).select{ |i| num % i == 0 }.sum
end

puts divisor_sum(1234567890, 30000000)

# or

number = 1234567890
sum_of_divisors = 0

# 約数を見つける
(1..number).each do |i|
  if number % i == 0
    # 約数が30000000以下の場合に足す
    if i <= 30000000
      sum_of_divisors += i
    end

    # number自体をiで割った商も約数
    quotient = number / i
    if quotient != i && quotient <= 30000000
      sum_of_divisors += quotient
    end
  end
end

puts "30000000以下の約数の合計は #{sum_of_divisors} です。"

# 逆から出力
def reverse_str(str)
  re_str = []                     #一文字ずつ文字をいれる配列の入れ物を用意する
  str.length.times do |i|         #文字列の文字数文だけ処理を繰り返す
    re_str << str[str.length - i] #配列に一文字ずつ最後の文字から入れる
  end
  re_str << str[0]                #文字列の最初の文字を一番最後に入れる
  puts re_str.join                #配列を文字列に変換して出力する
end
str = "aiueo"
reverse_str(str)                  #メソッドを呼び出す