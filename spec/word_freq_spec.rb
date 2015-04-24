require('rspec')
require('word_freq')

describe('String#word_freq') do
  it('will take user input for a word and check how often it appears in a user defined string') do
    expect(("balloon").word_freq("I took a balloon into a hot air balloon")).to(eq(2))
  end
end
