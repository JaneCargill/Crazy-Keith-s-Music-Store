require_relative('../db/sql_runner')

class Album

  attr_accessor :name, :quantity, :artist_id
  attr_reader :id 

  def initialize(options)
    @name = options['name']
    @quantity = options['quantity'].to_i
    @id = options['id'].to_i
    @artist_id = options['artist_id'].to_i
  end

  def save()
    sql = "INSERT INTO albums (name, quantity, artist_id) VALUES ('#{@name}', #{@quantity}, #{@artist_id}) returning *;"
    results = SqlRunner.run(sql)
    @id = results[0]['id'].to_i
  end

  def update()
    sql = "UPDATE albums SET (name, quantity) = ('#{@name}', #{@quantity}) WHERE id = #{@id};"
    results = SqlRunner.run(sql)

  end

  def stock_level()
    return "high" if @quantity > 10
    return "medium" if @quantity > 5
    return "low" if @quantity > 0
    return "out of stock" if @quantity == 0
  end

  def find_artist()
    sql = "SELECT * FROM artists WHERE id = #{@artist_id}"
    artists = SqlRunner.run(sql)
    result = artists.map {|hash| Album.new(hash)}
    return result[0]
  end

  def self.find(id)
    sql="SELECT* FROM albums WHERE id = #{id}"
    data = SqlRunner.run(sql).first
    return Album.new(data)
  end

  def self.all()
    sql = "SELECT * FROM albums;"
    albums = SqlRunner.run(sql)
    return albums.map {|hash| Album.new(hash)}
  end

  def self.delete_all()
    sql = "DELETE FROM albums"
    result = SqlRunner.run(sql)
  end 

end
