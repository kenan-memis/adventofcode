sum = 0

File.readlines('../input.txt').each do |line|
  module_fuel = []
  result = line.to_i

  loop do
    result = (result / 3 ) - 2    
    break if result < 1    
    module_fuel << result
  end

  sum += module_fuel.inject(:+)
end

puts sum
