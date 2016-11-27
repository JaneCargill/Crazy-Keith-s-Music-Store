require( 'sinatra' )
require( 'sinatra/contrib/all' )
require('pry-byebug')
require_relative('models/album')
require_relative('models/artist')
# require_relative('controllers/artists_controller')
# require_relative('controllers/overview_controller')

get '/stock_level' do
  @albums = Album.all()
  erb(:index)
end

get '/stock_level/albums' do
  @albums = Album.all()
erb(:"Albums/show")
end



get '/stock_level/artist' do
  @artists = Artist.all()
erb(:"Artists/show")
end
