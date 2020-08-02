require "big"

k = read_line.to_i

done = false
i = 0


if k % 2 == 0|| k % 5 == 0
    puts -1
    exit
end

while !done
    i += 1
    if BigInt.new("7"*i) % k == 0
        done = true
    end
end

puts i