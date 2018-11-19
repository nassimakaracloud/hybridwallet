require 'bitcoin_average'

class HomeController < ApplicationController
before_action :authenticate_user!
before_action :user_signed_in?

  def home
    api_client = BitcoinAverage::HTTP.new
    @bitcoin = JSON.parse api_client.ticker_data('global', 'BTCUSD').body
    @ethereum = JSON.parse api_client.ticker_data('global', 'ETHUSD').body
    @litecoin = JSON.parse api_client.ticker_data('global', 'LTCUSD').body
    @ZCash = JSON.parse api_client.ticker_data('global', 'ZECUSD').body
    
  end
  
  def lookupcrypto
  end 
  
  
  
end