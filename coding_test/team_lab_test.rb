# 問題1
ans = 0
(1..100).each do |i|
    ans += i ** 4
end

puts ans


# 問題2
arr = [1, 0, 5]

26.times do |i|
    num = arr[i] + arr[i + 1] + arr[i + 2]
    arr << num
end

puts arr[28]

# 問題3
n = gets.to_i

num = 0


for i in 1..n do
    if num < 15
        num += Rational(1, i)
        puts num
    else
        puts i
        break
    end
end
 
puts num.to_f
