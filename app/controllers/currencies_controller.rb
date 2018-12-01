require 'currencies_rate'
class CurrenciesController < ApplicationController
  before_action :set_currency, only: [:show, :edit, :update, :destroy]
  require 'my_logger'
  
 
  # GET /currencies
  # GET /currencies.json
  def index
    retrieve_data
    render "currencies/index"
  end

  # GET /currencies/1
  # GET /currencies/1.json
  def show
  end

  # GET /currencies/new
  def new
    @currency = Currency.new
  end

  # GET /currencies/1/edit
  def edit
  end

  # POST /currencies
  # POST /currencies.json
  def create
    @currency = Currency.new(currency_params)

    respond_to do |format|
      if @currency.save
        format.html { redirect_to @currency, notice: 'Currency was successfully created.' }
        format.json { render :show, status: :created, location: @currency }
      else
        format.html { render :new }
        format.json { render json: @currency.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /currencies/1
  # PATCH/PUT /currencies/1.json
  def update
    respond_to do |format|
      if @currency.update(currency_params)
        format.html { redirect_to @currency, notice: 'Currency was successfully updated.' }
        format.json { render :show, status: :ok, location: @currency }
      else
        format.html { render :edit }
        format.json { render json: @currency.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /currencies/1
  # DELETE /currencies/1.json
  def destroy
    @currency.destroy
    respond_to do |format|
      format.html { redirect_to currencies_url, notice: 'Currency was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  def export_csv
    retrieve_data
    currencies = Currency.all
    
      export_array = [['Symbol', 'Quantity', 'Unit Price', 'Total Amount', 'Current Price', 'Total Amount Day Price', 'Profit/Loss']]
      
      currencies.each do |currency|
        if @lookup_currency['rates'][currency.symbol].present?
          export_line = []
          export_line << currency.symbol
          export_line << currency.quantity
          export_line << currency.unit_price
          export_line << currency.total_amount
          current_day_price = @lookup_currency['rates'][currency.symbol]
          export_line << current_day_price
          puts current_day_price
          puts "Current day price: #{currency.id} :: #{currency.symbol}"
          export_line << currency.quantity * current_day_price
          export_line << (currency.quantity * current_day_price) - currency.total_amount
          puts export_line
          export_array << export_line
        end
      end
    
    puts export_array
    export_to_csv('Filename', export_array, {separator: ','})
  end  
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_currency
      @currency = Currency.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def currency_params
      params.require(:currency).permit(:symbol, :user_id, :quantity, :unit_price, :total_amount)
    end
    
    def retrieve_data
      require 'net/http'
      require 'json'
      @currencies = Currency.all
      @url= 'http://data.fixer.io/api/latest?access_key=a78952caffb0f23f9b3080beb66350e7'
      @uri= URI(@url)
      @response= Net::HTTP.get(@uri)
      @lookup_currency= JSON.parse(@response)
      @symbol = params[:symbol]
      puts "symbol: #{@symbol}"
    end

end