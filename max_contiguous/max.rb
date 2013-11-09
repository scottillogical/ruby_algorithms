def max(array)
  max_so_far = 0
  array.each_with_index do |oa, oi|
    array[oi..array.length].each_with_index do |ia, ii|
      max_so_far = [max_so_far, ia+oa]


    end
  end
end


puts max([-1, 5, 6, -2, 20, -50, 4])
