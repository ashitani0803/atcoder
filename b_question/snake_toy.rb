n, k = gets.strip.split.map(&:to_i)

array = gets.strip.split.map(&:to_i)

ans = 0

(1..k).each do |i|
    ans += array.sort.reverse[i - 1]
end

puts ans