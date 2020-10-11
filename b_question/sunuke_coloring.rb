w, h, n = gets.split.map(&:to_i)

array = n.times.map{ gets.split.map(&:to_i) }

start_x, start_y = 0, 0

zero = false

array.each do |a|
    case a[-1]
    when 1
        if a[0] > start_x && a[0] < w
            start_x = a[0]
        elsif a[0] >= w
            zero = true
            break
        else
            nil
        end
    when 2
        if a[0] > start_x && a[0] < w
            w = a[0]
        elsif a[0] <= start_x
            zero = true
            break
        else
            nil
        end
    when 3
        if a[1] > start_y && a[1] < h
            start_y = a[1]
        elsif a[1] >= h
            zero = true
            break
        else
            nil
        end
    when 4
        if a[1] > start_y && a[1] < h
            h = a[1]
        elsif a[1] <= start_y
            zero = true
            break
        else
            nil
        end
    end
end

puts zero == false ? (w - start_x) * (h - start_y) : 0