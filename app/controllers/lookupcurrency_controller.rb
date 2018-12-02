class LookupcurrencyController < ApplicationController
    
    

    def lookupcurrency
    require 'net/http'
    require 'json'
    
    @url= 'http://data.fixer.io/api/latest?access_key=5ac845865fadbf5819b8ff3b0f15ef0d'
    @uri= URI(@url)
    @response= Net::HTTP.get(@uri)
    @lookup_currency= JSON.parse(@response)
    @symbol = params[:symbol]
    
    puts "symbol: #{@symbol}"
    render "home/lookupcurrency"
    end
    
end