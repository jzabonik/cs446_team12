class TradeRequestsController < ApplicationController
  before_filter :check_logged_in!
  before_action :set_trade_request, only: [:show, :edit, :update, :destroy]

  # GET /trade_requests
  # GET /trade_requests.json
  def index
    @trade_requests = TradeRequest.all
  end

  # GET /trade_requests/1
  # GET /trade_requests/1.json
  def show
  end

  # GET /trade_requests/new
  def new
    @trade_request = TradeRequest.new
  end

  # GET /trade_requests/1/edit
  def edit
  end

  # POST /trade_requests
  # POST /trade_requests.json
  def create
    @trade_request = TradeRequest.new(trade_request_params)
	@trade_request.trader = Trainer.find(params[:trainer_two])
	@trade_request.tradee = Trainer.find(params[:trainer_one])
	#Adding all of the TrainerPokemon relations to the TradeRequest
	@trade_request.trainer_pokemons << TrainerPokemon.where(trainer_id: params[:trainer_one], pokemon_id: params[:pokemon_one]).take
	@currentpokemon_ids = params[:currentpokemon_ids]
	@currentpokemon_ids.each do |pokemon_id|
	  @trade_request.trainer_pokemons << TrainerPokemon.where(trainer_id: params[:trainer_two], pokemon_id: pokemon_id).take
	end

    respond_to do |format|
      if @trade_request.save
        format.html { redirect_to profile_index_path, notice: 'Trade request was successfully created.' }
        format.json { render action: 'show', status: :created, location: @trade_request }
      else
        format.html { render action: 'new' }
        format.json { render json: @trade_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trade_requests/1
  # PATCH/PUT /trade_requests/1.json
  def update
    respond_to do |format|
      if @trade_request.update(trade_request_params)
        format.html { redirect_to @trade_request, notice: 'Trade request was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @trade_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trade_requests/1
  # DELETE /trade_requests/1.json
  def destroy
    @trade_request.destroy
    respond_to do |format|
      format.html { redirect_to profile_index_path }
      format.json { head :no_content }
    end
  end
  
  def accept_trade
    @trade_request = TradeRequest.find(params[:id])
    # Created the trade_complete
	flash[:trade_request => @trade_request.id]
	pokemon_trainers = Array.new
	@trade_request.trainer_pokemons.each do |trainer_pokemon|
	      pokemon_trainers << PokemonTrainer.create(:trainer_id => trainer_pokemon.trainer_id, :pokemon_id => trainer_pokemon.pokemon_id)
	end
    @trade_complete = TradeComplete.create(:completer => @trade_request.trader, :completee => @trade_request.tradee, :pokemon_trainers => pokemon_trainers)
  
    # Destroys other trade_requests that involved the pokemon
    TradeRequest.where("id != ?", @trade_request.id).each do |tr|
	  tr.trainer_pokemons.each do |tp|
	    catch :found_duplicate do 
	      @trade_request.trainer_pokemons.each do |trainer_pokemon|
		    if trainer_pokemon == tp
		      tr.destroy
			  throw :found_duplicate
		    end
	      end
		end
	  end
	end
	
	# Give trainers respected pokemon
	@trade_request.trainer_pokemons.each do |trainer_pokemon|
	  if trainer_pokemon.trainer_id != @trade_request.trader.id
	    TrainerPokemon.create(:trainer_id => @trade_request.trader.id, :pokemon_id => trainer_pokemon.pokemon_id)
	  else
	    TrainerPokemon.create(:trainer_id => @trade_request.tradee.id, :pokemon_id => trainer_pokemon.pokemon_id)
	  end
	  trainer_pokemon.destroy
	end
	
	@trade_request.destroy
    respond_to do |format|
      format.html { redirect_to profile_index_path }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trade_request
      @trade_request = TradeRequest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trade_request_params
      params[:trade_request]
    end
	
	def check_logged_in! # if admin is not logged in, user must be logged in
      authenticate_trainer!  
    end
end
