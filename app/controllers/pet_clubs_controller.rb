class PetClubsController < ApplicationController
  before_action :set_pet_club, only: [:show, :edit, :update, :destroy]

  # GET /pet_clubs
  # GET /pet_clubs.json
  def index
    @pet_clubs = PetClub.all
  end

  # GET /pet_clubs/1
  # GET /pet_clubs/1.json
  def show
  end

  # GET /pet_clubs/new
  def new
    @pet_club = PetClub.new
  end

  # GET /pet_clubs/1/edit
  def edit
  end

  # POST /pet_clubs
  # POST /pet_clubs.json
  def create
    @pet_club = PetClub.new(pet_club_params)

    respond_to do |format|
      if @pet_club.save
        format.html { redirect_to @pet_club, notice: 'Pet club was successfully created.' }
        format.json { render :show, status: :created, location: @pet_club }
      else
        format.html { render :new }
        format.json { render json: @pet_club.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pet_clubs/1
  # PATCH/PUT /pet_clubs/1.json
  def update
    respond_to do |format|
      if @pet_club.update(pet_club_params)
        format.html { redirect_to @pet_club, notice: 'Pet club was successfully updated.' }
        format.json { render :show, status: :ok, location: @pet_club }
      else
        format.html { render :edit }
        format.json { render json: @pet_club.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pet_clubs/1
  # DELETE /pet_clubs/1.json
  def destroy
    @pet_club.destroy
    respond_to do |format|
      format.html { redirect_to pet_clubs_url, notice: 'Pet club was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pet_club
      @pet_club = PetClub.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pet_club_params
      params.require(:pet_club).permit(:name)
    end
end
