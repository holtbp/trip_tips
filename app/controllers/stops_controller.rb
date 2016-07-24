class StopsController < ApplicationController
  before_action :set_getaway
  before_action :set_stop, only: [:show, :edit, :update, :destroy]
  before_action :set_cities, only: [:new, :edit]

  # GET /getaways/:getaway_id/stops
  def index
    @stops = @getaway.stops
  end

  # GET /getaways/:getaway_id/stops/1
  def show
  end

  # GET /getaways/:getaway_id/stops/new
  def new
    @stop = Stop.new(getaway: @getaway)
  end

  # GET /getaways/:getaway_id/stops/1/edit
  def edit
  end

  # POST /getaways/:getaway_id/stops
  def create
    @stop = Stop.new(stop_params)

    if @stop.save
      redirect_to getaway_stop_url(@getaway, @stop), notice: 'Stop was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /getaways/:getaway_id/stops/1
  def update
    if @stop.update(stop_params)
      redirect_to getaway_stop_url(@getaway, @stop), notice: 'Stop was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /getaways/:getaway_id/stops/1
  def destroy
    @stop.destroy
    redirect_to getaway_stops_url(@getaway), notice: 'Stop was successfully destroyed.'
  end

  private
    def set_getaway
      @getaway = Getaway.find(params[:getaway_id])
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_stop
      @stop = Stop.where(
        id: params[:id],
        getaway_id: @getaway.id
      ).first
    end

    def set_cities
      @cities = City.name_sorted
    end

    # Only allow a trusted parameter "white list" through.
    def stop_params
      params.require(:stop).permit(:city_id, :arrival, :departure).merge(getaway_id: @getaway.id)
    end
end
