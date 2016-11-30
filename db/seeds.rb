require('pry-byebug')
require_relative('../models/album')
require_relative('../models/artist')
require_relative('../models/price')

Album.delete_all()
Price.delete_all()
Artist.delete_all()

artist1 = Artist.new({
  'name' => 'Oasis'
  });

  artist1.save()

artist2 = Artist.new({
  'name' => 'Simply Red'
  });

artist2.save()

artist3 = Artist.new({
  'name' => 'Spice Girls'
  });

artist3.save()

artist4 = Artist.new({
  'name' => 'The Corrs'
  });

artist4.save()

artist5 = Artist.new({
  'name' => 'Alanis Morissette'
  });

artist5.save()

artist6 = Artist.new({
  'name' => 'Robson Green & Jerome Flynn'
  });

artist6.save()

artist7 = Artist.new({
  'name' => 'Madonna'
  });

artist7.save()

artist8 = Artist.new({
  'name' => 'The Verve'
  });

artist8.save()

artist9 = Artist.new({
  'name' => 'Abba'
  });

artist9.save()

artist10 = Artist.new({
  'name' => 'Celine Dione'
  });

artist10.save()

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
  'name' => 'Morning Glory',
  'quantity' => 4,
  'artist_id' => artist1.id,
  'price_id' => price1.id
  });

album1.save()

album2 = Album.new({
 'name' => 'Stars',
 'quantity' => 24,
 'artist_id' => artist2.id,
 'price_id' => price4.id
  });

album2.save()

album3 = Album.new({
 'name' => 'Spice',
 'quantity' => 33,
 'artist_id' => artist3.id,
 'price_id' => price1.id
  });

album3.save()

album4 = Album.new({
 'name' => 'Talk on Corners',
 'quantity' => 49,
 'artist_id' => artist4.id,
 'price_id' => price2.id
  });

album4.save()

album5 = Album.new({
 'name' => 'Jagged Little Pill',
 'quantity' => 10,
 'artist_id' => artist5.id,
 'price_id' => price3.id
  });

album5.save

album6 = Album.new({
  'name' => 'Robson & Jerome',
  'quantity' => 2,
  'artist_id' => artist6.id,
  'price_id' => price4.id
  });

album6.save

album7 = Album.new({
  'name' => 'The Immaculate Collection',
  'quantity' => 28,
  'artist_id' => artist7.id,
  'price_id' => price4.id
  });

album7.save

album8 = Album.new({
  'name' => 'Urban Hymns',
  'quantity' => 19,
  'artist_id' => artist8.id,
  'price_id' => price3.id
  });

album8.save

album9 = Album.new({
  'name' => 'Gold, Greatest Hits',
  'quantity' => 9,
  'artist_id' => artist9.id,
  'price_id' => price2.id
  });

album9.save

album10 = Album.new({
  'name' => 'Falling Into You',
  'quantity' => 6,
  'artist_id' => artist10.id,
  'price_id' => price1.id
  });

album10.save

album11 = Album.new({
  'name' => 'Arrival',
  'quantity' => 31,
  'artist_id' => artist9.id,
  'price_id' => price3.id
  });

album11.save

album12 = Album.new({
  'name' => 'ABBA Greatest Hits',
  'quantity' => 17,
  'artist_id' => artist9.id,
  'price_id' => price2.id
  });

album12.save

album13 = Album.new({
  'name' => 'Burning Up',
  'quantity' => 22,
  'artist_id' => artist7.id,
  'price_id' => price4.id
  });

album13.save

album14 = Album.new({
  'name' => 'Lucky Star',
  'quantity' => 45,
  'artist_id' => artist7.id,
  'price_id' => price1.id
  });

album14.save

album15 = Album.new({
  'name' => 'Forever',
  'quantity' => 36,
  'artist_id' => artist3.id,
  'price_id' => price3.id
  });

album15.save

album16 = Album.new({
  'name' => 'Spiceworld',
  'quantity' => 50,
  'artist_id' => artist3.id,
  'price_id' => price4.id
  });

album16.save

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