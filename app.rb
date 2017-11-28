require('parcels')
require('sinatra/reloader')

get('/') do
  dimension = params.fetch("dimension")
  weight = params.fetch("weight")
  if

  end
  erb(:input)
end

get('/output')do
  erb(:output)
end
