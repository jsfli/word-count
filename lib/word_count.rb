require('pry')

class String

  define_method(:word_count) do |word_input|
    match_count=0
    string_input = self.clone
    #clean out all the other characters except alphabets and space
    string_input_cleaned = string_input.downcase().delete "^a-z "
    string_input_array = string_input_cleaned.split(" ")

    string_input_array.each do |element|
        match_count+=1 if word_input == element
    end

    return match_count
  end


  define_method(:word_count_partial) do |word_input|
    match_count=0
    string_input = self.clone
    word_input_length = word_input.length()

    #loop until string_input is nothing
    until string_input == ""

      #slice first section of string and compare with word input
      if word_input == string_input.slice(0, word_input_length)
        match_count+=1

        #permanently slicing the beginning section of the string match the word input length
        string_input.slice!(0)
      else

        #permanently slicing the beginning section of the string match the word input length
        string_input.slice!(0)
      end

    end
    return match_count
  end #end of word_count method
end #end of String
