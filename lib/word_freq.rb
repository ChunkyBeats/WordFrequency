class String
  define_method(:word_freq) do |inString|
    key_word = self.downcase()
    output = ""
    if key_word == "" || inString == ""
      output = "Either no key, or no string was found"
    else
      inString.downcase()
      result = inString.scan(key_word).length()
      output = output.concat("#{result}")
    end
    output
  end
end
