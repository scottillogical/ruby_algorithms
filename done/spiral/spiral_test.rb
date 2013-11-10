
require 'minitest/autorun'
require './spiral'
require 'debugger'

describe "Config reader" do

  it "spirals in a square" do
    assert_equal(spiral(5, 5, 3, 3), [13, 8, 7, 12, 17, 18, 19, 14, 9, 4, 3, 2, 1, 6, 11, 16, 21, 22, 23, 24, 25, 20, 15, 10, 5])
  end

  it "spirals in a non-square rectangle" do
    assert_equal(spiral(2, 4, 1, 2), [ 2, 1, 5, 6, 7, 3, 8, 4 ])
  end
end
