class LookupcurrencyController < ApplicationController
    before_action :authenticate_user!
    before_action :user_signed_in?
    

    def lookupcurrency
    require 'net/http'
    require 'json'
    
    @url= "http://data.fixer.io/api/latest?access_key#{ENV['FIXER_KEY']}"
    @uri= URI(@url)
    @response= Net::HTTP.get(@uri)
    @lookup_currency= JSON.parse(@response)
    @symbol = params[:symbol]
    
    puts "symbol: #{@symbol}"
    render "home/lookupcurrency"
    end
    
end