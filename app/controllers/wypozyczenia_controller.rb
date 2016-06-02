class WypozyczeniaController < ApplicationController
  before_action :set_wypozyczenium, only: [:show, :edit, :update, :destroy]

  # GET /wypozyczenia
  # GET /wypozyczenia.json
  def index
    @wypozyczenia = Wypozyczenium.all
  end

  # GET /wypozyczenia/1
  # GET /wypozyczenia/1.json
  def show
  end

  # GET /wypozyczenia/new
  def new
    @wypozyczenium = Wypozyczenium.new
  end

  # GET /wypozyczenia/1/edit
  def edit
  end
  def zwrot
  end
  # POST /wypozyczenia
  # POST /wypozyczenia.json
  def create
    @wypozyczenium = Wypozyczenium.new(wypozyczenium_params)

    respond_to do |format|
      if @wypozyczenium.save
        format.html { redirect_to @wypozyczenium, notice: 'Wypozyczenium was successfully created.' }
        format.json { render :show, status: :created, location: @wypozyczenium }
      else
        format.html { render :new }
        format.json { render json: @wypozyczenium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wypozyczenia/1
  # PATCH/PUT /wypozyczenia/1.json
  def update
    respond_to do |format|
      if @wypozyczenium.update(wypozyczenium_params)
        format.html { redirect_to @wypozyczenium, notice: 'Wypozyczenium was successfully updated.' }
        format.json { render :show, status: :ok, location: @wypozyczenium }
      else
        format.html { render :edit }
        format.json { render json: @wypozyczenium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wypozyczenia/1
  # DELETE /wypozyczenia/1.json
  def destroy
    @wypozyczenium.destroy
    respond_to do |format|
      format.html { redirect_to wypozyczenia_url, notice: 'Wypozyczenium was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  def set_default_data
    @wypozyczenium.date_begin = DateTime.now
    @wypozyczenium.status = true
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wypozyczenium
      @wypozyczenium = Wypozyczenium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wypozyczenium_params
      params.require(:wypozyczenium).permit(:klient_id, :rower_id, :date_begin, :date_end, :status)
    end
end
