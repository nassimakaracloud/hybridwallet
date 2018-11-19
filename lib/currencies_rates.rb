module Currencies
  class HTTP
    include HTTParty
    
    base_uri "http://data.fixer.io/api/latest?access_key=293944c19667c2bf2650287d9c75e1f8"
    
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