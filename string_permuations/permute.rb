#  Write an algorithm that accepts a string and returns all permutations of the string
#  ex:  permutate('ABC') 
#       #['ABC', 'BCA', 'BAC', 'CAB', 'CBA']


def permute(string)
  return string if string.length == 0
  return string if string.length == 1
  return [string, string.reverse] if string.length == 2
  permutations = []

  string.length.times do |i|
    first = string[i]
    rest = string[i..string.length]
    rest.length.times do |ri|
      permutations << rest.insert(ri, first)
    end
  end
  return permutations
end
