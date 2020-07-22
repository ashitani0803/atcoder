str = gets.strip.upcase.to_s.split
p str
def solution(s)
    arr = []

    s.length.times do |i|
        if !! (s[i] =~ /^[0-9]+$/)
            arr.push(s[i].to_i)
        elsif s[i] == "POP"
            arr.slice!(-1)
        elsif s[i] == "DUP"
            same = arr[-1]
            arr.push(same)
        elsif s[i] == "+"
            plus = arr[-1] + arr[-2]
            arr.slice!(-2, 2)
            arr.push(plus)
        elsif s[i] == "-"
            minus = (arr[-1] - arr[-2]).abs
            arr.slice!(-2, 2)
            arr.push(minus)
        end
    end

    puts arr[-1]
    
end

solution(str)