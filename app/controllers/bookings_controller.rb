class BookingsController < ApplicationController
# Step 1. Add migration to booking, adding a message and status
# Step 2. Change the Query to have all of the flats
# Step 3. Show (use le wagon ui) to display



  def index
    @bookings = Booking.where(user: current_user)
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.flat = set_flat
    @booking.save
    if @booking.save
      redirect_to bookings_path
    end
  end

  def destroy
  end

  def approve

  end

  def cancel

  end

  def decline

  end



  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

  def set_flat
    @flat = Flat.find(params[:flat_id])
  end
end
