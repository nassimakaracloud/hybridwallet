class Cryptotable < ApplicationRecord
    belongs_to :user
    attr_accessor :bitcoin_avg_api
    
    has_one_attached :myfile
    
    def total_amount
      if unit_price.present? && total_quantity.present?
        puts total_quantity * unit_price
        total_quantity * unit_price
      end
    end
    
    def add_api_client
      my_logger = MyLogger.instance
      my_logger.logInformation "Adding the decorator"
      
      @bitcoin_avg_api = BitcoinAverage::HTTP.new
    end
    
    def lookup_value(symbol)
      my_logger = MyLogger.instance
      my_logger.logInformation "Retrieving data for #{symbol}"
      response = @bitcoin_avg_api.ticker_data('global', symbol).body
      if response.scan('not supported').length > 0
        return nil
      else
        JSON.parse response 
      end
    end
end
