n = gets.to_i
ans = "No"

(0..n).each do |x| #正しくはnではなくn / 4
    (0..n).each do |y| # 正しくはnではなくn / 7
        if (4 * x) + (7 * y) == n
            ans = "Yes"
            break
        end
    end
end

puts ans
