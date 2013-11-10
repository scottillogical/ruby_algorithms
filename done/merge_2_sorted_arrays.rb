# Write a function that accepts 2 sorted arrays and merges them into one sorted array.


def merge(left, right)
  sorted = []
  until(left.empty? or right.empty?)
    if left.first < right.first
      sorted << left.shift
    else
      sorted << right.shift
    end
  end
  unsorted = left.empty? ? right : left # sort the left over array
  sorted.concat(unsorted)
  sorted
end



left = [1, 5, 10, 15, 120]
right = [2, 7, 9, 20, 40, 100, 101, 102]
puts "running merge on #{left} and #{right}"
puts "result #{merge(left, right)}"
