require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative('../models/artist')
require('pry-byebug')


get '/artists' do
  @artists = Artist.all()
erb(:"Artists/index")
end

get '/artists/new' do
  @artist = Artist.all()
erb(:"Artists/new")
end

post '/artists' do
  artist = Artist.new(params)
  artist.save()
redirect to ('/artists')
end


get '/artists/:id' do
  @artist = Artist.find(params[:id])
erb(:"Artists/show")
end

