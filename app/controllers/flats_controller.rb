class FlatsController < ApplicationController
before_action :set_user, only: [:create, :edit, :update, :destroy]
before_action :set_flat, only: [:show, :edit, :update, :destroy]

  def index
    @flats = Flat.all
  end
# asjdjasld
  def show
    @booking = Booking.new
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)
    @flat.user = @user

    if @flat.save
       flash[:notice] = "You have succesfully created a flat"
      redirect_to flat_path(@flat)
    else
      flash[:alert] = "Oops, you forgot some important info"
      render :new
    end
  end

  def edit
    unless @flat.user == @user
      redirect_to flats_path
    end
  end

  def update

    if @flat.update(flat_params)
      redirect_to flat_path(@flat)
    else
      render :edit
    end
  end

  def destroy
    @flat.destroy
    redirect_to flats_path
  end

  private

  def flat_params
    params.require(:flat).permit(:name, :description, :location, :price, :photo, :photo_cache)
  end

  def set_user
    @user = current_user
  end

  def set_flat
    @flat = Flat.find(params[:id])
  end
end
