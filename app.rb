require('sinatra')
require('sinatra/reloader')
require('pry')
require('./lib/word_count')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/results') do
  @input = params.fetch('input')
  @sentence = params.fetch('sentence')
  @results = @input.word_count(@sentence)
  erb(:results)

end
