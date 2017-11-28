require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/parcels')

get('/') do
  erb(:input)
end

get('/output')do
  @dimension = params.fetch("dimension")
  @weight = params.fetch("weight")
  parcel = Parcel.new(@dimension, @weight)

  if parcel.price_on_dimension?
    @number_to_display = @dimension.to_i * 2
  elsif parcel.price_on_weight?
    @number_to_display = @weight.to_i  * 2
  end
  erb(:output)
end
