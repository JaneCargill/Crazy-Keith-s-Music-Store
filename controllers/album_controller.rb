require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative('../models/album')


get '/albums' do
  @albums = Album.all()
erb(:"Albums/show")
end