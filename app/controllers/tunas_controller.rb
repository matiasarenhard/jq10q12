class TunasController < ApplicationController
  before_action :set_tuna, only: [:show, :edit, :update, :destroy]

  def index
    @tunas = Tuna.all
  end

  def show
  end

  def new
    @tuna = Tuna.new
  end

  def edit
  end

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

  def destroy
    @tuna.destroy
    respond_to do |format|
      format.html { redirect_to tunas_url, notice: 'Tuna was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_tuna
      @tuna = Tuna.find(params[:id])
    end

    def tuna_params
      params.require(:tuna).permit(:origin, :fish_id)
    end
end
