require('rspec')
require('index')

describe(Riddle) do
  describe("#result")do
    it("returns true for right answers")do
      riddles = Riddle.new("mountain", "wind", "dark", "fish", "time")
      expect(riddles.result()).to(eq("true true true true true"))
    end
  end
  describe("#result")do
    it("returns false for wrong answers")do
      riddles = Riddle.new("tree", "air", "light", "knight", "God")
      expect(riddles.result()).to(eq("false false false false false"))
    end
  end

end
