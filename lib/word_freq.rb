# class String
#   define_method(:word_freq) do |inString|
#     key_word = self
#     input_string = inString
#
#     key_array = self.split("")
#     string_array = input_string.split()
#     word_count = 0
#     string_array.each() do |index|
#       test string_array.split("")
#       if key_array == string_
#   end
# end
#


class String
  define_method(:word_freq) do |inString|
    key_word = self
    input_string = inString

    string_array = input_string.split()
    word_count = 0
    string_array.each() do |index|
      if key_word == index
        word_count = word_count.+(1)
      end
    end
    if word_count == 0
      word_count = "No instances of your key word were found"
    end
    word_count
  end
end
