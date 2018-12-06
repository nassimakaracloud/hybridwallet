class LookupcryptoController < ApplicationController
  before_action :authenticate_user!
  before_action :user_signed_in?
  

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