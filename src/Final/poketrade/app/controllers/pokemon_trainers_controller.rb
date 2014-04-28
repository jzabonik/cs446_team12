class PokemonTrainersController < ApplicationController
  before_filter :check_logged_in!
  before_action :set_pokemon_trainer, only: [:show, :edit, :update, :destroy]

  # GET /pokemon_trainers
  # GET /pokemon_trainers.json
  def index
    @pokemon_trainers = PokemonTrainer.all
  end

  # GET /pokemon_trainers/1
  # GET /pokemon_trainers/1.json
  def show
  end

  # GET /pokemon_trainers/new
  def new
    @pokemon_trainer = PokemonTrainer.new
  end

  # GET /pokemon_trainers/1/edit
  def edit
  end

  # POST /pokemon_trainers
  # POST /pokemon_trainers.json
  def create
    @pokemon_trainer = PokemonTrainer.new(pokemon_trainer_params)

    respond_to do |format|
      if @pokemon_trainer.save
        format.html { redirect_to @pokemon_trainer, notice: 'Pokemon trainer was successfully created.' }
        format.json { render action: 'show', status: :created, location: @pokemon_trainer }
      else
        format.html { render action: 'new' }
        format.json { render json: @pokemon_trainer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pokemon_trainers/1
  # PATCH/PUT /pokemon_trainers/1.json
  def update
    respond_to do |format|
      if @pokemon_trainer.update(pokemon_trainer_params)
        format.html { redirect_to @pokemon_trainer, notice: 'Pokemon trainer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @pokemon_trainer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pokemon_trainers/1
  # DELETE /pokemon_trainers/1.json
  def destroy
    @pokemon_trainer.destroy
    respond_to do |format|
      format.html { redirect_to pokemon_trainers_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pokemon_trainer
      @pokemon_trainer = PokemonTrainer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pokemon_trainer_params
      params.require(:pokemon_trainer).permit(:pokemon_id, :trainer_id)
    end
	
	def check_logged_in! # if admin is not logged in, user must be logged in
      if !admin_signed_in?
        authenticate_trainer!
	  else
		authenticate_admin!
      end   
    end
end
