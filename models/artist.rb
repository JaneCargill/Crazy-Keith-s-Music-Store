require_relative('../db/sql_runner')
class Artist

  attr_accessor :name
  attr_reader :id

  def initialize(options)
    @name = options['name']
    @id = nil || options['id'].to_i
  end

  def save()
    sql = "INSERT INTO artists (name) VALUES ('#{name}') returning *;"
    results = SqlRunner.run(sql)
    @id = results[0]['id'].to_i
  end

  def find_album()
    sql = "SELECT * FROM albums WHERE artist_id = #{@id}"
    albums = SqlRunner.run(sql)
    results = albums.map {|hash| Album.new(hash)}
    return results[0].name
  end

def self.find(id)
  sql="SELECT * FROM artists WHERE id = #{id}"
  artist = SqlRunner.run(sql)
  return Artist.new(artist.first)
end

def self.all()
  sql = "SELECT * FROM artists;"
  artists = SqlRunner.run(sql)
  return artists.map {|hash| Artist.new(hash)}
end

def self.delete_all()
  sql = "DELETE FROM artists"
  result = SqlRunner.run(sql)
end 

end