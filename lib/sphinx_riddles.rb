class Riddle
  def initialize(question,answer)
    @question = question
    @answer = answer
  end

  def answer_checker
    if @question == "When I am young, I go on four legs, then I go on two legs, then I go on three legs, and then I die."
      if @answer == "human"
        "Your answer is correct"
      else
        "Your answer is wrong"
      end
    end
  end
end