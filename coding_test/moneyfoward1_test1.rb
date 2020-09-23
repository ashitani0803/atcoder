item, file = gets.strip.split.map(&:to_s)

def main(item, file)
    if item == "dropouts"
        array1 = []
        File.open("#{file}", "rt") do |f|
            f.each_line do |line|
                arr = line.strip.split(",")
                if arr[0] == "Mathematics"  
                    next
                else
                    head = arr.slice!(0)
                    arr1 = arr.map{|n| n.to_i}
                    p arr1
                    array1 << (arr1[0] <= 49 && arr[1] <= 49) ? head : nil
                end 
            end
        end
        puts array1
    else

    end
    

end

main(item, file)