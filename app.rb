require( 'sinatra' )
require( 'sinatra/contrib/all' )
require('pry-byebug')
require_relative('controllers/artist_controller')
require_relative('controllers/album_controller')

get '/stock_level' do
  @albums = Album.all()
  erb(:index)
end




