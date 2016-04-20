class App
  attr_reader :string_array

  def initialize
    @string_array = []
    @letter_hash = {}
  end

  def split_string(string)
    @string_array = string.downcase.split('')
  end

  def letter_count
    string_array.inject(Hash.new(0)) { |total, e| total[e] += 1; total }
  end
end
