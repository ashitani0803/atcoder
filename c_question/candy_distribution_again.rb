n, x = gets.strip.split.map(&:to_i)

array = gets.strip.split.map(&:to_i)

ans = 0

if x == array.sum
    ans = array.length
elsif x > array.sum
    array.sort.reverse.each_with_index do |num, index|
        if index == array.length - 1
            if num == x
                ans += 1
            else
                false
            end
        else
            x -= num
            ans += 1
        end
    end
else 
    array.sort.each do |i|
        if x >= i
            x -= i
            ans += 1
        else
            break
        end
    end
end

puts ans