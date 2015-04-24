#
# class String
#   define_method(:word_freq) do |inString|
#     key_word = self.downcase()
#     word_count = 0
#     output = ""
#     if key_word == "" || inString == ""
#       output = "Either no key, or no string was found"
#     else
#       input_string = inString
#
#       string_array = input_string.split()
#       word_count = 0
#       string_array.each() do |index|
#         if key_word == index.downcase()
#           word_count = word_count.+(1)
#         end
#       end
#       if word_count == 0
#         output = "No instances of your key word were found"
#       else
#         output = output.concat("#{word_count}")
#       end
#     end
#     output
#   end
# end

#
# class String
#   define_method(:word_freq) do |inString|
#     key_word = self.downcase()
#     word_count = 0
#     output = ""
#     if key_word == "" || inString == ""
#       output = "Either no key, or no string was found"
#     else
#       key_array = key_word.split("")
#       input_array = inString.downcase().split("")
#       input_array.each() do |current|
#
#         FIGURE OUT NOTATION!!!
#         # element = input_aray.index(current)
#         # temp_array = input_array[(index..(index.+(key_array.length.-(1)))]
#
#
#         if temp_array == key_array
#           word_count = word_count.+(1)
#         end
#       end
#       if word_count == 0
#         output = "No instances of your key were found"
#       else
#         output = output.concat("#{word_count}")
#       end
#     end
#     output
#   end
# end


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
