require "./base.rb"

RSpec.describe "base_converter" do
  it 'converts base 10 42 to base 2' do
    expect(base_converter(10, '42', 2)).to eq('101010')
  end

  it 'converts base 2 101010 to base 10' do
    expect(base_converter(2, '101010', 10)).to eq('42')
  end

  it 'converts base 3  1120 to base 4' do
    expect(base_converter(3, '1120', 4)).to eq('222')
  end

  it 'converts base 16 to base 10' do
    expect(base_converter(16, 'A', 10)).to eq('10')
  end

  it 'converts base 10 to base 16' do
    expect(base_converter(10, '255', 16)).to eq('FF')
  end

  it 'converts base 10 that is 0 to any base' do
    expect(base_converter(10, '0', 2)).to eq('0')
    expect(base_converter(10, '0', 16)).to eq('0')
  end
end

