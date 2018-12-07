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
        path = "/latest?access_key=#{ENV['FIXER_KEY']}"
        make_call path
    end
    
   
  end
end