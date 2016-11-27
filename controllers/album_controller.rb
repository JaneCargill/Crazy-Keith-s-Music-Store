require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative('..models/album')
# require_relative('..models/artist')
# require_relative('controllers/artists_controller')
# require_relative('controllers/overview_controller')

get '/albums' do
  @albums = Album.all()
  erb( :"Albums/index" )
end