n = gets.to_i

t = n
num = 0

n.to_s.split("").each do |i|
   num += i.to_i 
end

while t > 0 do
    num += t % 10
    t /= 10
end
p n

puts n % num == 0 ? "Yes" : "No"


# n = gets.to_i

# t = n
# num = 0

# while t > 0 do
#     num += t % 10
#     t /= 10
# end

# puts n % num == 0 ? "Yes" : "No"