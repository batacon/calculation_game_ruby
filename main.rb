puts '計算ゲーム起動！'

# 自然数の入力を求める
print "問題数は？: "
問題数 = gets.to_i

puts "#{問題数}問出題します！"

正解数 = 0

問題数.times do |i|
  puts "#{i + 1}問目！"
  n, m = (1..99).to_a.sample(2)
  print "#{n} + #{m} = "
  answer = gets.to_i
  if answer == n + m
    正解数 += 1
    puts "正解！"
    next
  end
  puts "不正解！"
end

puts "終了！"
puts "#{正解数}問正解！"
