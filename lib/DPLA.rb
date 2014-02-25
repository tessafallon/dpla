require 'HTTParty'

class DPLA
  include HTTParty
  base_uri = 'http://api.dp.la/v2/items?q='

  attr_reader :this

  def initialize(query)
    base_uri = 'http://api.dp.la/v2/items?q='
    @key = '&api_key=c58f00a9b628ddabca2354616158d74e'
    @this = base_uri + query + @key
  end

 
end