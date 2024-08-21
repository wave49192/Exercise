require './series.rb'

RSpec.describe "series" do
  it 'should return array of correct values' do
    expect(series(123456, 6)).to eq(["123456"])
    expect(series(2342, 3)).to eq(["234", '342'])
  end

  it 'should raise error if digit is greater than the length of the number' do
    expect { series(123456, 7) }.to raise_error(ArgumentError, "Digit is greater than the length of the number")
  end

  it 'should raise error if digit less than or equal to 0' do
    expect { series(123456, 0) }.to raise_error(ArgumentError, "Number of digits must be greater than 0")
    expect { series(2342, -3) }.to raise_error(ArgumentError, "Number of digits must be greater than 0")
  end
end
