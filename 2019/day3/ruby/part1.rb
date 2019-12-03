directives = File.read('../input.txt').split("\n")

line_1_directives = directives[0].split(',')
line_2_directives = directives[1].split(',')

x1 = x2 = y1 =  y2 = 0

def coordinates(input, x, y)
  input.inject([]) do |arr, item|
    direction = item[0]
    value = item[1, (item.length - 1)].to_i
    
    value.times do |v|
      case direction
      when "R"
        x += 1
      when "L"
        x -= 1
      when "D"
        y -= 1
      when "U"
        y += 1
      end
  
      arr << [x, y] 
    end
  
    arr  
  end
end

line_1_coordinates = coordinates(line_1_directives, x1, y1)
line_2_coordinates = coordinates(line_2_directives, x2, y2)

intersection = line_1_coordinates & line_2_coordinates

p intersection.map { |c| c[0].abs + c[1].abs }.min
