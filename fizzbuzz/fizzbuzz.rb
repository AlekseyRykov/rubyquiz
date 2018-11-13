# Solution #1

1.upto(100) do |x|
  if x % 3 == 0 && x % 5 == 0
    puts "#{x} fizzbuzz"
  elsif x % 3 == 0
    puts "#{x} fizz"
  elsif x % 5 == 0
    puts "#{x} buzz"
  else
    puts x
  end
end

# Solution #2

(1..100).each do |x|
  m_three = x.modulo(3) == 0
  m_five = x.modulo(5) == 0

puts case
  when (m_three and m_five) then "#{x} fizzbuzz"
  when m_three then "#{x} fizz"
  when m_five then "#{x} buzz"
  else x
  end
end

# Solution #3

(1..100).each do |y|
  x = ''
  x += 'fizz' if y % 3 == 0
  x += 'buzz' if y % 5 == 0
  puts(x.empty? ? y : x)
end
