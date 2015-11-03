class ForcastsController < ApplicationController
  before_action :set_forcast, only: [:show, :edit, :update, :destroy]

  # GET /forcasts
  def index
    @forcasts = Forcast.all
  end

  # GET /forcasts/1
  def show
  end

  # GET /forcasts/new
  def new
    @forcast = Forcast.new
  end

  # GET /forcasts/1/edit
  def edit
  end

  # POST /forcasts
  def create
    @forcast = Forcast.new(forcast_params)

    if @forcast.save
      redirect_to @forcast, notice: 'Forcast was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /forcasts/1
  def update
    if @forcast.update(forcast_params)
      redirect_to @forcast, notice: 'Forcast was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /forcasts/1
  def destroy
    @forcast.destroy
    redirect_to forcasts_url, notice: 'Forcast was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_forcast
      @forcast = Forcast.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def forcast_params
      params.require(:forcast).permit(:address, :longitude, :latitude, :response)
    end
end
