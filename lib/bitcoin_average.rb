module BitcoinAverage
  class HTTP
    include HTTParty
    
    base_uri "https://apiv2.bitcoinaverage.com"
    
    def initialize
    end
    
    def make_call(path, options = {})
      method = options[:method] || :get
      self.class.send(method, path)
    end
    
    def ticker_data(symbol_set, symbol)
        path = "/indices/#{symbol_set}/ticker/#{symbol}"
        make_call path
    end
  end
end