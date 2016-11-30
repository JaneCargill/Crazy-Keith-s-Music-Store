require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative('../models/album')
require_relative('../models/artist')
require_relative('../models/price')

get '/albums' do
  @albums = Album.all()

erb(:"Albums/index")
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

get '/albums/:id/to_sell' do
  @album = Album.find(params[:id])
  @artists = Artist.all()
  erb(:"Albums/to_sell")
end

get '/albums/:id/to_buy' do
  @album = Album.find(params[:id])
  @artists = Artist.all()
  erb(:"Albums/to_buy")
end

get '/albums/:id/edit' do
  @album = Album.find(params[:id])
  @artists = Artist.all()
  erb(:"Albums/edit")
end

post '/albums/:id/edit' do
  album = Album.find(params[:id].to_i)
  Album.update({"quantity" => album.quantity, "name" => album.name, "id" => album.id, "profit" => album.profit})
  redirect ('/albums')
end


post '/albums/:id/buy' do
  album = Album.find(params[:id].to_i)
  album.buy_album(params[:quantity].to_i)
  Album.update({"quantity" => album.quantity, "name" => album.name, "id" => album.id, "profit" => album.profit})
  redirect ('/albums')
end

post '/albums/:id/sell' do
  album = Album.find(params[:id].to_i)
  album.sell_album(params[:quantity].to_i)
  Album.update({"quantity" => album.quantity, "name" => album.name, "id" => album.id, "profit" => album.profit})
  # @profit = album.profit(params[:quantity].to_i)
  redirect ('/albums')
end

get '/albums/:id' do
  @album = Album.find(params[:id])
erb(:"Albums/show")
end