require "../../lib/w1d1/array_basics.rb"

# Array exercises.

# Create a monkey patched Array method that takes an array, then returns a new
# array containing that array's unique elements in the order that they appear.

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