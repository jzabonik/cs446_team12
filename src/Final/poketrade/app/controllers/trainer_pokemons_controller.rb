class TrainerPokemonsController < ApplicationController
  before_filter :check_logged_in!
  before_action :set_trainer_pokemon, only: [:show, :edit, :update, :destroy]

  # GET /trainer_pokemons
  # GET /trainer_pokemons.json
  def index
    @trainer_pokemons = TrainerPokemon.all
  end

  # GET /trainer_pokemons/1
  # GET /trainer_pokemons/1.json
  def show
  end

  # GET /trainer_pokemons/new
  def new
    @trainer_pokemon = TrainerPokemon.new
  end

  # GET /trainer_pokemons/1/edit
  def edit
  end

  # POST /trainer_pokemons
  # POST /trainer_pokemons.json
  def create
    @trainer_pokemon = TrainerPokemon.new(trainer_pokemon_params)

    respond_to do |format|
      if @trainer_pokemon.save
        format.html { redirect_to @trainer_pokemon, notice: 'Trainer pokemon was successfully created.' }
        format.json { render action: 'show', status: :created, location: @trainer_pokemon }
      else
        format.html { render action: 'new' }
        format.json { render json: @trainer_pokemon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trainer_pokemons/1
  # PATCH/PUT /trainer_pokemons/1.json
  def update
    respond_to do |format|
      if @trainer_pokemon.update(trainer_pokemon_params)
        format.html { redirect_to @trainer_pokemon, notice: 'Trainer pokemon was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @trainer_pokemon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trainer_pokemons/1
  # DELETE /trainer_pokemons/1.json
  def destroy
    @trainer_pokemon.destroy
    respond_to do |format|
      format.html { redirect_to trainer_pokemons_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trainer_pokemon
      @trainer_pokemon = TrainerPokemon.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trainer_pokemon_params
      params.require(:trainer_pokemon).permit(:pokemon_id, :trainer_id)
    end
	
	def check_logged_in! # if admin is not logged in, user must be logged in
      if !admin_signed_in?
        authenticate_trainer!
	  else
		authenticate_admin!
      end   
    end
end
