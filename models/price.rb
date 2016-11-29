class Price

attr_accessor :price_sell, :price_buy
attr_reader :id

  def initialize(options)
    @price_sell = options['price_sell'].to_i
    @price_buy = options['price_buy'].to_i
    @id = options['id'].to_i
  end

  def save()
    sql = "INSERT INTO prices (price_sell, price_buy) VALUES ('#{@price_sell}', #{@price_buy}) returning *;"
    results = SqlRunner.run(sql)
    @id = results[0]['id'].to_i
  end

  def markup()
    profit = @price_sell - @price_buy
  end

  def self.all()
    sql = "SELECT * FROM prices;"
    prices = SqlRunner.run(sql)
    return prices.map {|hash| Price.new(hash)}
  end

  def self.delete_all()
    sql = "DELETE FROM prices"
    result = SqlRunner.run(sql)
  end 

end