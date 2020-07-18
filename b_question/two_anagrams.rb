s = gets.strip.to_s
t = gets.strip.to_s

puts s.chars.sort.join < t.chars.sort.reverse.join ? "Yes" : "No"
    