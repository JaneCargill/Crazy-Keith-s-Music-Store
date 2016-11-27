require( 'sinatra' )
require( 'sinatra/contrib/all' )
# require_relative('..models/album')
require_relative('..models/artist')
# require_relative('controllers/artists_controller')
# require_relative('controllers/overview_controller')

get '/artists' do
  @artists = Artist.all()
  erb( :"Artists/index" )
end