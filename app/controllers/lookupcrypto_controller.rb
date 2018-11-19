require 'bitcoin_average'
class LookupcrytoController < ApplicationController

 def lookupcrypto
  return render { :message => "testing" }, :status => 200
  before_action :authenticate_user!
  before_action :user_signed_in?
    api_client = BitcoinAverage::HTTP.new
    @symbol= JSON.parse api_client.ticker_data('global', 'symbol_set','symbol').body
    @symbol = params [:symbol]
    
    
  end
  
end