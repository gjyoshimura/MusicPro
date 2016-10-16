class ProfilesController < ApplicationController
  skip_before_action :check_for_created_profile, only: [:new, :create]
  
  before_action :set_profile, only: [:show, :edit, :update, :destroy]
  before_action :check_signed_in
  before_action :check_is_admin, only: [:index, :show, :edit, :update, :destroy]

  # GET /profiles
  # GET /profiles.json
  def index
    @profiles = Profile.all
    @styles = Style.all
  end

  # GET /profiles/1
  # GET /profiles/1.json
  def show
  end

  def get_contacts
    @company = Style.all #style_id
    @contacts = Style.find(params[:company_id]).instruments
  end 
  

  # GET /profiles/new
  def new
    @profile = Profile.new
    @styles = Style.all
    @instruments = Instrument.all
  end

  # GET /profiles/1/edit
  def edit
  end

  # POST /profiles
  # POST /profiles.json
  def create
    pp = profile_params
    pp[:user_id] = current_user.id
    pp[:level] = 1
    @profile = Profile.new(pp)

    respond_to do |format|
      if @profile.save
        format.html { redirect_to root_path, notice: 'Style was successfully created.' }
        format.json { render :show, status: :created, location: @profile }
      else
        format.html { render :new }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /profiles/1
  # PATCH/PUT /profiles/1.json
  def update
    pp = profile_params
    pp[:user_id] = current_user.id
    respond_to do |format|
      if @profile.update(pp)
        format.html { redirect_to root_path, notice: 'Style was successfully updated.' }
        format.json { render :show, status: :ok, location: @profile }
      else
        format.html { render :edit }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /profiles/1
  # DELETE /profiles/1.json
  def destroy
    @profile.destroy
    respond_to do |format|
      format.html { redirect_to profiles_url, notice: 'Profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profile
      @profile = Profile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def profile_params
      params.require(:profile).permit(:style_id, :level, :user_id)
    end
end
