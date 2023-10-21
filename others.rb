# # 等差数列 :はじめの数に、一定の数を足し続ける数列
# 初期値 m ,公差 n の等差数列を1〜10番目までスペース区切りで出力
a, b = gets.split(" ").map(&:to_i)
array = []
10.times {|i|
    array[i] = a + b * i
}
puts array.join(" ")

# # 等比数列 :はじめの数に、一定の数を掛け続ける数列
# # 初期値 m ,公差 n の等比数列を1〜10番目までスペース区切りで出力
a, b = gets.split(" ").map(&:to_i)
array = []

10.times {|i|
    array[i] = a
    a *= b
}
puts array.join(" ")

# # ソート :データの集合を一定の規則に従って並べ替える
ary = [ "d", "a", "e", "c", "b" ]
p ary.sort  #=> ["a", "b", "c", "d", "e"]

# # 組み合わせ
a = [1, 2, 3, 4]
p a.combination(1).to_a  #=> [[1],[2],[3],[4]]
p a.combination(2).to_a #=> [[1,2],[1,3],[1,4],[2,3],[2,4],[3,4]]
p a.combination(3).to_a  #=> [[1,2,3],[1,2,4],[1,3,4],[2,3,4]]
p a.combination(4).to_a  #=> [[1,2,3,4]]

# # 階乗 :その自然数以下のすべての自然数を掛け合わせた数値
def factorial(number, result = 1)
    return result if number <= 1
    factorial(number - 1, result * number)
end

puts factorial(10)

# # 順列
# 例) 1, 2, 3 の順列→123, 132, 213, 231, 312, 321 の6パターン
def permutation(array, number, temp = "", result = [])
    return result << temp if temp.size >= number

    array.each_with_index do |value, i|
        copy_array = array.clone
        copy_array.delete_at(i)
        permutation(copy_array, number, temp + value, result)
    end
    return result
end

result = permutation(["A", "B", "C", "D"], 3)
puts result.size
p result

# 数字が10以上の場合はその数字をそのまま残し、10未満の数字だけを2倍
numbers = [4, 10, 15, 6, 8]

new_numbers = []
for number in numbers do
  if number < 10
    new_numbers.push(number * 2)
  elsif number >= 10
    new_numbers.push(number)
  end
end

print "#{new_numbers}\n"