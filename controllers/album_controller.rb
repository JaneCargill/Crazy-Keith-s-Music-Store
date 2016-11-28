require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative('../models/album')
require_relative('../models/artist')

get '/albums' do
  @albums = Album.all()
erb(:"Albums/show")
end

get '/albums/new' do
  @artists = Artist.all()
erb(:"Albums/new")
end

post '/albums' do
  album = Album.new(params)
  album.save
  redirect ('/albums')
end