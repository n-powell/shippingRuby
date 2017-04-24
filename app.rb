require('rspec')
require('./lib/parcels')
require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/ship') do#place form 'action' in the get parentheses
 @weight = params.fetch('weight').to_i
 @height = params.fetch('height').to_i
 @width = params.fetch('width').to_i
 @depth = params.fetch('depth').to_i
 @speed = params.fetch('speed').to_i
 parcel = Parcel.new(@height,@width,@depth,@weight,@speed)
 @result = parcel.ship()
 erb(:result)#this is the page where you want your method to display
end
