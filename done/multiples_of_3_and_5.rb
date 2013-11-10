sum = 0
i = 1
require 'debugger'
while i < 1000
  if (i % 3) == 0 or (i % 5) == 0
    puts "modulo #{i}"
    sum+= i
    puts "sum: " + sum.to_s
  end
  i+= 1
end
puts "total sum: " + sum.to_s
