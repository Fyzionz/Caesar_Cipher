

def caesar_cipher(string, number)
    string_array = string.chars.map{|letter| letter.ord}
    letter_change = string_array.map{|check| (check >= 97 && check <= 122) || (check >= 65 && check <=90)? check : check.chr}
    shift_array = letter_change.map do |x|
        if (x.is_a?(Numeric))
            x = x + number
        else
            x = x
        end
    end
    final_array = shift_array.map do |y|
        if (y.is_a?(Numeric) && y > 122)
            y = y - 26
            y.chr
        elsif (y.is_a?(Numeric))
            y.chr
        else
            y
        end
    end

    x = final_array.map{|c| c}.join('')

    puts x

end
caesarCode = caesar_cipher("Ryan B", 3)





