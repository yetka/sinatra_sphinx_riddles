require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/sphinx_riddles')
require('pry')

get('/') do
  questions = ["When I am young, I go on four legs, then I go on two legs, then I go on three legs, and then I die.", "Large as a mountain, small as a pea, Endlessly swimming in a waterless sea.","To you, rude would I never be, Though I flag my tongue for all to see."]
  @@question = questions[rand(0..2)]

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
