require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative('models/album')
# require_relative('controllers/artists_controller')
# require_relative('controllers/overview_controller')

get '/albums' do
  @albums = Album.all()
  erb( :index )
end
