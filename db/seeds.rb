require('pry-byebug')
require_relative('../models/album')
require_relative('../models/artist')
require_relative('../models/price')

Album.delete_all()
Price.delete_all()
Artist.delete_all()

artist1 = Artist.new({
  'name' => 'The Killers'
  });

  artist1.save()

artist2 = Artist.new({
  'name' => 'The Kooks'
  });

artist2.save()

artist3 = Artist.new({
  'name' => 'Kasabian'
  });

artist3.save()

price1 = Price.new({
  'price_sell' => 10,
  'price_buy' => 5,
  })
price1.save

price2 = Price.new({
  'price_sell' => 20,
  'price_buy' => 10,
  })
price2.save

price3 = Price.new({
  'price_sell' => 15,
  'price_buy' => 8,
  })
price3.save

price4 = Price.new({
  'price_sell' => 30,
  'price_buy' => 20,
  })
price4.save

album1 = Album.new({
  'name' => 'Inside In/Inside Out',
  'quantity' => 4,
  'artist_id' => artist2.id,
  'price_id' => price1.id
  });

album1.save()

album2 = Album.new({
 'name' => 'Listen',
 'quantity' => 3,
 'artist_id' => artist2.id,
 'price_id' => price4.id
  });

album2.save()

album3 = Album.new({
 'name' => 'Too Much is Not Enough',
 'quantity' => 8,
 'artist_id' => artist2.id,
 'price_id' => price1.id
  });

album3.save()

album4 = Album.new({
 'name' => 'Hot Fuss',
 'quantity' => 15,
 'artist_id' => artist1.id,
 'price_id' => price2.id
  });

album4.save()

album5 = Album.new({
 'name' => 'Sams Town',
 'quantity' => 30,
 'artist_id' => artist1.id,
 'price_id' => price3.id
  });

album5.save

album6 = Album.new({
  'name' => 'Empire',
  'quantity' => 17,
  'artist_id' => artist3.id,
  'price_id' => price4.id
  });

album6.save

album6.quantity = 20

album1.buy_album(10)
album4.sell_album(3)



album1.stock_level()
album4.stock_level()
album5.stock_level()

artist1.find_album

album1.find_prices()
album4.find_prices()
album3.profit()

Artist.find(artist1.id)
Album.find(album1.id)

albums = Album.all()
artists = Artist.all()
prices = Price.all()


















  binding.pry
  nil