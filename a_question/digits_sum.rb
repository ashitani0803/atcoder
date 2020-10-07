n = gets.to_i

ans = n

(1..(n - 1)).each do |a|
    b = n - a
    sum = a.digits.sum + b.digits.sum
    ans = sum < ans ? sum : ans
end

puts ans