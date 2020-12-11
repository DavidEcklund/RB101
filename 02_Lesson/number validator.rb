def validnum?(num)
  num.to_i.to_s == num || num.to_f.to_s == num
end

def zeros?(num)
  n = num.chars
  n.count { |_ch| ch = '0' } >= 1 && n.first == '0'
end

def float_no_zero(num)
  n = num.chars
  (n.first == "." && n[1..-1].join('').to_i == num.to_f * (10 ** ((num.length) -1))) || (n.last == "." && n.join.to_i == num.to_i)
end

repeat = true
num = ''
loop do
  puts 'Num?:'
  num = gets.chomp
  repeat = validnum?(num) || zeros?(num) || float_no_zero(num) ? false : true
  break unless repeat
end

num = if num == num.to_i.to_s
  num.to_i 
elsif zeros?(num)
  num.to_i
else
  num.to_f
end
puts num
