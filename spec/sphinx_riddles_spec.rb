require('rspec')
require('sphinx_riddles')

describe(Riddle) do
  describe("answer_checker") do
    it("returns false if the answer is tree") do
      new_riddle = Riddle.new("When I am young, I go on four legs, then I go on two legs, then I go on three legs, and then I die.","tree")
      expect(new_riddle.answer_checker()).to(eq("Your answer is wrong"))
    end

    it("returns true if the answer is human") do
      new_riddle = Riddle.new("When I am young, I go on four legs, then I go on two legs, then I go on three legs, and then I die.","human")
      expect(new_riddle.answer_checker()).to(eq("Your answer is correct"))
    end
  end
end
