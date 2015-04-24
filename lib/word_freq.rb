
class String
  define_method(:word_freq) do |inString|
    key_word = self.downcase()
    word_count = 0
    output = ""
    if key_word == "" || inString == ""
      output = "Either no key, or no string was found"
    else
      input_string = inString

      string_array = input_string.split()
      word_count = 0
      string_array.each() do |index|
        if key_word == index.downcase()
          word_count = word_count.+(1)
        end
      end
      if word_count == 0
        output = "No instances of your key word were found"
      else
        output = output.concat("#{word_count}")
      end
    end
    output
  end
end
