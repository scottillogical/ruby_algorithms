

def fib(n)
  if n == 0
    0
  elsif n== 1
    1 
  else
    fib(n - 1) + n 
  end
end
puts "calculating fib(10) should be 55, is  :#{fib(10)}"
