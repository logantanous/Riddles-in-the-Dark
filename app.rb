require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/index')
require('pry')

get('/') do
  erb(:input)
end

post('/output') do
  @height = params.fetch('height').to_i
  @width = params.fetch('height').to_i
  @length = params.fetch('length').to_i
  @distance = params.fetch('distance')

  volume = Parcel.new(@height, @width, @length, @distance)
  @quote = volume.cost
  erb(:output)
end
