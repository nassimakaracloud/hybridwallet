class LookupcryptoController < ApplicationController
  
  

    def lookupcrypto
      api_client = BitcoinAverage::HTTP.new
      result = api_client.ticker_data('global', params[:symbol]).body
      if result.scan('not supported').length > 0
        @symbol = {'symbol' => params[:symbol], 'error_message' => 'Not supported' }
      else
        @symbol= JSON.parse result
      end
      puts "symbol: #{@symbol}"
      render "home/lookupcrypto"
    end
    
end