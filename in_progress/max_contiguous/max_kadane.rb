def max(array)
  max_ending_here = max_so_far = 0
  array.each do |a|
    max_ending_here= [0, max_ending_here + a].max
    max_so_far = [max_so_far, max_ending_here].max
  end
  max_so_far
end


puts max([-1, 5, 6, -2, 20, -50, 4])
