integers = File.read('../input.txt').split(',').map(&:to_i)

list = (0..99).to_a.product((0..99).to_a)

list.each do |arr|
  copy_integers = integers.dup
  copy_integers[1] = arr[0]
  copy_integers[2] = arr[1]

  (0..integers.length - 1).step(4) do |index|
    i = copy_integers[index]

    break if i == 99
  
    a_index = copy_integers[index + 1]
    b_index = copy_integers[index + 2]
    c_index = copy_integers[index + 3]
  
    if i == 1
      copy_integers[c_index] = copy_integers[a_index] + copy_integers[b_index] 
    elsif i == 2
      copy_integers[c_index] = copy_integers[a_index] * copy_integers[b_index] 
    else
      next
    end
  end

  if copy_integers[0] == 19690720
    p (100 * arr[0]) + arr[1]
    break
  end 
end
