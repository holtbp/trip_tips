class GetawaysController < ApplicationController
  before_action :set_getaway, only: [:show, :edit, :update, :destroy]

  # GET /getaways
  # GET /getaways.json
  def index
    @getaways = Getaway.all
  end

  # GET /getaways/1
  # GET /getaways/1.json
  def show
  end

  # GET /getaways/new
  def new
    @getaway = Getaway.new
  end

  # GET /getaways/1/edit
  def edit
  end

  # POST /getaways
  # POST /getaways.json
  def create
    @getaway = Getaway.new(getaway_params)

    respond_to do |format|
      if @getaway.save
        format.html { redirect_to @getaway, notice: 'Getaway was successfully created.' }
        format.json { render :show, status: :created, location: @getaway }
      else
        format.html { render :new }
        format.json { render json: @getaway.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /getaways/1
  # PATCH/PUT /getaways/1.json
  def update
    respond_to do |format|
      if @getaway.update(getaway_params)
        format.html { redirect_to @getaway, notice: 'Getaway was successfully updated.' }
        format.json { render :show, status: :ok, location: @getaway }
      else
        format.html { render :edit }
        format.json { render json: @getaway.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /getaways/1
  # DELETE /getaways/1.json
  def destroy
    @getaway.destroy
    respond_to do |format|
      format.html { redirect_to getaways_url, notice: 'Getaway was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_getaway
      @getaway = Getaway.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def getaway_params
      params.require(:getaway).permit(:name)
    end
end
