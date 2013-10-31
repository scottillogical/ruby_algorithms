require 'debugger'
require 'matrix'
def spiral(height, width, start_row, start_col) 
  @results = []
  i = 0
  m = Matrix.build(height, width) do |row,  col|
    i+=1
  end
  start_row = x = start_row-1 
  start_col = y = start_col -1 
  distance = 1
  @max_length = m.row_size * m.column_size
  @results << m[x, y]

  def store_result(m, x, y)
    if @results.length < @max_length and m[x, y] and x >= 0 and y >= 0
      @results << m[x, y]
      puts "storing x: #{x}, y: #{y} value: #{m[x, y]}"
    end
  end

  until(@results.length == @max_length) do 
    puts "go up"
    # go up
    until(x==(start_row - distance)) 
      x -= 1
      store_result(m, x, y)
    end

    puts "go left"
    # go left
    until(y==(start_col - distance)) 
      y -= 1
      store_result(m, x, y)
    end

    # go down
    puts "go down"
    until(x==(start_row + distance)) 
      x += 1
      store_result(m, x, y)
    end

    # go right"
    puts "go right"
    until(y==(start_col + distance)) 
      y += 1
      store_result(m, x, y)
    end
    distance+=1
  end
  @results
end


