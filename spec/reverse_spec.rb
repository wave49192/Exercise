require './reverse.rb'

RSpec.describe 'reverse' do
  it "should return reversed string" do
    expect(reverse('hello')).to eq('olleh')
    expect(reverse('world')).to eq('dlrow')
  end
  it "should raise error when string is nil" do
    expect {reverse(nil)}.to raise_error(ArgumentError,"Word cannot be nil")
  end
end
