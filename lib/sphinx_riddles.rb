class Riddle
  def initialize (question, answer)
    @question = question
    @answer = answer
  end

  def answer_checker
    if (@question == @answer)
      "Your answer is correct"
    else
      "Your answer is wrong"
    end
  end
end
