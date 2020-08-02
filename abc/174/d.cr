require "math"

def get(array)
  array.each_index do |i|
    i = array.size - i - 1
    if array[i] == 'W'
      return i
    end
  end
  return nil
end

n = read_line.to_i
c = read_line.chars
c_reverse = c.reverse

count = 0

c_reverse.each_index do |i|
  if !c_reverse.join.includes? "RW"
    break
  end
  if c_reverse[i] == 'R'
    begin
      last_w = get c_reverse
      if last_w.nil?
        puts 0
        exit
      end
      c_reverse.swap(last_w, i)
      count += 1
    rescue
    end
  end
end
puts count
# puts Math.min c_reverse.count('R'), c_reverse.count('W')
