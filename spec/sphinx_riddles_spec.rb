require('rspec')
require('sphinx_riddles')

describe(Riddle) do
  describe("answer_checker") do

    it("returns true if the answer is human") do
      new_riddle = Riddle.new("When I am young, I go on four legs, then I go on two legs, then I go on three legs, and then I die.","human")
      expect(new_riddle.answer_checker()).to(eq("Your answer is correct"))
    end

    it("returns true if the answer is asteroids") do
      new_riddle = Riddle.new("Large as a mountain, small as a pea, Endlessly swimming in a waterless sea.","asteroids")
      expect(new_riddle.answer_checker()).to(eq("Your answer is correct"))
    end

    it("returns true if the answer is dog") do
      new_riddle = Riddle.new("To you, rude would I never be, Though I flag my tongue for all to see.","dog")
      expect(new_riddle.answer_checker()).to(eq("Your answer is correct"))
    end

  end
end
