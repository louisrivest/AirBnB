class AptsController < ApplicationController
  before_action :set_apt, only: [:show, :edit, :update, :destroy]

  def index
    @apts = Apt.all
  end

  def show
  end

  def new
    @apt = Apt.new
  end

  def create
    @apt = Apt.new(apt_params)
    if @apt.save
      redirect_to @apt
    else
      # render :new
    end
  end

  def destroy
    @apt = Apt.find(params[:id])
    @apt.destroy
    redirect_to apts_path
  end

  private

  def apt_params
    params.require(:apt).permit(:name, :address, :price, :photo)
  end

  def set_apt
    @apt = Apt.find(params[:id])
  end
end
