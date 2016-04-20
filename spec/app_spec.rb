require 'app'

describe App do
  subject(:app) { described_class.new }

  it { is_expected.to respond_to :split_string }

  describe '#split_string' do
    it 'accepts a string as an argument' do
      string = 'testing'
      expect { app.split_string(string) }.not_to raise_error
    end

    it 'splits the string into an array and stores it' do
      string = 'testing'
      app.split_string(string)
      expect(app.string_array).to eq(string.split(''))
    end
  end

  xdescribe '#letter_count' do
    it 'counts each letter' do
      expect(app.letter_count).to
    end
  end
end
