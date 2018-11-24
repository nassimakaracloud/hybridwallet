class LookupcryptoController < ApplicationController
  before_action:authenticate_user!
  before_action:user_signed_in?
  

    def lookupcrypto
      api_client = BitcoinAverage::HTTP.new
      @symbol= JSON.parse api_client.ticker_data('global', params[:symbol]).body
      puts "symbol: #{@symbol}"
      render "home/lookupcrypto"
    end
    
end