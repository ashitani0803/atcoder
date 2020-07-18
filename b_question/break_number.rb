n = gets.strip.to_i
i = 0

while 2 ** i <= n do
    i += 1
end

puts 2 ** (i - 1)