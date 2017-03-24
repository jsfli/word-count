require('rspec')
require('word_count')
require('pry')

describe ('String') do

  it("check how frequently a word appears in a given string input") do
      string_input="hello! string input"
      word_input="hello"
    expect(string_input.word_count(word_input)).to(eq(1))
  end

end
