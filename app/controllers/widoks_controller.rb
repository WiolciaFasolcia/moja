class WidoksController < ApplicationController
  before_action :set_widok, only: [:show, :edit, :update, :destroy]

  # GET /widoks
  # GET /widoks.json
  def index
    @widoks = Widok.all
  end

  # GET /widoks/1
  # GET /widoks/1.json
  def show
  end

  # GET /widoks/new
  def new
    @widok = Widok.new
  end

  # GET /widoks/1/edit
  def edit
  end

  # POST /widoks
  # POST /widoks.json
  def create
    @widok = Widok.new(widok_params)

    respond_to do |format|
      if @widok.save
        format.html { redirect_to @widok, notice: 'Widok was successfully created.' }
        format.json { render :show, status: :created, location: @widok }
      else
        format.html { render :new }
        format.json { render json: @widok.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /widoks/1
  # PATCH/PUT /widoks/1.json
  def update
    respond_to do |format|
      if @widok.update(widok_params)
        format.html { redirect_to @widok, notice: 'Widok was successfully updated.' }
        format.json { render :show, status: :ok, location: @widok }
      else
        format.html { render :edit }
        format.json { render json: @widok.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /widoks/1
  # DELETE /widoks/1.json
  def destroy
    @widok.destroy
    respond_to do |format|
      format.html { redirect_to widoks_url, notice: 'Widok was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_widok
      @widok = Widok.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def widok_params
      params.fetch(:widok, {})
    end
end
