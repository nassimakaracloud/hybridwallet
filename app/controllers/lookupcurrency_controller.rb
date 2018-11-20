class LookupcurrencyController < ApplicationController
  before_action :authenticate_user!
  before_action :user_signed_in?

    def lookupcurrency
    require 'net/http'
    require 'json'
    
    @url= 'http://data.fixer.io/api/latest?access_key=293944c19667c2bf2650287d9c75e1f8'
    @uri= URI(@url)
    @response= Net::HTTP.get(@uri)
    @lookup_currency= JSON.parse(@response)
    @symbol = params[:symbol]
    
    puts "symbol: #{@symbol}"
    render "home/lookupcurrency"
    end
    
end