require 'bundler'
require './lib/DPLA.rb'
Bundler.require


class App < Sinatra::Application

  get '/' do 
	 
    erb :index
  end

  get '/search' do
    erb :search
  end

  post '/search' do
    @that = DPLA.new(params[:query])
    @feet = DPLA.get(@that.this)
    @results = @feet.parsed_response
      erb :results
  end
end

# Search by image
# http://dp.la/search?q=cats&type%5B%5D=image&utf8=✓

