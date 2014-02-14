class DPLA
  include HTTParty
  base_uri 'http://api.dp.la/v2/items?q='

  def initialize(query, key)
    @auth = {:query => u, :apikey => p}
  end

  # which can be :friends, :user or :public
  # options[:query] can be things like since, since_id, count, etc.
  def timeline(which=:friends, options={})
    options.merge!({:basic_auth => @auth})
    self.class.get("/statuses/#{which}_timeline.json", options)
  end

  def post(text)
    options = { :body => {:status => text}, :basic_auth => @auth }
    self.class.post('/statuses/update.json', options)
  end
end

dpla = DPLA.new(config['email'], config['password'])
pp twitter.timeline