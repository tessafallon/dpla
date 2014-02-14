require 'bundler'
Bundler.require


class App < Sinatra::Application

get '/' do 
	response = HTTParty.get('http://api.dp.la/v2/items?q=kittens&api_key=c58f00a9b628ddabca2354616158d74e')
	@results = response.parsed_response
	erb :index
end
end