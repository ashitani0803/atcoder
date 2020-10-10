n, m = gets.split.map(&:to_i)
array = []

m.times do
    array << gets.split.map(&:to_i)
end

n.times do |i|
    ans = 0
    array.length.times do |j|
        if array[j].include?(i + 1)
            ans += 1
        end
    end 
    puts ans
end