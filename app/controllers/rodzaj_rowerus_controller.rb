class RodzajRowerusController < ApplicationController
  before_action :set_rodzaj_roweru, only: [:show, :edit, :update, :destroy]

  # GET /rodzaj_rowerus
  # GET /rodzaj_rowerus.json
  def index
    @rodzaj_rowerus = RodzajRoweru.all
  end

  # GET /rodzaj_rowerus/1
  # GET /rodzaj_rowerus/1.json
  def show
  end

  # GET /rodzaj_rowerus/new
  def new
    @rodzaj_roweru = RodzajRoweru.new
  end

  # GET /rodzaj_rowerus/1/edit
  def edit
  end

  # POST /rodzaj_rowerus
  # POST /rodzaj_rowerus.json
  def create
    @rodzaj_roweru = RodzajRoweru.new(rodzaj_roweru_params)

    respond_to do |format|
      if @rodzaj_roweru.save
        format.html { redirect_to @rodzaj_roweru, notice: 'Rodzaj roweru was successfully created.' }
        format.json { render :show, status: :created, location: @rodzaj_roweru }
      else
        format.html { render :new }
        format.json { render json: @rodzaj_roweru.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rodzaj_rowerus/1
  # PATCH/PUT /rodzaj_rowerus/1.json
  def update
    respond_to do |format|
      if @rodzaj_roweru.update(rodzaj_roweru_params)
        format.html { redirect_to @rodzaj_roweru, notice: 'Rodzaj roweru was successfully updated.' }
        format.json { render :show, status: :ok, location: @rodzaj_roweru }
      else
        format.html { render :edit }
        format.json { render json: @rodzaj_roweru.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rodzaj_rowerus/1
  # DELETE /rodzaj_rowerus/1.json
  def destroy
    @rodzaj_roweru.destroy
    respond_to do |format|
      format.html { redirect_to rodzaj_rowerus_url, notice: 'Rodzaj roweru was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rodzaj_roweru
      @rodzaj_roweru = RodzajRoweru.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rodzaj_roweru_params
      params.require(:rodzaj_roweru).permit(:rodzaj)
    end
end
