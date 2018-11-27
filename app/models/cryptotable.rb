class Cryptotable < ApplicationRecord
    belongs_to :user
    
    def total_amount
      if unit_price.present? && total_quantity.present?
        puts total_quantity * unit_price
        total_quantity * unit_price
      end
    end
    
    def add_api_client
      @bitcoin_avg_api = BitcoinAverage::HTTP.new
    end
    
    def lookup_value
      JSON.parse @bitcoin_avg_api.ticker_data('global', params[:symbol]).body
    end
end
