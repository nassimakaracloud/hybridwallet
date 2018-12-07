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
        path = "/latest?access_key=d51e6e6103bf9945f52715a642adac61"
        make_call path
    end
    
   
  end
end