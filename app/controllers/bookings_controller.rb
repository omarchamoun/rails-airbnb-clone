class BookingsController < ApplicationController
# Step 1. Add migration to booking, adding a message and status
# Step 2. Change the Query to have all of the flats
# Step 3. Show (use le wagon ui) to display

  before_action :set_booking, only: [:cancel, :approve, :decline]



  def index
    @bookings = current_user.bookings.where.not(status: "Cancelled")
  end

  def create
    if !current_user
      redirect_to new_registration_registration_path
    end
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.flat = set_flat
    @booking.save
    if @booking.save
      redirect_to bookings_path
    end
  end

  def destroy
    @booking.destroy
  end

  def approve
    @booking.status = "Approved"
    @booking.save
    redirect_to bookings_path
  end

  def cancel
    @booking.status = "Cancelled"
    @booking.save
    redirect_to bookings_path
  end

  def decline
    @booking.status = "Declined"
    @booking.save
    redirect_to bookings_path
  end



  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :description)
  end

  def set_flat
    @flat = Flat.find(params[:flat_id])
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
