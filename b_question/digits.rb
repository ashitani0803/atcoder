n, k = gets.strip.split.map(&:to_i)

place = 1

while n / k != 0 do
    n /= k
    place += 1
end

puts place
