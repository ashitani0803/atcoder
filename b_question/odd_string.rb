n = gets.strip.to_s

odd_str = []

(1..(n.length)).each do |i|
    i.odd? ? odd_str << n[i - 1] : nil
end

puts odd_str.join