require('rspec')
require('word_freq')

describe('String#word_freq') do
  it('will take user input for a word and check how often it appears in a user defined string') do
    expect(("balloon").word_freq("I took a balloon into a hot air balloon")).to(eq("2"))
  end

  it('will check if no instances of the key were found') do
    expect(("tigers").word_freq("I saw penguins at the zoo")).to(eq("0"))
  end

  it('will check if any input was found for the key word') do
    expect(("").word_freq("Try again")).to(eq("Either no key, or no string was found"))
  end

  it('will check if any input was for the the string') do
    expect(("bears").word_freq("")).to(eq("Either no key, or no string was found"))
  end
end
