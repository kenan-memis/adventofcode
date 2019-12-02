integers = File.read('../input.txt').split(',').map(&:to_i)

integers[1] = 12
integers[2] = 2

(0..integers.length - 1).step(4) do |index|
  i = integers[index]
 
  break if i == 99

  a_index = integers[index + 1]
  b_index = integers[index + 2]
  c_index = integers[index + 3]

  if i == 1
    integers[c_index] = integers[a_index] + integers[b_index] 
  elsif i == 2
    integers[c_index] = integers[a_index] * integers[b_index] 
  else
    next
  end
end

p integers.delete_if { |i| i.nil? }
