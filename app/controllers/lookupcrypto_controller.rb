class LookupcryptoController < ApplicationController
  
  

    def lookupcrypto
      api_client = BitcoinAverage::HTTP.new
      @symbol= JSON.parse api_client.ticker_data('global', params[:symbol]).body
      puts "symbol: #{@symbol}"
      render "home/lookupcrypto"
    end
    
end