require 'debugger'

def reverse_string(string)
  half_length = string.length / 2
  half_length.times do |i|
    #string[i], string[-i-1] = string[-i-1], string[i]
    swap_c = string[-i-1]
    string[-i-1] = string[i]
    string[i] = swap_c
  end
  string
end

puts reverse_string("scott")
