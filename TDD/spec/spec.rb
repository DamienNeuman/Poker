require 'tdd'
#require 'rspec'

describe '#my_unique' do
  it "returns unique variables in order of original array" do
    expect([1,2,2,3].my_unique).to eq([1,2,3])
  end
end

describe '#two_sum' do
  it 'sums any two variables and returns if it equals to 0' do
    expect([1, 3, -1, 4, -3].two_sum).to eq([[0, 2], [1, 4]])
  end
end

describe '#my_transpose' do
  it 'converts rows to columns' do
    expect([[0, 1, 2], [3, 4, 5], [6, 7, 8]].my_transpose).to eq([[0, 3, 6], [1, 4, 7], [2, 5, 8]])
  end
end

describe '#stock_picker' do
  it 'selects the largest margin stock price' do
    expect([1,4,9,7,2].stock_picker).to eq([0,2])
  end
end 
