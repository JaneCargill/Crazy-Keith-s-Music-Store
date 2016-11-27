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

get '/stock_level/album/:id' do
  @album = Album.find(options[:id])
erb(:show)
end

get '/stock_level/artist/:id' do
  @artist = Artist.find(params[:id])
erb(:show)
end
