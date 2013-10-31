def fib(n)
  prev = 0 
  curr = 1 
  (n - 1).times do 
    curr, prev = prev+curr, curr 
  end
  curr
end

#puts fib 50


