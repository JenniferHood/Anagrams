require('sinatra')
require('sinatra/reloader')
require('./lib/anagram')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/anagram') do #added extra params.fetch to method below to pull words from index.
  @result = (params.fetch('main_word')).check_anagram(params.fetch('words_to_check'))
  erb(:anagram)
end
