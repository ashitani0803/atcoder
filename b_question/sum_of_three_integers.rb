k, s = gets.strip.split.map(&:to_i)

count = 0

(0..k).each do |x|
    (0..k).each do |y|
        z = s - x - y
        count += z >= 0 && z <= k ? 1 : 0
    end
end

puts count