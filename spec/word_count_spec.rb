require('rspec')
require('word_count')
require('pry')

describe ('String') do

  it("check how frequently a word appears in a given string input") do
      string_input="hello! string input"
      word_input="hello"
    expect(string_input.word_count(word_input)).to(eq(1))
  end

  it("check how frequently a word appears in a given string input") do
      string_input="hello hello1. hello2, helloo3, hellooo4, hello5 hello!6!"
      word_input="hello"
    expect(string_input.word_count(word_input)).to(eq(7))
  end

end
