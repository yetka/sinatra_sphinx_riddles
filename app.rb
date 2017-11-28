require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/sphinx_riddles')
require('pry')

get('/') do
  @@question = "When I am young, I go on four legs, then I go on two legs, then I go on three legs, and then I die."
  erb(:question1)
end

post('/output1') do
  @answer = params.fetch("answer")
  new_riddle = Riddle.new(@@question, @answer)
  @result = new_riddle.answer_checker()
  if (@result == "Your answer is correct")
    @next_page = "question2"
    erb(:success)
  else
    erb(:failure)
  end
end

get('/question2') do
  @@question = "Large as a mountain, small as a pea, Endlessly swimming in a waterless sea."
  @next_page = "question3"
  erb(:question2)
end

post('/output2') do
  @answer = params.fetch("answer")
  new_riddle = Riddle.new(@@question, @answer)
  @result = new_riddle.answer_checker()
  if (@result == "Your answer is correct")
    @next_page = "question3"
    erb(:success)
  else
    erb(:failure)
  end
end

get('/question3') do
  @@question = "To you, rude would I never be, Though I flag my tongue for all to see."
  erb(:question3)
end

post('/output3') do
  @answer = params.fetch("answer")
  new_riddle = Riddle.new(@@question, @answer)
  @result = new_riddle.answer_checker()
  if (@result == "Your answer is correct")
    erb(:final)
  else
    erb(:failure)
  end
end
