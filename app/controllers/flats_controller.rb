class FlatsController < ApplicationController
before_action :set_user, only: [:create, :edit, :update, :destroy]
before_action :set_flat, only: [:show, :edit, :update, :destroy]

  def index
    if @query = params[:search]
      @flats = Flat.search_full_text(@query)
    else
      @flats = Flat.where.not(latitude: nil, longitude: nil)
      @markers = Gmaps4rails.build_markers(@flats) do |flat, marker|
      marker.lat flat.latitude
      marker.lng flat.longitude
      marker.infowindow render_to_string(partial: "/flats/map_box", locals: { flat: flat })
    end
  end

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
