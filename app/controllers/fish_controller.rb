class FishController < ApplicationController
  before_action :set_fish, only: [:show, :edit, :update, :destroy]

  def index
    @fish = Fish.all
  end

  def show
  end

  def new
    @fish = Fish.new
  end

  def edit
  end

  def create
    @fish = Fish.new(fish_params)
    respond_to do |format|
      if @fish.save
        format.html { redirect_to @fish, notice: 'Fish was successfully created.' }
        format.json { render :show, status: :created, location: @fish }
      else
        format.html { render :new }
        format.json { render json: @fish.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @fish.update(fish_params)
        format.html { redirect_to @fish, notice: 'Fish was successfully updated.' }
        format.json { render :show, status: :ok, location: @fish }
      else
        format.html { render :edit }
        format.json { render json: @fish.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @fish.destroy
    respond_to do |format|
      format.html { redirect_to fish_index_url, notice: 'Fish was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_fish
      @fish = Fish.find(params[:id])
    end

    def fish_params
      params.require(:fish).permit(:name)
    end
end
