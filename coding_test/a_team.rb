s = gets.strip.upcase.split("").map(&:to_s)

def main(lines)
  arr = ["b", "w"]
  # このコードは標準入力と標準出力を用いたサンプルコードです。
  # このコードは好きなように編集・削除してもらって構いません。
  # ---
  # This is a sample code to use stdin and stdout.
  # Edit and remove this code as you like.

    (1..(lines.length)).each do |i|
        if i.odd? && lines[i - 1] == "R"
            arr.push("b")
            l = arr.length
            until arr.index("w") < l - 2 && arr[l - 2] == "w" do
                arr[l - 2] = "b"
                l -= 1
            end
        elsif i.odd? && lines[i - 1] == "L"
            arr.unshift("w")
            j = 1
            until arr[-1] == "w" && arr[j] == "b" do
                arr[j] == "w"
                j += 1
            end
        elsif lines[i -1] == "R"
            arr.push("w")
            l = arr.length
            until arr.index("w") < l - 2 && arr[l - 2] == "b" do
                arr[l - 2] = "w"
                l -= 1
            end
        else
            arr.unshift("b")
            j = 1
            until arr[-1] == "b" && arr[j] == "w" do
                arr[j] == "b"
                j += 1
            end
        end
    end
    p  arr.count("b").count + " " + arr.count("w")
end

main(s)