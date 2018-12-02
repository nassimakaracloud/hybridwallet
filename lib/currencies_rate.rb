module CurrenciesRate

  class HTTP
    include HTTParty
    
    base_uri "http://data.fixer.io/api"
    
    def initialize
    end
    
    def make_call(path, options = {})
      method = options[:method] || :get
      self.class.send(method, path)
    end
    
    def ticker_data(base, rates)
        path = "/latest?access_key=5ac845865fadbf5819b8ff3b0f15ef0d"
        make_call path
    end
    
   
  end
end