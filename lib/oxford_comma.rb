require "pry"

def oxford_comma(array)
    new_array = []
    if array.length == 1
        return array.join
    elsif array.length == 2
        return "#{array[0]} and #{array[1]}"
    elsif array.length == 3
        return "#{array[0]}, #{array[1]}, and #{array[2]}"
    else
        array.each do |word|
            # binding.pry
            new_array << "#{word}, "
        end
    end
    new_array[-2] << "and "
    answer = new_array.join
    answer.pop
end