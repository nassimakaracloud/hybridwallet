module CurrenciesRate

  class HTTP
    include HTTParty
    
    base_uri "http://data.fixer.io/api/"
    
    def initialize
    end
    
    def make_call(path, options = {})
      method = options[:method] || :get
      self.class.send(method, path)
    end
    
    def ticker_data(base, rates)
        path = "http://data.fixer.io/api/latest?access_key=293944c19667c2bf2650287d9c75e1f8"
        make_call path
    end
    
   
  end
end