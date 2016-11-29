require_relative('../db/sql_runner')
require_relative('price')

class Album

  attr_accessor :name, :quantity, :artist_id, :price_id, :profit
  attr_reader :id 

  def initialize(options)
    @name = options['name']
    @quantity = options['quantity'].to_i
    @id = options['id'].to_i
    @artist_id = options['artist_id'].to_i
    @price_id = options['price_id'].to_i
    @profit = nil || options['profit'].to_i
  end

  def save()
    sql = "INSERT INTO albums (name, quantity, artist_id, price_id) VALUES ('#{@name}', #{@quantity}, #{@artist_id}, #{price_id}) returning *;"
    results = SqlRunner.run(sql)
    @id = results[0]['id'].to_i
  end

  def self.update(options)
    sql = "UPDATE albums SET name = '#{options['name']}', quantity= '#{options['quantity']}', profit= '#{options['profit']}' WHERE id ='#{ options['id'] }';"
    results = SqlRunner.run(sql)

  end

  def stock_level()
    return "high" if @quantity > 10
    return "medium" if @quantity > 5
    return "low" if @quantity > 0
    return "out of stock" if @quantity == 0
  end

  def find_artist()
    sql = "SELECT * FROM artists WHERE id = #{@artist_id};"
    artists = SqlRunner.run(sql)
    result = artists.map {|hash| Album.new(hash)}
    return result[0]
  end

  def find_prices
    sql = "SELECT * FROM prices WHERE id = #{price_id};"
    prices = SqlRunner.run(sql)
    result = prices.map {|hash| Price.new(hash)}
    return result[0]
  end

  def buy_album(number)
    @quantity = @quantity += number
    @profit -= (number * find_prices.price_buy())
  end

  def sell_album(number)

    @quantity = @quantity -= number
    @profit += (number * find_prices.price_sell())
  end

  def self.find(id)
    sql="SELECT* FROM albums WHERE id = #{id};"
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
