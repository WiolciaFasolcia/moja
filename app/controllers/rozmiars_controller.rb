class RozmiarsController < ApplicationController
  before_action :set_rozmiar, only: [:show, :edit, :update, :destroy]

  # GET /rozmiars
  # GET /rozmiars.json
  def index
    @rozmiars = Rozmiar.all
  end

  # GET /rozmiars/1
  # GET /rozmiars/1.json
  def show
  end

  # GET /rozmiars/new
  def new
    @rozmiar = Rozmiar.new
  end

  # GET /rozmiars/1/edit
  def edit
  end

  # POST /rozmiars
  # POST /rozmiars.json
  def create
    @rozmiar = Rozmiar.new(rozmiar_params)

    respond_to do |format|
      if @rozmiar.save
        format.html { redirect_to @rozmiar, notice: 'Rozmiar was successfully created.' }
        format.json { render :show, status: :created, location: @rozmiar }
      else
        format.html { render :new }
        format.json { render json: @rozmiar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rozmiars/1
  # PATCH/PUT /rozmiars/1.json
  def update
    respond_to do |format|
      if @rozmiar.update(rozmiar_params)
        format.html { redirect_to @rozmiar, notice: 'Rozmiar was successfully updated.' }
        format.json { render :show, status: :ok, location: @rozmiar }
      else
        format.html { render :edit }
        format.json { render json: @rozmiar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rozmiars/1
  # DELETE /rozmiars/1.json
  def destroy
    @rozmiar.destroy
    respond_to do |format|
      format.html { redirect_to rozmiars_url, notice: 'Rozmiar was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rozmiar
      @rozmiar = Rozmiar.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rozmiar_params
      params.require(:rozmiar).permit(:rozmiar)
    end
end
