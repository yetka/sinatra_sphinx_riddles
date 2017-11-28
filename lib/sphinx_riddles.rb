class Riddle
  def initialize (question, answer)
    @question = question
    @answer = answer
  end

  def answer_checker
    if (@question == "When I am young, I go on four legs, then I go on two legs, then I go on three legs, and then I die.")
      if (@answer == "human")
        "Your answer is correct"
      else
        "Your answer is wrong"
      end


    elsif (@question == "Large as a mountain, small as a pea, Endlessly swimming in a waterless sea.")
      if (@answer == "asteroids")
        "Your answer is correct"
      else
        "Your answer is wrong"
      end

    elsif (@question == "To you, rude would I never be, Though I flag my tongue for all to see.")
      if (@answer == "dog")
        "Your answer is correct"
      else
        "Your answer is wrong"
      end
    end

  end

  # def random_riddle
  #   questions = ["When I am young, I go on four legs, then I go on two legs, then I go on three legs, and then I die.", "Large as a mountain, small as a pea, Endlessly swimming in a waterless sea.","To you, rude would I never be, Though I flag my tongue for all to see."]
  #   @@question = questions[rand(0..2)]
  # end

end
