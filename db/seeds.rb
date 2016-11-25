require('pry-byebug')
require_relative('../models/album')
require_relative('../models/artist')

Album.delete_all()
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

album1 = Album.new({
  'name' => 'Inside In/Inside Out',
  'quantity' => 4,
  'artist_id' => artist2.id
  });

album1.save()

album2 = Album.new({
 'name' => 'Listen',
 'quantity' => 3,
 'artist_id' => artist2.id
  });

album2.save()

album3 = Album.new({
 'name' => 'Too Much is Not Enough',
 'quantity' => 8,
 'artist_id' => artist2.id
  });

album3.save()

album4 = Album.new({
 'name' => 'Hot Fuss',
 'quantity' => 15,
 'artist_id' => artist1.id
  });

album4.save()

album5 = Album.new({
 'name' => 'Sams Town',
 'quantity' => 30,
 'artist_id' => artist1.id
  });

album5.save

album6 = Album.new({
  'name' => 'Empire',
  'quantity' => 17,
  'artist_id' => artist3.id
  });

album6.save

album1.stock_level()
album4.stock_level()
album5.stock_level()


albums = Album.all()
artists = Artist.all()


















  binding.pry
  nil