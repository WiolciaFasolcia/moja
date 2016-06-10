class RowersController < ApplicationController
  before_action :set_rower, only: [:show, :edit, :update, :destroy]

  # GET /rowers
  # GET /rowers.json
  def index
    @rowers = Rower.paginate(:page => params[:page], :per_page => 5)
  end

  # GET /rowers/1
  # GET /rowers/1.json
  def show
  end

  # GET /rowers/new
  def new
    @rower = Rower.new
  end

  # GET /rowers/1/edit
  def edit
  end

  # POST /rowers
  # POST /rowers.json
  def create
    @rower = Rower.new(rower_params)

    respond_to do |format|
      if @rower.save
        format.html { redirect_to @rower, notice: 'Rower was successfully created.' }
        format.json { render :show, status: :created, location: @rower }
      else
        format.html { render :new }
        format.json { render json: @rower.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rowers/1
  # PATCH/PUT /rowers/1.json
  def update
    respond_to do |format|
      if @rower.update(rower_params)
        format.html { redirect_to @rower, notice: 'Rower was successfully updated.' }
        format.json { render :show, status: :ok, location: @rower }
      else
        format.html { render :edit }
        format.json { render json: @rower.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rowers/1
  # DELETE /rowers/1.json
  def destroy
    @rower.destroy
    respond_to do |format|
      format.html { redirect_to rowers_url, notice: 'Rower was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rower
      @rower = Rower.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rower_params
      params.require(:rower).permit(:rodzaj_roweru_id, :rozmiar_id, :rodzaj, :wielkosc_ramy, :stan, :stan_roweru_id)
    end
end
