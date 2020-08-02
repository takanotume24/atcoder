require "math"
n,d = read_line.split.map(&.to_i)

count = 0 
n.times do |i|
    x,y = read_line.split.map(&.to_i64)
    dist = Math.sqrt(x**2 + y**2)
    if dist <= d
        count += 1
    end
end

puts count