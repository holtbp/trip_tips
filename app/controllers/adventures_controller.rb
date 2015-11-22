class AdventuresController < ApplicationController
  before_action :set_getaway
  before_action :set_stop
  before_action :set_adventure, only: [:show, :edit, :update, :destroy]

  # GET /getaways/:getaway_id/stops/:stop_id/adventures
  # GET /getaways/:getaway_id/stops/:stop_id/adventures.json
  def index
    @adventures = Adventure.all
  end

  # GET /getaways/:getaway_id/stops/:stop_id/adventures/1
  # GET /getaways/:getaway_id/stops/:stop_id/adventures/1.json
  def show
  end

  # GET /getaways/:getaway_id/stops/:stop_id/adventures/new
  def new
    @adventure = Adventure.new

    # TODO: Use geocoder here to find only sights in close proximity to stop
    @sights = @stop.city.nearby_sights
  end

  # GET /getaways/:getaway_id/stops/:stop_id/adventures/1/edit
  def edit
  end

  # POST /getaways/:getaway_id/stops/:stop_id/adventures
  # POST /getaways/:getaway_id/stops/:stop_id/adventures.json
  def create
    @adventure = Adventure.new(adventure_params.merge(stop_id: @stop.id))

    respond_to do |format|
      if @adventure.save
        format.html { redirect_to getaway_stop_adventure_url(@getaway, @stop, @adventure), notice: 'Adventure was successfully created.' }
        format.json { render :show, status: :created, location: @adventure }
      else
        format.html { render :new }
        format.json { render json: @adventure.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /getaways/:getaway_id/stops/:stop_id/adventures/1
  # PATCH/PUT /getaways/:getaway_id/stops/:stop_id/adventures/1.json
  def update
    respond_to do |format|
      if @adventure.update(adventure_params.merge(stop_id: @stop.id))
        format.html { redirect_to getaway_stop_adventure_url(@getaway, @stop, @adventure), notice: 'Adventure was successfully updated.' }
        format.json { render :show, status: :ok, location: @adventure }
      else
        format.html { render :edit }
        format.json { render json: @adventure.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /getaways/:getaway_id/stops/:stop_id/adventures/1
  # DELETE /getaways/:getaway_id/stops/:stop_id/adventures/1.json
  def destroy
    @adventure.destroy
    respond_to do |format|
      format.html { redirect_to getaway_stop_adventures_url(@getaway, @stop), notice: 'Adventure was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_getaway
      @getaway = Getaway.find(params[:getaway_id])
    end

    def set_stop
      @stop = Stop.find(params[:stop_id])
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_adventure
      @adventure = Adventure.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def adventure_params
      params.require(:adventure).permit(:getaway_id, :stop_id, :sight_id, :description)
    end
end
