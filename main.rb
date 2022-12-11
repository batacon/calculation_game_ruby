puts '計算ゲーム起動！'
計算種別 = [
  { name: '足し算', operator: '+' },
  { name: '引き算', operator: '-' },
  { name: '掛け算', operator: '*' },
  { name: '割り算', operator: '/' }
]

print '何算をやりますか？(1:足し算, 2:引き算, 3:掛け算, 4:割り算): '
計算種別番号 = 0
while 計算種別番号 < 1 || 計算種別番号 > 4
  計算種別番号 = gets.to_i
  print 'ダメです、1〜4の整数を入力してください: ' if 計算種別番号 < 1 || 計算種別番号 > 4
end
計算種別名 = 計算種別[計算種別番号 - 1][:name]
演算子 = 計算種別[計算種別番号 - 1][:operator]
puts "#{計算種別名}をやります！"

print '最大値はいくつにしますか？(1〜99999): '
最大値 = 0
while 最大値 < 1 || 最大値 > 99999
  最大値 = gets.to_i
  print 'ダメです、1〜99999の整数を入力してください: ' if 最大値 < 1 || 最大値 > 99999
end
puts "最大値は#{最大値}にします！"

print "何問やりますか？: "
問題数 = 0
while 問題数 < 1
  問題数 = gets.to_i
  print "ダメダメ、1以上の整数を入力してください: " if 問題数 < 1
end

puts "#{問題数}問出題します！"
puts ''
puts ''

正解数 = 0

問題数.times do |i|
  puts ''
  print "#{i + 1}問目=>   "
  n, m = (1..最大値).to_a.sample(2)
  print "#{n} #{演算子} #{m} = "
  answer = gets.to_i
  if answer == eval("n #{演算子} m")
    正解数 += 1
    puts "正解！"
    next
  end
  puts "不正解！"
end

puts ''
puts '========='
puts ''
puts "終了！お疲れ様でした！"
puts "#{正解数}問正解！"
puts "正解率は#{正解数 * 100 / 問題数}%です！"
