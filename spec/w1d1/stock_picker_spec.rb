require "../../lib/w1d1/stock_picker.rb"

# Write a method that takes an array of stock prices (prices on days 0, 1, ...),
# and outputs the most profitable pair of days on which to first buy the stock
# and then sell the stock.

describe "stock_picker" do
  test_data = [100, 20, 25, 37, 57, 43, 64, 59, 77, 52, 21, 87]

  it "does not return a sell date before a buy date" do
    expect(stock_picker(test_data)).to_not eq([0,1])
  end

  it "returns an empty array if there is no profitable pair of days" do
    expect(stock_picker([3,3,3])).to eq([])
  end

  it "returns the most profitable pair of days" do
    expect(stock_picker(test_data)).to eq([1,11])
  end
end