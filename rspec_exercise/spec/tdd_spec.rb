require 'tdd'




describe '#my_uniq' do
  it 'deletes duplicates' do
    expect([1,2,2,4].my_uniq).to eq([1,2,4])
  end

  it 'returns original if no duplicates' do
    expect([1,2,4].my_uniq).to eq([1,2,4])
  end

end

describe '#two_sums' do
  it 'returns index of pairs that sum to zero' do
    expect([-1, 0, 2, -2, 1].two_sums).to eq([[0, 4], [2, 3]])
  end

  it 'returns no pairs if none sum to zero' do
    expect([-3,4,5].two_sums).to eq([])
  end

end


describe '#my_transpose' do
  it 'transposes a 3 x 3 matrix' do
    expect([
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]
  ].my_transpose).to eq([[0, 3, 6],[1, 4, 7],[2, 5, 8]])
  end
  it 'transposes a 2 x 2 matrix' do
    expect([[0, 1],[3, 4]].my_transpose).to eq([[0, 3],[1, 4]])
  end
end

describe 'stock_picker' do
  it 'return idx of largest profit pair' do
    expect(stock_picker([1,5,2,7,3])).to eq([0,3])
  end

  it 'does not lose profit' do
    expect(stock_picker([8,1])).to eq([])
  end
























end
