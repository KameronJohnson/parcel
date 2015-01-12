require('sinatra')
require('sinatra/reloader')
require('./lib/parcel')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/results') do
  @length = params.fetch("length")
  @width = params.fetch("width")
  @height = params.fetch("height")
  @weight = params.fetch("weight")
  @cts = Parcel.new(@length, @width, @height, @weight).cost_to_ship()
  erb(:results)
end
