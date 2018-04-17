class TunasController < ApplicationController
  before_action :set_tuna, only: [:show, :edit, :update, :destroy]

  # GET /tunas
  # GET /tunas.json
  def index
    @tunas = Tuna.all
  end

  # GET /tunas/1
  # GET /tunas/1.json
  def show
  end

  # GET /tunas/new
  def new
    @tuna = Tuna.new
  end

  # GET /tunas/1/edit
  def edit
  end

  # POST /tunas
  # POST /tunas.json
  def create
    @tuna = Tuna.new(tuna_params)

    respond_to do |format|
      if @tuna.save
        format.html { redirect_to @tuna, notice: 'Tuna was successfully created.' }
        format.json { render :show, status: :created, location: @tuna }
      else
        format.html { render :new }
        format.json { render json: @tuna.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tunas/1
  # PATCH/PUT /tunas/1.json
  def update
    respond_to do |format|
      if @tuna.update(tuna_params)
        format.html { redirect_to @tuna, notice: 'Tuna was successfully updated.' }
        format.json { render :show, status: :ok, location: @tuna }
      else
        format.html { render :edit }
        format.json { render json: @tuna.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tunas/1
  # DELETE /tunas/1.json
  def destroy
    @tuna.destroy
    respond_to do |format|
      format.html { redirect_to tunas_url, notice: 'Tuna was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tuna
      @tuna = Tuna.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tuna_params
      params.require(:tuna).permit(:origin, :Fish_id)
    end
end
