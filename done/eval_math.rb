## Evalute an arithmetic expression, bearing in mind order of operations
#  ex:   eval_math("1 + 10 / 5 + 2 * 4") # 11

def eval_math(string)
  number_stack = []
  operator_stack = []
  tokens = string.split(" ")
  tokens.each_with_index do |n, i|
    if n == "*" 
      number_stack << number_stack.pop.to_i * tokens[i+1].to_i
      tokens.delete_at(i+1)
    elsif n == "/" 
      number_stack << number_stack.pop.to_i / tokens[i+1].to_i
      tokens.delete_at(i+1)
    elsif ['+','-'].include? n
      operator_stack << n
    else
      number_stack << n
    end
    puts "evaling n: #{n}, number_stack #{number_stack} operator_stack #{operator_stack}"
  end
  result = 0
  operator_stack.each do |o|
    if o == '+'
      number_stack[0] = number_stack.first.to_i + number_stack.delete_at(1).to_i
    end
    if o ==  '-'
      number_stack[0] = number_stack.first.to_i - number_stack.delete_at(1).to_i
    end
  end

  return number_stack[0]

end


puts eval_math("100 - 1 + 10 / 5 + 2 * 4 - 2" ) # should be 11
