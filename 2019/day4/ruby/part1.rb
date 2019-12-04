def adjacet_duplicates_exist?(number)
  digits_array = number.digits

  digits_array.each.with_index.any? { |_elem, index| digits_array[index] == digits_array[index + 1] }
end

def last_digit_highest?(number)
  number.digits.reverse == number.digits.reverse.sort
end

array = (246515..739105).to_a

result = array.inject([]) do |result_array, num|
  if adjacet_duplicates_exist?(num) && last_digit_highest?(num)
    result_array << num 
  end
  result_array
end

p result.count