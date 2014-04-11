require "../../lib/w1d1/array_basics.rb"

# Array exercises.

# Create a monkey patched Array method, Array#my_uniq, that takes an array,
# then returns a new array containing that array's unique elements in the order
# that they appear.

describe Array, "#my_uniq" do
  test_array = [1,2,1,2,3,4,3,4]
  it "returns a new array of unique elements" do
    expect(test_array.my_uniq).to eq([1,2,3,4])
  end

  it "does not modify the original array" do
    test_array.my_uniq
    expect(test_array).to eq([1,2,1,2,3,4,3,4])
  end
end

# Create a monkey patched Array method, Array#two_sum, that returns an array of
# all pairs of indices in the input array whose values sum to zero.

# Make sure that the pairs are ordered "dictionary-wise" such that the first and
# smallest left, then right indices come first.

describe Array, "#two_sum" do
  test_array = [-3,-2,-1,0,1,2,3]
  it "returns an array with zero-sum index pairs" do
    expect(test_array.two_sum).to include([0, 6])
    expect(test_array.two_sum).to include([1, 5])
    expect(test_array.two_sum).to include([2, 4])
  end

  it "does not return the same index twice" do
    expect(test_array.two_sum).to_not include([3,3])
  end

  it "returns pairs in ascending \"dictionary\" order" do
    expect(test_array.two_sum).to eq([
      [0,6],
      [1,5],
      [2,4]
    ])
  end
  
  it "does not repeat index pairs" do
    expect(test_array.two_sum).to eq([
      [0,6],
      [1,5],
      [2,4]
    ])
  end

  it "returns an empty array if no pairs sum to zero" do
  end

  it "does not modify the original array" do
    test_array.two_sum
    expect(test_array).to eq([-3,-2,-1,0,1,2,3])
  end
end

# Create a monkey patched Array method, Array#my_transpose, that takes a square
# or rectangular array and returns an array with rows and columns swapped with
# respect to the input array.

describe Array, "#my_transpose" do

  square_test_array = [
    [1,2,3],
    [4,5,6],
    [7,8,9]
  ]

  vertical_test_array = [
    [1,2,3],
    [4,5,6],
    [7,8,9],
    [10,11,12]
  ]

  horizontal_test_array = [
    [1,2,3,4],
    [5,6,7,8],
    [9,10,11,12]
  ]

  it "swaps rows and columns for square arrays" do
    expect(square_test_array.my_transpose).to eq([
      [1,4,7],
      [2,5,8],
      [3,6,9]
    ])
  end

  it "swaps rectangular arrays" do
    expect(vertical_test_array.my_transpose).to eq([
      [1,4,7,10],
      [2,5,8,11],
      [3,6,9,12]
    ])
    expect(horizontal_test_array.my_transpose).to eq([
      [1,5,9],
      [2,6,10],
      [3,7,11],
      [4,8,12]
    ])
  end

  it "does not modify the original array" do
    vertical_test_array.my_transpose
    horizontal_test_array.my_transpose
    square_test_array.my_transpose

    expect(vertical_test_array).to eq([
      [1,2,3],
      [4,5,6],
      [7,8,9],
      [10,11,12]
    ])

    expect(horizontal_test_array).to eq([
      [1,2,3,4],
      [5,6,7,8],
      [9,10,11,12]
    ])

    expect(square_test_array).to eq([
      [1,2,3],
      [4,5,6],
      [7,8,9]
    ])
  end
end