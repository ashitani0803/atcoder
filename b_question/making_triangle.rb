n = gets.to_i

arr = gets.strip.split.map(&:to_i)

ans = 0

(0..(arr.length - 3)).each do |i|
    ((i + 1)..(arr.length - 2)).each do |j|
        ((j + 1)..(arr.length - 1)).each do |k|
            if arr[i] != arr[j] && arr[j] != arr[k] && arr[k] != arr[i]
                if arr[i] + arr[j] > arr[k] && arr[j] + arr[k] > arr[i] && arr[k] + arr[i] > arr[j]
                    ans += 1
                end
            end
        end
    end
end 

puts ans