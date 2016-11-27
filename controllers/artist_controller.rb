require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative('../models/artist')


get '/artists' do
  @artists = Artist.all()
erb(:"Artists/index")
end

get '/artists/:id' do
  @artist = Artist.find(params[:id])
erb(:"Artists/show")
end