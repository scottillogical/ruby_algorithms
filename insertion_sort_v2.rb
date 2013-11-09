require 'debugger'
def insertionSort(ar)
  puts ar.join(" ")
  i = 0;
  ar.each_with_index do |unsorted_char, i|
    j = i -1

    if ar[i] > ar[j] and i > 0
      puts "#{ar[i]} is greater than #{ar[j]}, so we are skipping to the next one"
      next
    else
      while(j > 0)
        puts "comparing sorted char #{ar[j-1]} to to unsorted_char #{ar[i]}"
        if unsorted_char > ar[j-1]
          temp = ar[i]
          ar.delete_at(i) 
          ar.insert(j, temp)
        end
        j = j -1
      end
    end
    puts ar.join(" ")
  end
end

insertionSort([1,4,3,5,6,2])
#next if i == 0
#j = i
#ar[0..i-1].reverse.each do |inner_char|
#j = j -1
#if ar[i] < ar[j]
#ar[i], ar[j] = ar[j], ar[i]
#i = i -1
#puts ar.join(" ")
#else
#break
#end
#end
