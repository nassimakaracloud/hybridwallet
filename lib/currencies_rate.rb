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
        path = "/latest?access_key=a78952caffb0f23f9b3080beb66350e7"
        make_call path
    end
    
   
  end
end