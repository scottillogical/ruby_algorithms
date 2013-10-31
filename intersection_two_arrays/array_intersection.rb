def find_intersection(a1, a2)

end


a1 = [7, 10, 2, 44, 8]
a2 = [15, 44, 37, 60, 21, 7, 2]

puts "result is: #{find_intersection(a1, a2)} "



def mergesort(list)
  return list if list.size <= 1
  mid = list.size / 2
  left  = list[0, mid]
  right = list[mid, list.size-mid]
  puts "dividing #{left} and #{right}"
  merge(mergesort(left), mergesort(right))
end

def merge(left, right)
  puts "merging #{left} and #{right}"
  sorted = []
  until left.empty? or right.empty?
    if left.first <= right.first
      sorted << left.shift
    else
      sorted << right.shift
    end
  end
  sorted.concat(left).concat(right)
end

a = [7, 1, 10, 50, 100, 20, 1, 2, 8, 100, 40, 234, 12321, 6, 7]
puts "running mergesort on #{a} result #{mergesort(a)}"
