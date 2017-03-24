require('pry')

class String

  define_method(:word_count) do |word_input|

    word_count=0
    string_input = self
    #clean out all the other characters except alphabets and space
    string_input_cleaned = string_input.downcase().delete! "^A-Za-z "
    string_input_array = string_input_cleaned.split(" ")

    string_input_array.each do |element|
        word_count+=1 if word_input == element
      end

    return word_count
  end


  define_method(:word_count_partial) do |word_input|
    string_input = self

    #split by word_input and push it into a new array and

    word_count_array = string_input.split(word_input)

    #count and return the lenth of the array

    return word_count_array.length() - 1

  end #end of word_count method
end #end of String
