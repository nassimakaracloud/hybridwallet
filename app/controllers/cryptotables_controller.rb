class CryptotablesController < ApplicationController
  before_action :set_cryptotable, only: [:show, :edit, :update, :destroy]
  before_action:authenticate_user!
  before_action:user_signed_in?
  
  

  # GET /cryptotables
  # GET /cryptotables.json
  def index
    @cryptotables = Cryptotable.all
    retrieve_data
  end

  # GET /cryptotables/1
  # GET /cryptotables/1.json
  def show
  end

  # GET /cryptotables/new
  def new
    @cryptotable = Cryptotable.new
  end

  # GET /cryptotables/1/edit
  def edit
  end

  # POST /cryptotables
  # POST /cryptotables.json
  def create
    @cryptotable = Cryptotable.new(cryptotable_params)

    respond_to do |format|
      if @cryptotable.save
        format.html { redirect_to @cryptotable, notice: 'Cryptotable was successfully created.' }
        format.json { render :show, status: :created, location: @cryptotable }
      else
        format.html { render :new }
        format.json { render json: @cryptotable.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cryptotables/1
  # PATCH/PUT /cryptotables/1.json
  def update
    respond_to do |format|
      if @cryptotable.update(cryptotable_params)
        format.html { redirect_to @cryptotable, notice: 'Cryptotable was successfully updated.' }
        format.json { render :show, status: :ok, location: @cryptotable }
      else
        format.html { render :edit }
        format.json { render json: @cryptotable.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cryptotables/1
  # DELETE /cryptotables/1.json
  def destroy
    @cryptotable.destroy
    respond_to do |format|
      format.html { redirect_to cryptotables_url, notice: 'Cryptotable was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
 def cryptotableexport_csv
    @cryptotables = Cryptotable.all
    retrieve_data
      export_array = [['Symbol', 'Total quantity (User)', 'Unit price (User)', 'Last Day Price','Total Amount Last Price', 'Profit/Loss']]
      
      @cryptotables.each do |cryptotable|
        if @lookup_crypto[cryptotable.symbol].present?
          export_line = []
          export_line << cryptotable.symbol
          export_line << cryptotable.total_quantity
          export_line << cryptotable.unit_price
          export_line << cryptotable.total_amount
          cryptotable_last_price = @lookup_crypto[cryptotable.symbol]['last']
          export_line << cryptotable_last_price
          puts cryptotable_last_price
          export_line << cryptotable.total_quantity * cryptotable_last_price
          export_line << (cryptotable.total_quantity * cryptotable_last_price) - cryptotable.total_amount
          puts export_line
          export_array << export_line
        end
      end
    
    puts export_array
    export_to_csv('Filename', export_array, {separator: ','})
  end  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cryptotable
      @cryptotable = Cryptotable.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cryptotable_params
      params.require(:cryptotable).permit(:symbol, :user_id, :total_quantity,:unit_price, :total_amount)
    end
    
    def retrieve_data
      @lookup_crypto = {}
      @cryptotables.each do |item|
        item.add_api_client
        response = item.lookup_value
        unless response.scan('not supported').length > 0
          @lookup_crypto[item.symbol] = JSON.parse response
        end  
      end
    end
    
end
