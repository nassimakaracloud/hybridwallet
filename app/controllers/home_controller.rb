require 'currencies_rate'
require 'machinelearning'

class HomeController < ApplicationController
  
  

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
  
  def prediction
    api_client = BitcoinAverage::HTTP.new
    @ZCashcurrent = JSON.parse api_client.ticker_data('global', 'ZECUSD').body
    data={
      'year'=>2018,
      'month'=>12,
      'day'=>3,
      'hour'=>00,
      'minutes'=>00,
      'high'=> @ZCashcurrent['high'],
      'low'=>@ZCashcurrent['low'],
      'average'=>@ZCashcurrent['average'],
      
    }
    api_machinelearning = MachineLearning::HTTP.new
    result = JSON.parse api_machinelearning.prediction_zcash(data).body
    @ZCash = result['error'].present? ? nil : results
  end
  
end