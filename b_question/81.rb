n = gets.to_i
ans = "No"

(1..9).each do |i|
    (1..9).each do |j|
        if i * j == n 
            ans = "Yes"
            break
        end
    end
end

puts ans