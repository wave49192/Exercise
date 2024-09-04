RSpec.describe '#series' do
  context 'valid digit' do
    it 'returns full number' do
      expect(series(123_456, 6)).to eq(['123456'])
    end

    it 'returns subseries' do
      expect(series(2342, 3)).to eq(%w[234 342])
    end

    it 'handles multiple groups' do
      expect(series(987_654_321, 4)).to eq(%w[9876 8765 7654 6543 5432 4321])
    end
  end

  context 'invalid digit' do
    it 'errors if too large' do
      expect { series(123_456, 7) }.to raise_error(ArgumentError, 'Digit is greater than the length of the number')
    end

    it 'errors if non-positive' do
      expect { series(123_456, 0) }.to raise_error(ArgumentError, 'Number of digits must be greater than 0')
      expect { series(2342, -3) }.to raise_error(ArgumentError, 'Number of digits must be greater than 0')
    end
  end
end
