require('sinatra')
require('sinatra/reloader')
require('./lib/word_freq')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/word_frequency') do
  @word_frequency = params.fetch('key').word_freq(params.fetch('input_string'))
  erb(:word_frequency)
end
