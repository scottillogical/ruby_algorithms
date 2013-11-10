#  Write an algorithm that accepts a string and returns all permutations of the string
#  ex:  permutate('ABC') 
#       #['ABC', 'BCA', 'BAC', 'CAB', 'CBA']


def permute(string)
  puts "starting permute on #{string}"
  return string if string.length == 0
  return string if string.length == 1
  return [string, string.reverse] if string.length == 2
  permutations = []
  first = string[0]
  rest = string[1..string.length]
  rest_perms = permute(rest)  # get permutations of the substring
  rest_perms.each do |perm|
    perm.length.times do |ri| # swap the non-permuted remaining char in for all permutation marbles
      puts "inserting first: #{first}  into a perm: #{perm} result: #{perm.clone.insert(ri, first)}"
      permutations << perm.clone.insert(ri, first)
    end
  end
  return permutations
end
