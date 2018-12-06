require 'currencies_rate'
require 'machinelearning'
require 'machinelearningbitcoin'

class HomeController < ApplicationController
  before_action :authenticate_user!
  before_action :user_signed_in?
  
  
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
      'minute'=>00,
      'high'=> @ZCashcurrent['high'],
      'low'=>@ZCashcurrent['low'],
      'average'=>@ZCashcurrent['averages']['day'],
      
    }
    api_machinelearning = MachineLearning::HTTP.new
    result = api_machinelearning.prediction_zcash(data)
    if result['error'].present?
      @ZCash = nil
    else
      only_result = result["Results"]["output1"]["value"]["Values"][0]
      @ZCash = {
          'high' => only_result[5],
          'low' => only_result[6],
          'average' => only_result[7]
      }
    end
  end
  
  def predictionbitcoin
    api_client = BitcoinAverage::HTTP.new
    @bitcoincurrent = JSON.parse api_client.ticker_data('global', 'BTCUSD').body
    data={
      'year'=>2018,
      'month'=>12,
      'day'=>3,
      'hour'=>00,
      'minute'=>00,
      'high'=> @bitcoincurrent['high'],
      'low'=>@bitcoincurrent['low'],
      'average'=>@bitcoincurrent['averages']['day'],
      
    }
    api_machinelearningbitcoin = MachineLearningBitcoin::HTTP.new
    result = api_machinelearningbitcoin.prediction_bitcoin(data)
    only_result = result["Results"]["output1"]["value"]["Values"][0]
    @bitcoin = {
        'high' => only_result[5],
        'low' => only_result[6],
        'average' => only_result[7]
    }
  end
  
end