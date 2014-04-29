class TradeCompletesController < ApplicationController
  before_filter :check_logged_in!
  before_action :set_trade_complete, only: [:show, :edit, :update, :destroy]

  # GET /trade_completes
  # GET /trade_completes.json
  def index
    @trade_completes = TradeComplete.all
  end

  # GET /trade_completes/1
  # GET /trade_completes/1.json
  def show
  end

  # GET /trade_completes/new
  def new
    @trade_complete = TradeComplete.new
  end

  # GET /trade_completes/1/edit
  def edit
  end

  # POST /trade_completes
  # POST /trade_completes.json
  def create
    @trade_complete = TradeComplete.new(trade_complete_params)
    
    respond_to do |format|
      if @trade_complete.save
	    format.html { redirect_to @trade_complete, status: :created, location: @trade_complete }
        format.json { render action: 'show', status: :created, location: @trade_complete }
      else
        format.html { render action: 'new' }
        format.json { render json: @trade_complete.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trade_completes/1
  # PATCH/PUT /trade_completes/1.json
  def update
    respond_to do |format|
      if @trade_complete.update(trade_complete_params)
        format.html { redirect_to @trade_complete, notice: 'Trade complete was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @trade_complete.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trade_completes/1
  # DELETE /trade_completes/1.json
  def destroy
    @trade_complete.destroy
    respond_to do |format|
      format.html { redirect_to trade_completes_url }
      format.json { head :no_content }
    end
  end
	
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trade_complete
      @trade_complete = TradeComplete.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trade_complete_params
      params[:trade_complete]
    end
	
	def check_logged_in! # if admin is not logged in, user must be logged in
      authenticate_trainer!  
    end
end
