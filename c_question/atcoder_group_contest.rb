n = gets.to_i
array = gets.split.map(&:to_i).sort
ans = 0

n.times do
    ans += array[n] 
    n += 2
end

puts ans