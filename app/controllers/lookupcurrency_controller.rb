class LookupcurrencyController < ApplicationController
    
    

    def lookupcurrency
    require 'net/http'
    require 'json'
    
    @url= 'http://data.fixer.io/api/latest?access_key=a78952caffb0f23f9b3080beb66350e7'
    @uri= URI(@url)
    @response= Net::HTTP.get(@uri)
    @lookup_currency= JSON.parse(@response)
    @symbol = params[:symbol]
    
    puts "symbol: #{@symbol}"
    render "home/lookupcurrency"
    end
    
end