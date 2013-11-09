
# this version is desined to sort only the rightmost character
def insertion_sort(a) 
  a.each_with_index do |outer_char, i|
    next if i == 0
    j = i 
    a[0..i-1].reverse.each do |inner_char|
      j = j -1
      if a[i] < a[j]

      else
        break
      end
      puts a.join(" ")
    end
  end
end

insertion_sort([2,4,6,8,3])
