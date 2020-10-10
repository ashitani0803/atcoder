s = gets.strip.split("").map(&:to_s).sort

("a".."z").each do |str|
    if !s.include?(str)
        puts str
        break
    elsif str == "z" && s.include?(str)
        puts "None"
        break
    end
end