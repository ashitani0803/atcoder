s = gets.strip.to_s

# puts s[0] + s.slice(1..-2).length.to_s + s[-1]

n = s.length

puts s[0] + (n - 2).to_s + s[n - 1]