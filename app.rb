require 'bundler'
require './lib/DPLA.rb'
Bundler.require


class App < Sinatra::Application

  get '/' do 
	 @that = DPLA.new('bugs')
   @feet = DPLA.get(@that.this)
   @results = @feet.parsed_response
    erb :index
  end
end

# Search by image
# http://dp.la/search?q=cats&type%5B%5D=image&utf8=✓

