require('sinatra')
require('sinatra/reloader')
require('./lib/freq')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/frequency') do
  @word_to_count = params.fetch('word_to_count')
  @number_of_times = params.fetch('word_to_count').freq(params.fetch('given_sentence'))
  @given_sentence = params.fetch('given_sentence')
  erb(:frequency)
end
