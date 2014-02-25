class DplaFind

  def initialize

  end

  def search(query)
    response = HTTParty.get('http://api.dp.la/v2/items?q=#{query}&api_key=c58f00a9b628ddabca2354616158d74e')
  end

end

search('bugs')