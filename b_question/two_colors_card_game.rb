n = gets.to_i
array1 = n.times.map{gets.strip.to_s}
m = gets.to_i
array2 = m.times.map{gets.strip.to_s}

ans = 0

(array1 + array2).uniq.each do |i|
    if ans < array1.count(i) - array2.count(i)
        ans = array1.count(i) - array2.count(i) 
    end
end

puts ans

