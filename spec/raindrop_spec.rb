require './raindrop.rb'

RSpec.describe "raindrop" do
  it 'should return pling when input is divisible by 3' do
    expect(raindrop(6)).to eq('pling')
  end
  it 'should return plang when input is divisible by 5' do
    expect(raindrop(10)).to eq('plang')
  end
  it 'should return plong when input is divisible by 7' do
    expect(raindrop(14)).to eq('plong')
  end
  it 'returns "plingplang" for when input  both 3 and 5' do
    expect(raindrop(15)).to eq("plingplang")
  end
  it 'returns "plingplong" for when input  both 3 and 5' do
    expect(raindrop(21)).to eq("plingplong")
  end
  it 'returns an error message for non-integer input' do
    expect(raindrop("d")).to eq("Error: Input must be an integer.")
  end
end
