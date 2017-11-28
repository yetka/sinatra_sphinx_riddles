require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/sphinx_riddles')
require('pry')

get('/') do
  @@question = "When I am young, I go on four legs, then I go on two legs, then I go on three legs, and then I die."
  erb(:question1)
end

post('/output') do
  @answer = params.fetch("answer")
  new_riddle = Riddle.new(@@question, @answer)
  @result = new_riddle.answer_checker()
  if (@result == "Your answer is correct")
    erb(:success)
  else
    erb(:failure)
  end
end
