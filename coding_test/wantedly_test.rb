# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"
array = gets.strip.to_s.delete("[").chop.split(",").map(&:to_i)

def solution(a)
  # write your code in Ruby 2.2
    a.delete(a.max)
    a.delete(a.min)

    p a

    puts a.sum / a.length.to_f
end

solution(array)