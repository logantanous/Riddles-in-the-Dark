require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/index')
require('pry')

get('/') do
  erb(:input)
end

post('/output') do
  # @question_one = params.fetch('height').to_i
  @question_one = params.fetch('question_one')
  @question_two = params.fetch('question_two')
  @question_three = params.fetch('question_three')
  @question_four = params.fetch('question_four')
  @question_five = params.fetch('question_five')

  riddles = Riddle.new(@question_one, @question_two, @question_three, @question_four, @question_five)

  @riddle_Result = riddles.result
  erb(:output)
end
