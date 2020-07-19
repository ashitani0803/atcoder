n = gets.to_i
s = gets.strip.upcase.split("").map(&:to_s)

def solution(s)
  vowels = ["A", "E", "I", "O", "U"]
  consonants = ("A".."Z").to_a - vowels

  count_c = 0
  count_v = 0

  s.length.times do |i|
    if vowels.include?(s[i])
      count_v += 1
    else
      count_c += 1
    end
  end

  p s -consonants

  if count_c == count_v || (count_c - count_v) == 1
    cv = (s - consonants).permutation(count_v).length
    cc = (s - vowels).permutation(count_c).length 
    return cv * cc
  else
    return 0
  end
end

solution(s)