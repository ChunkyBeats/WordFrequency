
class String
  define_method(:word_freq) do |inString|
    key_word = self
    word_count = 0
    if key_word == "" || inString == ""
      word_count = "Either no key, or no string was found"
    else
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
    end
    word_count
  end
end
