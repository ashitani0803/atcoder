n = gets.to_i
arr = []

n.times do |i|
   arr << gets.strip.split.map(&:to_i)
end

j = 1
arr2 = []

(0..n-2).each do |i|
    (j..n-1).each do |k|
        arr2 << ((arr[i][0] - arr[k][0]) ** 2) + ((arr[i][1] - arr[k][1]) ** 2)
    end
    j += 1
end

puts arr2.max ** (1 / 2.0)