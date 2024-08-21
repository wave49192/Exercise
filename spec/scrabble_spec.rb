require './scrabble.rb'

RSpec.describe "scrabble" do
  it "should return score correctly for Cabbage" do
    expect(scrabble('Cabbage')).to eq(14)
  end
  it "should return score correctly for Mango" do
    expect(scrabble('Mango')).to eq(8)
  end
  it "should return score correctly for all lower case" do
    expect(scrabble('mango')).to eq(8)
  end
  it 'returns 0 for an empty string' do
    expect(scrabble("")).to eq(0)
  end
  it 'ignores non-alphabet characters' do
    expect(scrabble("123")).to eq(0)
    expect(scrabble("Hello, World!")).to eq(17) # H=4, e=1, l=1, o=1, W=4, r=1, d=2
  end
  it 'raises an ArgumentError if input is not a string' do
    expect { scrabble(1) }.to raise_error(ArgumentError, "Input must be a string")
    expect { scrabble([]) }.to raise_error(ArgumentError, "Input must be a string")
    expect { scrabble(nil) }.to raise_error(ArgumentError, "Input must be a string")
  end
end
