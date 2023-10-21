students = [
  { name: "Alice", grade: 90 },
  { name: "Bob", grade: 80 },
  { name: "Charlie", grade: 85 },
  { name: "David", grade: 95 },
  { name: "Eve", grade: 87 }
]
# 全ての学生の平均点を算出
total_grade = students.sum { |student| student[:grade] }
average_grade = total_grade.to_f / students.length

puts "平均点: #{average_grade}"
puts "平均点以上の学生:"
students.each do |student|
  if student[:grade] >= average_grade
    puts "#{student[:name]}: #{student[:grade]}"
  end
end

# 各生徒の平均得点を計算
# 平均が90以上の生徒の名前とその平均得点、最高得点、最低得点表示
students = [
  { name: "Alice", scores: [88, 76, 93, 85, 93] },
  { name: "Bob", scores: [78, 79, 85, 86, 85] },
  { name: "Charlie", scores: [95, 96, 92, 88, 92] },
  { name: "David", scores: [92, 90, 83, 78, 88] },
  { name: "Eve", scores: [91, 92, 85, 88, 86] }
]

students.each do |student|
  average = student[:scores].sum.to_f / student[:scores].length
  max = student[:scores].max
  min = student[:scores].min
  if average >= 90
    puts "#{student[:name]}: 平均得点:#{average} 最高得点:#{max} 最低得点:#{min}"
  end
end