require('pry')

class String
  define_method(:word_count) do |word_input|
    string_input = self
    word_count_array=string_input.split(word_input)
    return word_count_array.length() - 1
  end #end of word_count method
end #end of String
