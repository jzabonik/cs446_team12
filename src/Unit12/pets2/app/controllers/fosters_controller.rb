class FostersController < ApplicationController
  before_filter :check_logged_in!
  before_action :set_foster, only: [:show, :edit, :update, :destroy]
  @@foster_animal = Animal.first	# created global for the animal to be used in both new and show actions
  # GET /fosters
  # GET /fosters.json
  def index
    @fosters = Foster.all
  end

  # GET /fosters/1
  # GET /fosters/1.json
  def show
	@animals = Animal.find(@@foster_animal)
  end

  # GET /fosters/new
  def new
    @foster = Foster.new
  end

  # GET /fosters/1/edit
  def edit
  end

  # POST /fosters
  # POST /fosters.json
  def create
	@animals = Animal.find(params[:animal_id])
    @foster = Foster.new(foster_params)

	@@foster_animal = params[:animal_id]	# save animal_id from params into global
    respond_to do |format|
      if @foster.save
        format.html { redirect_to @foster }
        format.json { render action: 'show', status: :created, location: @foster }
      else
        format.html { render action: 'new' }
        format.json { render json: @foster.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fosters/1
  # PATCH/PUT /fosters/1.json
  def update
    respond_to do |format|
      if @foster.update(foster_params)
        format.html { redirect_to @foster, notice: 'Foster was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @foster.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fosters/1
  # DELETE /fosters/1.json
  def destroy
    @foster.destroy
    respond_to do |format|
      format.html { redirect_to fosters_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foster
      @foster = Foster.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def foster_params
      params[:foster]
    end
	
	def check_logged_in! # if admin is not logged in, user must be logged in
      if !admin_signed_in?
        authenticate_user!
	  else
		authenticate_admin!
      end   
    end
end
