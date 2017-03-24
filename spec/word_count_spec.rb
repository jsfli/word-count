require('rspec')
require('word_count')
require('pry')

describe ('String') do



  it("check how frequently a word appears in a given string input") do
      string_input="hello!"
      word_input="hello"
    expect(string_input.word_count(word_input)).to(eq(1))
  end

  it("check how frequently a word appears in a given string input") do
      string_input="hello!"
      word_input="hello"
    expect(string_input.word_count(word_input)).to(eq(1))
  end

  it("check how frequently a word appears in a given string input") do
      string_input="If Peter Piper picked a peck of pickled peppers, where’s the peck of pickled peppers Peter Piper picked?"
      word_input="peck"
    expect(string_input.word_count(word_input)).to(eq(2))
  end

  it("check how frequently a word or partial word appears in a given string input") do
      string_input="hello! hello string input"
      word_input="hello"
    expect(string_input.word_count_partial(word_input)).to(eq(2))
  end

  it("check how frequently a word or partial word appears in a given string input") do
      string_input="hello hello1. hello2, helloo3, hellooo4, hello5 hello!6!"
      word_input="hello"
    expect(string_input.word_count_partial(word_input)).to(eq(7))
  end

  it("check how frequently a word or partial word appears in a given string input") do
      string_input="word1 word2 word3 word word5 wor6d"
      word_input="word"
    expect(string_input.word_count_partial(word_input)).to(eq(5))
  end

  it("check how frequently a word or partial word appears in a given string input") do
      string_input="word"
      word_input="word"
    expect(string_input.word_count_partial(word_input)).to(eq(1))
  end

  it("check how frequently a word or partial word appears in a given string input") do
      string_input="I’m taking my cat on a walk through the catacombs"
      word_input="cat"
    expect(string_input.word_count_partial(word_input)).to(eq(2))
  end

end
