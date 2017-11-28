require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/sphinx_riddles')
require('pry')

get('/') do
  erb(:input)
end

post('/output') do
  @question = params.fetch("question")
  @answer = params.fetch("answer")
  new_riddle = Riddle.new(@question, @answer)
  @result = new_riddle.answer_checker()
  erb(:output)
end
