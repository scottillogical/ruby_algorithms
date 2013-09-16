def is_anagram?(one, two)
  one.chars.sort == two.chars.sort
end

puts "this should be false: #{is_anagram?('one', 'two')}"
puts "this should be true: #{is_anagram?('one', 'eno')}"
