require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/hangman')

get('/') do
  erb(:index)
end

post('/new_word') do
  hangman = Hangman.new(params.fetch('word'))
  @length = hangman.word().length
  @letters = hangman.letters()
  erb(:output)
end
