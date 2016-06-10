class StanRowerusController < ApplicationController
  before_action :set_stan_roweru, only: [:show, :edit, :update, :destroy]

  # GET /stan_rowerus
  # GET /stan_rowerus.json
  def index
    @stan_rowerus = StanRoweru.all
  end

  # GET /stan_rowerus/1
  # GET /stan_rowerus/1.json
  def show
  end

  # GET /stan_rowerus/new
  def new
    @stan_roweru = StanRoweru.new
  end

  # GET /stan_rowerus/1/edit
  def edit
  end

  # POST /stan_rowerus
  # POST /stan_rowerus.json
  def create
    @stan_roweru = StanRoweru.new(stan_roweru_params)

    respond_to do |format|
      if @stan_roweru.save
        format.html { redirect_to @stan_roweru, notice: 'Stan roweru was successfully created.' }
        format.json { render :show, status: :created, location: @stan_roweru }
      else
        format.html { render :new }
        format.json { render json: @stan_roweru.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stan_rowerus/1
  # PATCH/PUT /stan_rowerus/1.json
  def update
    respond_to do |format|
      if @stan_roweru.update(stan_roweru_params)
        format.html { redirect_to @stan_roweru, notice: 'Stan roweru was successfully updated.' }
        format.json { render :show, status: :ok, location: @stan_roweru }
      else
        format.html { render :edit }
        format.json { render json: @stan_roweru.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stan_rowerus/1
  # DELETE /stan_rowerus/1.json
  def destroy
    @stan_roweru.destroy
    respond_to do |format|
      format.html { redirect_to stan_rowerus_url, notice: 'Stan roweru was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stan_roweru
      @stan_roweru = StanRoweru.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stan_roweru_params
      params.require(:stan_roweru).permit(:nazwa)
    end
end
