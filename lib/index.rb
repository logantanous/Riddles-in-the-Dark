require('rspec')
require('pry')

class Riddle
  def initialize(question_one, question_two, question_three, question_four, question_five)
    @question_one = question_one
    @question_two = question_two
    @question_three = question_three
    @question_four = question_four
    @question_five = question_five
  end

  def result
    one_result, two_result, three_result, four_result, five_result = false, false, false, false, false
    if @question_one == "mountain"
      one_result = true
    end
    if @question_two == "wind"
      two_result = true
    end
    if @question_three == "dark"
      three_result = true
    end
    if @question_four == "fish"
      four_result = true
    end
    if @question_five == "time"
      five_result = true
    end
    "#{one_result} #{two_result} #{three_result} #{four_result} #{five_result}"
  end #result

end # Riddle
