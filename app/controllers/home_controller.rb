require 'currencies_rate'

class HomeController < ApplicationController
  before_action:authenticate_user!
  before_action:user_signed_in?
  

  def home
    api_client = BitcoinAverage::HTTP.new
    @bitcoin = JSON.parse api_client.ticker_data('global', 'BTCUSD').body
    @ethereum = JSON.parse api_client.ticker_data('global', 'ETHUSD').body
    @litecoin = JSON.parse api_client.ticker_data('global', 'LTCUSD').body
    @ZCash = JSON.parse api_client.ticker_data('global', 'ZECUSD').body
    api_client = CurrenciesRate::HTTP.new
    @USD = JSON.parse api_client.ticker_data('rates', 'USD').body
    @GBP = JSON.parse api_client.ticker_data('rates', 'GBP').body
    @AUD = JSON.parse api_client.ticker_data('rates', 'AUD').body
    @JPY = JSON.parse api_client.ticker_data('rates', 'JPY').body
    
  end
  
  def lookupcrypto
  end
  
  
  
  def lookupcurrency
  end 
  
end