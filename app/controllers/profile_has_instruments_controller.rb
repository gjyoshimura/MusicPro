class ProfileHasInstrumentsController < ApplicationController
  before_action :set_profile_has_instrument, only: [:show, :edit, :update, :destroy]

  # GET /profile_has_instruments
  # GET /profile_has_instruments.json
  def index
    @profile_has_instruments = ProfileHasInstrument.all
    @instruments = Instrument.all
  end

  # GET /profile_has_instruments/1
  # GET /profile_has_instruments/1.json
  def show
  end

  # GET /profile_has_instruments/new
  def new
    @profile_has_instrument = ProfileHasInstrument.new
    @instruments = Instrument.all
  end

  # GET /profile_has_instruments/1/edit
  def edit
  end

  # POST /profile_has_instruments
  # POST /profile_has_instruments.json
  def create
    params = profile_has_instrument_params
    params[:profile_id] = Profile.find_by_user_id(current_user.id).user_id
    @profile_has_instrument = ProfileHasInstrument.new(params)

    respond_to do |format|
      if @profile_has_instrument.save
        format.html { redirect_to @profile_has_instrument, notice: 'Profile has instrument was successfully created.' }
        format.json { render :show, status: :created, location: @profile_has_instrument }
      else
        format.html { render :new }
        format.json { render json: @profile_has_instrument.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /profile_has_instruments/1
  # PATCH/PUT /profile_has_instruments/1.json
  def update
    params = profile_has_instrument_params
    params[:profile_id] = Profile.find_by_user_id(current_user.id).user_id
    respond_to do |format|
      if @profile_has_instrument.update(params)
        format.html { redirect_to @profile_has_instrument, notice: 'Profile has instrument was successfully updated.' }
        format.json { render :show, status: :ok, location: @profile_has_instrument }
      else
        format.html { render :edit }
        format.json { render json: @profile_has_instrument.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /profile_has_instruments/1
  # DELETE /profile_has_instruments/1.json
  def destroy
    @profile_has_instrument.destroy
    respond_to do |format|
      format.html { redirect_to profile_has_instruments_url, notice: 'Profile has instrument was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profile_has_instrument
      @profile_has_instrument = ProfileHasInstrument.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def profile_has_instrument_params
      params.require(:profile_has_instrument).permit(:profile_id, :instrument_id)
    end
end
